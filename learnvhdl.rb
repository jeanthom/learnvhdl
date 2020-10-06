require 'sinatra'
require 'open3'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
  set :public_folder, 'assets'
end

get '/' do
	erb :index	
end

get '/exercise/:exercise' do
	erb :exercise, :locals => {
		:description => File.read("#{File.dirname(__FILE__)}/exercises/ex#{params[:exercise]}/description.html"),
		:boilerplate => File.read("#{File.dirname(__FILE__)}/exercises/ex#{params[:exercise]}/boilerplate.vhdl")
	}
end

post '/exercise/:exercise' do
	sim_results = ""
	compile_error = ""

	Dir.mktmpdir { |dir|
		FileUtils.cp_r "#{File.dirname(__FILE__)}/exercises/ex#{params[:exercise]}/.", dir
		sourceFile = File.open("#{dir}/exercise.vhdl", "wb")
		sourceFile.write(params[:code])
		sourceFile.close

		sim_results, compile_error, status = Open3.capture3("cd #{dir}; make test")
	}

	errors = sim_results.split("\n")
	#.*\(assertion error\): (.*)
	errors.collect { |x|
		x.match(/^.*\(assertion error\): (.*)$/).captures || x
	}

	erb :results, :locals => { :compile_error => compile_error, :errors => errors }
end
