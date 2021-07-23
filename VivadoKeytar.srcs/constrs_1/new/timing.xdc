

create_clock -period 10.000 -name CLK100MHz -waveform {0.000 5.000} [get_pins system_i/Synth/Clock100MHz]
create_generated_clock -name CLK1MHz -source [get_pins system_i/Synth/Clock100MHz] -divide_by 100 -add -master_clock CLK100MHz [get_pins system_i/Synth/inst/clock1MHz]
create_generated_clock -name CLK10MHz -source [get_pins system_i/Synth/Clock100MHz] -divide_by 10 -add -master_clock CLK100MHz [get_pins system_i/Synth/inst/clock10MHz]



