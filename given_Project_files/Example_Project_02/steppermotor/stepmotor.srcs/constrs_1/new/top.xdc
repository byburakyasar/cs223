
#------------------------------------------------------------
#---------------------- Clock signal ------------------------
#------------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports clk]  	 	 	 	  
set_property IOSTANDARD LVCMOS33 [get_ports clk] 
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk] 



#------------------------------------------------------------
#---------------------- Stepper motor -----------------------
#------------------------------------------------------------	

#4 phases
#step motor: Bb
set_property PACKAGE_PIN P18 [get_ports {phases[0]}]	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[0]}] 
#step motor: Ab
set_property PACKAGE_PIN N17 [get_ports {phases[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[1]}] 
#step motor: B
set_property PACKAGE_PIN M18 [get_ports {phases[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[2]}] 
#step motor: A
set_property PACKAGE_PIN K17 [get_ports {phases[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {phases[3]}] 
	
#rotation_duration[1:0]	
set_property PACKAGE_PIN T1 [get_ports {rotation_duration[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {rotation_duration[0]}] 
set_property PACKAGE_PIN R2 [get_ports {rotation_duration[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {rotation_duration[1]}] 

#direction[1:0]
set_property PACKAGE_PIN W2 [get_ports {direction[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {direction[0]}] 	
set_property PACKAGE_PIN U1 [get_ports {direction[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {direction[1]}]

#start	
set_property PACKAGE_PIN U18 [get_ports {start}] 	 	 	 	 	 
 	set_property IOSTANDARD  LVCMOS33 [get_ports {start}] 
	


