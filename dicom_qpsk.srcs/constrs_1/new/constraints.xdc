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
set_property -dict {PACKAGE_PIN D15  IOSTANDARD LVCMOS33} [get_ports {da_data1[9]}]
set_property -dict {PACKAGE_PIN D14  IOSTANDARD LVCMOS33} [get_ports {da_data1[8]}]
set_property -dict {PACKAGE_PIN A21  IOSTANDARD LVCMOS33} [get_ports {da_data1[7]}]
set_property -dict {PACKAGE_PIN B21  IOSTANDARD LVCMOS33} [get_ports {da_data1[6]}]
set_property -dict {PACKAGE_PIN C22  IOSTANDARD LVCMOS33} [get_ports {da_data1[5]}]
set_property -dict {PACKAGE_PIN B22  IOSTANDARD LVCMOS33} [get_ports {da_data1[4]}]
set_property -dict {PACKAGE_PIN C20  IOSTANDARD LVCMOS33} [get_ports {da_data1[3]}]
set_property -dict {PACKAGE_PIN D20  IOSTANDARD LVCMOS33} [get_ports {da_data1[2]}]
set_property -dict {PACKAGE_PIN A20  IOSTANDARD LVCMOS33} [get_ports {da_data1[1]}]
set_property -dict {PACKAGE_PIN B20  IOSTANDARD LVCMOS33} [get_ports {da_data1[0]}]
set_property -dict {PACKAGE_PIN C15  IOSTANDARD LVCMOS33} [get_ports {da_data2[9]}]
set_property -dict {PACKAGE_PIN C14  IOSTANDARD LVCMOS33} [get_ports {da_data2[8]}]
set_property -dict {PACKAGE_PIN B13  IOSTANDARD LVCMOS33} [get_ports {da_data2[7]}]
set_property -dict {PACKAGE_PIN C13  IOSTANDARD LVCMOS33} [get_ports {da_data2[6]}]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {da_data2[5]}]
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {da_data2[4]}]
set_property -dict {PACKAGE_PIN U17  IOSTANDARD LVCMOS33} [get_ports {da_data2[3]}]
set_property -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS33} [get_ports {da_data2[2]}]
set_property -dict {PACKAGE_PIN V17  IOSTANDARD LVCMOS33} [get_ports {da_data2[1]}]
set_property -dict {PACKAGE_PIN W17  IOSTANDARD LVCMOS33} [get_ports {da_data2[0]}]

# dac clock
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports da_clk1]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports da_clk2]

# adc config
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y16 } [get_ports {ad_data_1[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA16} [get_ports {ad_data_1[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB16} [get_ports {ad_data_1[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB17} [get_ports {ad_data_1[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA15} [get_ports {ad_data_1[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB15} [get_ports {ad_data_1[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y13 } [get_ports {ad_data_1[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA14} [get_ports {ad_data_1[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA13} [get_ports {ad_data_1[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB13} [get_ports {ad_data_1[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W11 } [get_ports ad_otr_1]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W12 } [get_ports ad_oe_1]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AB11} [get_ports ad_clk_1]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA10} [get_ports {ad_data_2[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN AA11} [get_ports {ad_data_2[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y11 } [get_ports {ad_data_2[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y12 } [get_ports {ad_data_2[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W16 } [get_ports {ad_data_2[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W15 } [get_ports {ad_data_2[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U15 } [get_ports {ad_data_2[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V15 } [get_ports {ad_data_2[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN Y14 } [get_ports {ad_data_2[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN W14 } [get_ports {ad_data_2[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T16 } [get_ports ad_otr_2]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U16 } [get_ports ad_oe_2]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN V13 } [get_ports ad_clk_2]

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
