

.PHONY: all DigitalFilter runFilter


DigitalFilter: clean
	iverilog -g2012 -s DigitalFilterTestbench $@.sv -o $@

runFilter: DigitalFilter
	@echo -e "\033[32;1mBegin Simulation\033[0m"
	@echo
	@vvp DigitalFilter -lxt2
	@echo
	@echo -e "\033[32;1mEnd Simulation\033[0m"

clean:
	rm -f DigitalFilter *.lxt2

