#
# Constraint status for the current TX milestone:
# - Pin assignments and clocking are committed here.
# - Board-level I/O delays for RGMII and DAC remain pending until the
#   external PHY/DAC timing windows are confirmed from the hardware manual.
# - The async reset path is excluded from timing below.
#

set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS15} [get_ports clk]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS15} [get_ports resetn]

# dac data ports
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[9]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[8]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[7]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[6]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[5]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[4]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[3]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[2]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[1]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data1[0]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[9]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[8]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[7]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[6]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[5]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[4]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[3]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[2]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[1]}]
set_property IOSTANDARD LVCMOS33    [get_ports {da_data2[0]}]
set_property PACKAGE_PIN D15        [get_ports {da_data1[9]}]
set_property PACKAGE_PIN D14        [get_ports {da_data1[8]}]
set_property PACKAGE_PIN A21        [get_ports {da_data1[7]}]
set_property PACKAGE_PIN B21        [get_ports {da_data1[6]}]
set_property PACKAGE_PIN C22        [get_ports {da_data1[5]}]
set_property PACKAGE_PIN B22        [get_ports {da_data1[4]}]
set_property PACKAGE_PIN C20        [get_ports {da_data1[3]}]
set_property PACKAGE_PIN D20        [get_ports {da_data1[2]}]
set_property PACKAGE_PIN A20        [get_ports {da_data1[1]}]
set_property PACKAGE_PIN B20        [get_ports {da_data1[0]}]
set_property PACKAGE_PIN C15        [get_ports {da_data2[9]}]
set_property PACKAGE_PIN C14        [get_ports {da_data2[8]}]
set_property PACKAGE_PIN B13        [get_ports {da_data2[7]}]
set_property PACKAGE_PIN C13        [get_ports {da_data2[6]}]
set_property PACKAGE_PIN AA18       [get_ports {da_data2[5]}]
set_property PACKAGE_PIN AB18       [get_ports {da_data2[4]}]
set_property PACKAGE_PIN U17        [get_ports {da_data2[3]}]
set_property PACKAGE_PIN U18        [get_ports {da_data2[2]}]
set_property PACKAGE_PIN V17        [get_ports {da_data2[1]}]
set_property PACKAGE_PIN W17        [get_ports {da_data2[0]}]

# dac clock
set_property IOSTANDARD LVCMOS33    [get_ports da_clk1]
set_property IOSTANDARD LVCMOS33    [get_ports da_clk2]
set_property PACKAGE_PIN E16        [get_ports da_clk1]
set_property PACKAGE_PIN B15        [get_ports da_clk2]


# RGMII
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports eth_rst_n]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports eth_rx_clk]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports eth_rx_ctl]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports {eth_rx_data[0]}]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {eth_rx_data[1]}]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {eth_rx_data[2]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {eth_rx_data[3]}]

create_clock -period 8.000 -name eth_rx_clk [get_ports eth_rx_clk]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports eth_tx_clk]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports eth_tx_ctl]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {eth_tx_data[0]}]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {eth_tx_data[1]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {eth_tx_data[2]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {eth_tx_data[3]}]


set_clock_groups -asynchronous -group [get_clocks eth_rx_clk] -group [get_clocks -filter {NAME =~ "*clk_wiz*"}]

# resetn is an asynchronous external reset, not a timed data input.
set_false_path -from [get_ports resetn]

# PHY reset is an asynchronous control output, not a source-synchronous data path.
set_false_path -to [get_ports eth_rst_n]
