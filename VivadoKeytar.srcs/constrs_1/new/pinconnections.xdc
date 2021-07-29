
#RGB
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R14} [get_ports {RGB[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports {RGB[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y17} [get_ports {RGB[0]}]


#Buzzer
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P18} [get_ports Buzzer]



#HDMI
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U20} [get_ports {Red[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V20} [get_ports {Red[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W20} [get_ports {Red[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports {Red[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports {Red[4]}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U19} [get_ports {Green[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N18} [get_ports {Green[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P19} [get_ports {Green[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N20} [get_ports {Green[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P20} [get_ports {Green[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T20} [get_ports {Green[5]}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports {Blue[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U17} [get_ports {Blue[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V15} [get_ports {Blue[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W15} [get_ports {Blue[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U18} [get_ports {Blue[4]}]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W16} [get_ports HSync]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports VSync]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R17} [get_ports PClk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports De]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P16} [get_ports I2C_scl_io]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN P15} [get_ports I2C_sda_io]



#HDMI Audio
# set_property -dict {IOSTANDARD LVCMOS33   PACKAGE_PIN U14} [get_ports Clk12MHz]

# set_property -dict {IOSTANDARD LVCMOS33   PACKAGE_PIN T17} [get_ports I2S_Clk]
# set_property -dict {IOSTANDARD LVCMOS33   PACKAGE_PIN V17} [get_ports I2S_DOut]
# set_property -dict {IOSTANDARD LVCMOS33   PACKAGE_PIN R18} [get_ports I2S_WS]



#DAC Audio
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN C20} [get_ports DAC_MClk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports I2S_Clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E18} [get_ports I2S_DOut]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D18} [get_ports I2S_DIn]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN B20} [get_ports I2S_LR]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L19} [get_ports DAC_Reset]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports Analog_CS_n]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports Analog_CClk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M19} [get_ports Analog_MoSi]



#Keyboard Ribbon Connector
#Drive
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L14} [get_ports {KeyRibbonDrive[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L15} [get_ports {KeyRibbonDrive[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K16} [get_ports {KeyRibbonDrive[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J16} [get_ports {KeyRibbonDrive[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M15} [get_ports {KeyRibbonDrive[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M14} [get_ports {KeyRibbonDrive[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N16} [get_ports {KeyRibbonDrive[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N15} [get_ports {KeyRibbonDrive[7]}]

set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[0]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[1]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[2]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[3]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[4]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[5]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[6]}]
set_property -dict {DRIVE 16 SLEW FAST} [get_ports {KeyRibbonDrive[7]}]



#Sense
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G15} [get_ports {KeyRibbonSense[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H15} [get_ports {KeyRibbonSense[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H20} [get_ports {KeyRibbonSense[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J20} [get_ports {KeyRibbonSense[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F20} [get_ports {KeyRibbonSense[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F19} [get_ports {KeyRibbonSense[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H17} [get_ports {KeyRibbonSense[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H16} [get_ports {KeyRibbonSense[7]}]

set_property PULLDOWN true [get_ports {KeyRibbonSense[0]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[1]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[2]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[3]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[4]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[5]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[6]}]
set_property PULLDOWN true [get_ports {KeyRibbonSense[7]}]


