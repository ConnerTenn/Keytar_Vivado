
#RGB
set_property PACKAGE_PIN R14 [get_ports {RGB[2]}]
set_property PACKAGE_PIN Y16 [get_ports {RGB[1]}]
set_property PACKAGE_PIN Y17 [get_ports {RGB[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {RGB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[0]}]


#Buzzer
set_property PACKAGE_PIN P18 [get_ports {Buzzer}]
set_property IOSTANDARD LVCMOS33 [get_ports {Buzzer}]

#Waveform

set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Waveform[0]}]



#HDMI
set_property PACKAGE_PIN U20 [get_ports {Red[0]}]
set_property PACKAGE_PIN V20 [get_ports {Red[1]}]
set_property PACKAGE_PIN W20 [get_ports {Red[2]}]
set_property PACKAGE_PIN Y18 [get_ports {Red[3]}]
set_property PACKAGE_PIN Y19 [get_ports {Red[4]}]

set_property PACKAGE_PIN U19 [get_ports {Green[0]}]
set_property PACKAGE_PIN N18 [get_ports {Green[1]}]
set_property PACKAGE_PIN P19 [get_ports {Green[2]}]
set_property PACKAGE_PIN N20 [get_ports {Green[3]}]
set_property PACKAGE_PIN P20 [get_ports {Green[4]}]
set_property PACKAGE_PIN T20 [get_ports {Green[5]}]

set_property PACKAGE_PIN T16 [get_ports {Blue[0]}]
set_property PACKAGE_PIN U17 [get_ports {Blue[1]}]
set_property PACKAGE_PIN V15 [get_ports {Blue[2]}]
set_property PACKAGE_PIN W15 [get_ports {Blue[3]}]
set_property PACKAGE_PIN U18 [get_ports {Blue[4]}]

set_property PACKAGE_PIN W16 [get_ports HSync]
set_property PACKAGE_PIN V16 [get_ports VSync]
set_property PACKAGE_PIN R17 [get_ports PClk]
set_property PACKAGE_PIN R16 [get_ports De]

set_property PACKAGE_PIN P16 [get_ports I2C_scl_io]
set_property PACKAGE_PIN P15 [get_ports I2C_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports {Red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Red[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Red[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Red[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Red[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Green[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Blue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Blue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Blue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Blue[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports HSync]
set_property IOSTANDARD LVCMOS33 [get_ports VSync]
set_property IOSTANDARD LVCMOS33 [get_ports PClk]
set_property IOSTANDARD LVCMOS33 [get_ports De]

set_property IOSTANDARD LVCMOS33 [get_ports I2C_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_sda_io]


#HDMI Audio
# set_property PACKAGE_PIN U14 [get_ports Clk12MHz]

# set_property PACKAGE_PIN T17 [get_ports I2S_Clk]
# set_property PACKAGE_PIN V17 [get_ports I2S_DOut]
# set_property PACKAGE_PIN R18 [get_ports I2S_WS]

# set_property IOSTANDARD LVCMOS33 [get_ports Clk12MHz]

# set_property IOSTANDARD LVCMOS33 [get_ports I2S_Clk]
# set_property IOSTANDARD LVCMOS33 [get_ports I2S_DOut]
# set_property IOSTANDARD LVCMOS33 [get_ports I2S_WS]


#DAC Audio
set_property PACKAGE_PIN J16 [get_ports DAC_MClk]
set_property PACKAGE_PIN L15 [get_ports I2S_Clk]
set_property PACKAGE_PIN J14 [get_ports I2S_DOut]
set_property PACKAGE_PIN K16 [get_ports I2S_LR]
set_property PACKAGE_PIN G18 [get_ports DAC_Reset]
set_property PACKAGE_PIN G19 [get_ports I2S_Format]
set_property PACKAGE_PIN K14 [get_ports {DAC_Mode[0]}]
set_property PACKAGE_PIN G20 [get_ports {DAC_Mode[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports DAC_MClk]
set_property IOSTANDARD LVCMOS33 [get_ports I2S_Clk]
set_property IOSTANDARD LVCMOS33 [get_ports I2S_DOut]
set_property IOSTANDARD LVCMOS33 [get_ports I2S_LR]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_Reset]
set_property IOSTANDARD LVCMOS33 [get_ports I2S_Format]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_Mode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_Mode[1]}]


#Keyboard Ribbon Connector
#Drive
set_property PACKAGE_PIN F20 [get_ports {KeyRibbonDrive[0]}]
set_property PACKAGE_PIN F19 [get_ports {KeyRibbonDrive[1]}]
set_property PACKAGE_PIN H17 [get_ports {KeyRibbonDrive[2]}]
set_property PACKAGE_PIN H16 [get_ports {KeyRibbonDrive[3]}]
set_property PACKAGE_PIN L17 [get_ports {KeyRibbonDrive[4]}]
set_property PACKAGE_PIN L16 [get_ports {KeyRibbonDrive[5]}]
set_property PACKAGE_PIN L20 [get_ports {KeyRibbonDrive[6]}]
set_property PACKAGE_PIN L19 [get_ports {KeyRibbonDrive[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonDrive[7]}]

set_property DRIVE 16 [get_ports {KeyRibbonDrive[0]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[1]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[2]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[3]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[4]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[5]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[6]}]
set_property DRIVE 16 [get_ports {KeyRibbonDrive[7]}]

#Sense
set_property PACKAGE_PIN M20 [get_ports {KeyRibbonSense[0]}]
set_property PACKAGE_PIN M19 [get_ports {KeyRibbonSense[1]}]
set_property PACKAGE_PIN E19 [get_ports {KeyRibbonSense[2]}]
set_property PACKAGE_PIN E18 [get_ports {KeyRibbonSense[3]}]
set_property PACKAGE_PIN D18 [get_ports {KeyRibbonSense[4]}]
set_property PACKAGE_PIN E17 [get_ports {KeyRibbonSense[5]}]
set_property PACKAGE_PIN B20 [get_ports {KeyRibbonSense[6]}]
set_property PACKAGE_PIN C20 [get_ports {KeyRibbonSense[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KeyRibbonSense[7]}]

set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[0]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[1]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[2]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[3]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[4]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[5]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[6]}]
set_property PULLTYPE PULLDOWN [get_ports {KeyRibbonSense[7]}]

