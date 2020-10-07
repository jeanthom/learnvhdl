GHDL = ghdl

all: test

.PHONY: test
test: $(MODULES)
	@$(GHDL) -a exercise.vhdl testbench.vhdl
	@$(GHDL) -e testbench
	@$(GHDL) -r testbench --stop-time=10ns
