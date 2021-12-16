

#===========
#== Synth ==
#===========
# create_clock -name CLK100MHz -period 10.000 [get_pins system_i/Synth/Clock100MHz]
create_generated_clock -name CLK100KHz -source [get_pins system_i/Synth/Clock100MHz] -divide_by 1000 [get_pins system_i/Synth/inst/clock100KHz_reg/Q]
# create_generated_clock -name CLK10MHz -source [get_ports system_i/Synth/Clock100MHz] -divide_by 2 [get_pins system_i/Synth/inst/clock50MHz_reg/Q]

#======================
#== AnalogController ==
#======================
# create_clock -name AnalogCLK100MHz -period 10.000 [get_pins system_i/AnalogController/Clock]
create_generated_clock -name DAC_MClk -source [get_pins system_i/AnalogController/Clock] -divide_by 4 [get_pins system_i/AnalogController/inst/DAC_MClk_reg/Q]
create_generated_clock -name I2S_Clk -source [get_pins system_i/AnalogController/inst/DAC_MClk_reg/Q] -divide_by 4 [get_pins system_i/AnalogController/inst/I2SClk_reg/Q]

#===============
#== Midi_UART ==
#===============
create_generated_clock -name MIDI_CLK -source [get_pins system_i/Midi_UART_Wrapper/SAXI_aclk] -divide_by 3200 [get_pins system_i/Midi_UART_Wrapper/inst/Midi_UART/rx_clk/Q]


#====================
#== Inputs/Outputs ==
#====================
set_output_delay 0 -clock [get_clocks DAC_MClk] [get_ports DAC_MClk]
set_output_delay 0 -clock [get_clocks DAC_MClk] [get_ports Analog_CClk]
set_output_delay 0 -clock [get_clocks I2S_Clk] [get_ports I2S_Clk]

set_output_delay 0 -clock [get_clocks clk_fpga_0] [get_ports DAC_Reset]

set_input_delay 0 -clock [get_clocks I2S_Clk] [get_ports I2S_DIn]
set_output_delay 0 -clock [get_clocks I2S_Clk] [get_ports I2S_LR]
set_output_delay 0 -clock [get_clocks I2S_Clk] [get_ports I2S_DOut]

set_output_delay 0 -clock [get_clocks DAC_MClk] [get_ports Analog_MoSi]
set_output_delay 0 -clock [get_clocks DAC_MClk] [get_ports Analog_CS_n]

set_input_delay 0 -clock [get_clocks clk_fpga_0] [get_ports KeyRibbonSense[*]]
set_output_delay 0 -clock [get_clocks clk_fpga_0] [get_ports KeyRibbonDrive[*]]


#===========
#== Video ==
#===========
# create_clock -name VideoCLK -period 6.666 [get_pins system_i/VideoController_0/MAXI_aclk]

#FIX!!!
set_false_path -to [get_ports Red]
set_false_path -to [get_ports Green]
set_false_path -to [get_ports Blue]
set_false_path -to [get_ports HSync]
set_false_path -to [get_ports VSync]
set_false_path -to [get_ports PClk]
set_false_path -to [get_ports De]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports Red[*]]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports Green[*]]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports Blue[*]]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports HSync]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports VSync]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports PClk]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports De]


set_false_path -to [get_ports RGB[*]]
set_output_delay 0 -clock [get_clocks clk_fpga_1] [get_ports RGB[*]]

