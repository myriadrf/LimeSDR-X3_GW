# Device pin properties

# Clock
create_interface CLOCK
set_property INTERFACE CLOCK [get_ports {CLK100_FPGA_*}]
set_property INTERFACE CLOCK [get_ports {LMK1_CLK LMK2_CLK}]

set_property IOSTANDARD LVCMOS33 [get_ports {LMK1_CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {LMK2_CLK}]


set_property PACKAGE_PIN M21  [get_ports LMK2_CLK               ]



# GPIO 
create_interface FPGA_GPIO
set_property INTERFACE FPGA_GPIO [get_ports {FPGA_GPIO[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_GPIO[*]}]

set_property PACKAGE_PIN L22  [get_ports FPGA_GPIO[0]           ]
set_property PACKAGE_PIN L23  [get_ports FPGA_GPIO[1]           ]
set_property PACKAGE_PIN M22  [get_ports FPGA_GPIO[2]           ]
set_property PACKAGE_PIN P21  [get_ports FPGA_GPIO[3]           ]
set_property PACKAGE_PIN N23  [get_ports FPGA_GPIO[4]           ]
set_property PACKAGE_PIN N24  [get_ports FPGA_GPIO[5]           ]
set_property PACKAGE_PIN P19  [get_ports FPGA_GPIO[6]           ]
set_property PACKAGE_PIN N19  [get_ports FPGA_GPIO[7]           ]
#set_property PACKAGE_PIN P23  [get_ports FPGA_GPIO[8]           ]
#set_property PACKAGE_PIN P24  [get_ports FPGA_GPIO[9]           ]
#set_property PACKAGE_PIN R20  [get_ports FPGA_GPIO[10]          ]
#set_property PACKAGE_PIN R21  [get_ports FPGA_GPIO[11]          ]
#set_property PACKAGE_PIN R25  [get_ports FPGA_GPIO[12]          ]
#set_property PACKAGE_PIN P25  [get_ports FPGA_GPIO[13]          ]
#set_property PACKAGE_PIN N26  [get_ports FPGA_GPIO[14]          ]
#set_property PACKAGE_PIN M26  [get_ports FPGA_GPIO[15]          ]

# LED 
create_interface FPGA_LED
set_property INTERFACE FPGA_LED [get_ports FPGA_LED* ]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_LED* ]

#set_property PACKAGE_PIN L22  [get_ports FPGA_LED1_G            ]
#set_property PACKAGE_PIN L23  [get_ports FPGA_LED1_R            ]
#set_property PACKAGE_PIN L22  [get_ports FPGA_LED2_G            ]
#set_property PACKAGE_PIN L23  [get_ports FPGA_LED2_R            ]
#set_property PACKAGE_PIN L22  [get_ports FPGA_LED3_G            ]
#set_property PACKAGE_PIN L23  [get_ports FPGA_LED3_R            ]
#set_property PACKAGE_PIN L22  [get_ports FPGA_LED4_G            ]
#set_property PACKAGE_PIN L23  [get_ports FPGA_LED4_R            ]

# SWITCH
create_interface FPGA_SW
set_property INTERFACE FPGA_SW [get_ports FPGA_SW[*] ]
set_property IOSTANDARD LVCMOS25 [get_ports FPGA_SW[*] ]

#LMS2 ADC1
create_interface LMS2_BB_ADC1
set_property INTERFACE LMS2_BB_ADC1 [get_ports {LMS2_BB_ADC1* FPGA_LMS2_BB_ADC1_RESET}]
set_property IOSTANDARD LVCMOS25 [get_ports {FPGA_LMS2_BB_ADC1_RESET}]

set_property PACKAGE_PIN C18 [get_ports LMS2_BB_ADC1_CLKOUT_N   ]
set_property PACKAGE_PIN D18 [get_ports LMS2_BB_ADC1_CLKOUT_P   ]
set_property PACKAGE_PIN B26 [get_ports LMS2_BB_ADC1_DA_N[0]    ]
set_property PACKAGE_PIN C26 [get_ports LMS2_BB_ADC1_DA_P[0]    ]
set_property PACKAGE_PIN A20 [get_ports LMS2_BB_ADC1_DA_N[1]    ]
set_property PACKAGE_PIN B20 [get_ports LMS2_BB_ADC1_DA_P[1]    ]
set_property PACKAGE_PIN F19 [get_ports LMS2_BB_ADC1_DA_N[2]    ]
set_property PACKAGE_PIN F18 [get_ports LMS2_BB_ADC1_DA_P[2]    ]
set_property PACKAGE_PIN B24 [get_ports LMS2_BB_ADC1_DA_N[3]    ]
set_property PACKAGE_PIN C24 [get_ports LMS2_BB_ADC1_DA_P[3]    ]
set_property PACKAGE_PIN F20 [get_ports LMS2_BB_ADC1_DA_N[4]    ]
set_property PACKAGE_PIN G19 [get_ports LMS2_BB_ADC1_DA_P[4]    ]
set_property PACKAGE_PIN B21 [get_ports LMS2_BB_ADC1_DA_N[5]    ]
set_property PACKAGE_PIN C21 [get_ports LMS2_BB_ADC1_DA_P[5]    ]
set_property PACKAGE_PIN F17 [get_ports LMS2_BB_ADC1_DA_N[6]    ]
set_property PACKAGE_PIN G17 [get_ports LMS2_BB_ADC1_DA_P[6]    ]
set_property PACKAGE_PIN D16 [get_ports LMS2_BB_ADC1_DB_N[0]    ]
set_property PACKAGE_PIN E16 [get_ports LMS2_BB_ADC1_DB_P[0]    ]
set_property PACKAGE_PIN A18 [get_ports LMS2_BB_ADC1_DB_N[1]    ]
set_property PACKAGE_PIN A17 [get_ports LMS2_BB_ADC1_DB_P[1]    ]
set_property PACKAGE_PIN A19 [get_ports LMS2_BB_ADC1_DB_N[2]    ]
set_property PACKAGE_PIN B19 [get_ports LMS2_BB_ADC1_DB_P[2]    ]
set_property PACKAGE_PIN A22 [get_ports LMS2_BB_ADC1_DB_N[3]    ]
set_property PACKAGE_PIN B22 [get_ports LMS2_BB_ADC1_DB_P[3]    ]
set_property PACKAGE_PIN D21 [get_ports LMS2_BB_ADC1_DB_N[4]    ]
set_property PACKAGE_PIN E21 [get_ports LMS2_BB_ADC1_DB_P[4]    ]
set_property PACKAGE_PIN A25 [get_ports LMS2_BB_ADC1_DB_N[5]    ]
set_property PACKAGE_PIN B25 [get_ports LMS2_BB_ADC1_DB_P[5]    ]
set_property PACKAGE_PIN A24 [get_ports LMS2_BB_ADC1_DB_N[6]    ]
set_property PACKAGE_PIN A23 [get_ports LMS2_BB_ADC1_DB_P[6]    ]

#LMS2 ADC2
create_interface LMS2_BB_ADC2
set_property INTERFACE LMS2_BB_ADC2 [get_ports {LMS2_BB_ADC2* FPGA_LMS2_BB_ADC2_RESET}]
set_property IOSTANDARD LVCMOS25 [get_ports {FPGA_LMS2_BB_ADC2_RESET}]

set_property PACKAGE_PIN J21  [get_ports LMS2_BB_ADC2_CLKOUT_N  ]
set_property PACKAGE_PIN K21  [get_ports LMS2_BB_ADC2_CLKOUT_P  ]
set_property PACKAGE_PIN J26  [get_ports LMS2_BB_ADC2_DA_N[0]   ]
set_property PACKAGE_PIN J25  [get_ports LMS2_BB_ADC2_DA_P[0]   ]
set_property PACKAGE_PIN F25  [get_ports LMS2_BB_ADC2_DA_N[1]   ]
set_property PACKAGE_PIN G25  [get_ports LMS2_BB_ADC2_DA_P[1]   ]
set_property PACKAGE_PIN F24  [get_ports LMS2_BB_ADC2_DA_N[2]   ]
set_property PACKAGE_PIN G24  [get_ports LMS2_BB_ADC2_DA_P[2]   ]
set_property PACKAGE_PIN F22  [get_ports LMS2_BB_ADC2_DA_N[3]   ]
set_property PACKAGE_PIN G22  [get_ports LMS2_BB_ADC2_DA_P[3]   ]
set_property PACKAGE_PIN G26  [get_ports LMS2_BB_ADC2_DA_N[4]   ]
set_property PACKAGE_PIN H26  [get_ports LMS2_BB_ADC2_DA_P[4]   ]
set_property PACKAGE_PIN H19  [get_ports LMS2_BB_ADC2_DA_N[5]   ]
set_property PACKAGE_PIN J19  [get_ports LMS2_BB_ADC2_DA_P[5]   ]
set_property PACKAGE_PIN L18  [get_ports LMS2_BB_ADC2_DA_N[6]   ]
set_property PACKAGE_PIN L17  [get_ports LMS2_BB_ADC2_DA_P[6]   ]
set_property PACKAGE_PIN J20  [get_ports LMS2_BB_ADC2_DB_N[0]   ]
set_property PACKAGE_PIN K20  [get_ports LMS2_BB_ADC2_DB_P[0]   ]
set_property PACKAGE_PIN H18  [get_ports LMS2_BB_ADC2_DB_N[1]   ]
set_property PACKAGE_PIN J18  [get_ports LMS2_BB_ADC2_DB_P[1]   ]
set_property PACKAGE_PIN H24  [get_ports LMS2_BB_ADC2_DB_N[2]   ]
set_property PACKAGE_PIN J24  [get_ports LMS2_BB_ADC2_DB_P[2]   ]
set_property PACKAGE_PIN E23  [get_ports LMS2_BB_ADC2_DB_N[3]   ]
set_property PACKAGE_PIN F23  [get_ports LMS2_BB_ADC2_DB_P[3]   ]
set_property PACKAGE_PIN K23  [get_ports LMS2_BB_ADC2_DB_N[4]   ]
set_property PACKAGE_PIN K22  [get_ports LMS2_BB_ADC2_DB_P[4]   ]
set_property PACKAGE_PIN D25  [get_ports LMS2_BB_ADC2_DB_N[5]   ]
set_property PACKAGE_PIN E25  [get_ports LMS2_BB_ADC2_DB_P[5]   ]
set_property PACKAGE_PIN D26  [get_ports LMS2_BB_ADC2_DB_N[6]   ]
set_property PACKAGE_PIN E26  [get_ports LMS2_BB_ADC2_DB_P[6]   ]

#LMS3 ADC1
create_interface LMS3_BB_ADC1
set_property INTERFACE LMS3_BB_ADC1 [get_ports {LMS3_BB_ADC1* FPGA_LMS3_BB_ADC1_RESET}]
set_property IOSTANDARD LVCMOS25 [get_ports {FPGA_LMS3_BB_ADC1_RESET}]

set_property PACKAGE_PIN AB20 [get_ports LMS3_BB_ADC1_CLKOUT_N]
set_property PACKAGE_PIN AA20 [get_ports LMS3_BB_ADC1_CLKOUT_P]
set_property PACKAGE_PIN AD26 [get_ports LMS3_BB_ADC1_DA_N[0]   ]
set_property PACKAGE_PIN AD25 [get_ports LMS3_BB_ADC1_DA_P[0]   ]
set_property PACKAGE_PIN AC23 [get_ports LMS3_BB_ADC1_DA_N[1]   ]
set_property PACKAGE_PIN AC22 [get_ports LMS3_BB_ADC1_DA_P[1]   ]
set_property PACKAGE_PIN AE26 [get_ports LMS3_BB_ADC1_DA_N[2]   ]
set_property PACKAGE_PIN AE25 [get_ports LMS3_BB_ADC1_DA_P[2]   ]
set_property PACKAGE_PIN AF25 [get_ports LMS3_BB_ADC1_DA_N[3]   ]
set_property PACKAGE_PIN AF24 [get_ports LMS3_BB_ADC1_DA_P[3]   ]
set_property PACKAGE_PIN AF20 [get_ports LMS3_BB_ADC1_DA_N[4]   ]
set_property PACKAGE_PIN AF19 [get_ports LMS3_BB_ADC1_DA_P[4]   ]
set_property PACKAGE_PIN AF18 [get_ports LMS3_BB_ADC1_DA_N[5]   ]
set_property PACKAGE_PIN AE18 [get_ports LMS3_BB_ADC1_DA_P[5]   ]
set_property PACKAGE_PIN AF17 [get_ports LMS3_BB_ADC1_DA_N[6]   ]
set_property PACKAGE_PIN AE17 [get_ports LMS3_BB_ADC1_DA_P[6]   ]
set_property PACKAGE_PIN AD17 [get_ports LMS3_BB_ADC1_DB_N[0]   ]
set_property PACKAGE_PIN AC17 [get_ports LMS3_BB_ADC1_DB_P[0]   ]
set_property PACKAGE_PIN Y17  [get_ports LMS3_BB_ADC1_DB_N[1]   ]
set_property PACKAGE_PIN Y16  [get_ports LMS3_BB_ADC1_DB_P[1]   ]
set_property PACKAGE_PIN AA18 [get_ports LMS3_BB_ADC1_DB_N[2]   ]
set_property PACKAGE_PIN Y18  [get_ports LMS3_BB_ADC1_DB_P[2]   ]
set_property PACKAGE_PIN AE20 [get_ports LMS3_BB_ADC1_DB_N[3]   ]
set_property PACKAGE_PIN AD20 [get_ports LMS3_BB_ADC1_DB_P[3]   ]
set_property PACKAGE_PIN AE21 [get_ports LMS3_BB_ADC1_DB_N[4]   ]
set_property PACKAGE_PIN AD21 [get_ports LMS3_BB_ADC1_DB_P[4]   ]
set_property PACKAGE_PIN AF22 [get_ports LMS3_BB_ADC1_DB_N[5]   ]
set_property PACKAGE_PIN AE22 [get_ports LMS3_BB_ADC1_DB_P[5]   ]
set_property PACKAGE_PIN AF23 [get_ports LMS3_BB_ADC1_DB_N[6]   ]
set_property PACKAGE_PIN AE23 [get_ports LMS3_BB_ADC1_DB_P[6]   ]

#LMS3 ADC2
create_interface LMS3_BB_ADC2
set_property INTERFACE LMS3_BB_ADC2 [get_ports {LMS3_BB_ADC2* FPGA_LMS3_BB_ADC2_RESET}]
set_property IOSTANDARD LVCMOS25 [get_ports {FPGA_LMS3_BB_ADC2_RESET}]

set_property PACKAGE_PIN V22  [get_ports LMS3_BB_ADC2_CLKOUT_N]
set_property PACKAGE_PIN U22  [get_ports LMS3_BB_ADC2_CLKOUT_P]
set_property PACKAGE_PIN T15  [get_ports LMS3_BB_ADC2_DA_N[0]   ]
set_property PACKAGE_PIN T14  [get_ports LMS3_BB_ADC2_DA_P[0]   ]
set_property PACKAGE_PIN T18  [get_ports LMS3_BB_ADC2_DA_N[1]   ]
set_property PACKAGE_PIN T17  [get_ports LMS3_BB_ADC2_DA_P[1]   ]
set_property PACKAGE_PIN W23  [get_ports LMS3_BB_ADC2_DA_N[2]   ]
set_property PACKAGE_PIN V23  [get_ports LMS3_BB_ADC2_DA_P[2]   ]
set_property PACKAGE_PIN U19  [get_ports LMS3_BB_ADC2_DA_N[3]   ]
set_property PACKAGE_PIN T19  [get_ports LMS3_BB_ADC2_DA_P[3]   ]
set_property PACKAGE_PIN AA23 [get_ports LMS3_BB_ADC2_DA_N[4]   ]
set_property PACKAGE_PIN AA22 [get_ports LMS3_BB_ADC2_DA_P[4]   ]
set_property PACKAGE_PIN U26  [get_ports LMS3_BB_ADC2_DA_N[5]   ]
set_property PACKAGE_PIN U25  [get_ports LMS3_BB_ADC2_DA_P[5]   ]
set_property PACKAGE_PIN W26  [get_ports LMS3_BB_ADC2_DA_N[6]   ]
set_property PACKAGE_PIN V26  [get_ports LMS3_BB_ADC2_DA_P[6]   ]
set_property PACKAGE_PIN AC26 [get_ports LMS3_BB_ADC2_DB_N[0]   ]
set_property PACKAGE_PIN AB26 [get_ports LMS3_BB_ADC2_DB_P[0]   ]
set_property PACKAGE_PIN AB25 [get_ports LMS3_BB_ADC2_DB_N[1]   ]
set_property PACKAGE_PIN AA24 [get_ports LMS3_BB_ADC2_DB_P[1]   ]
set_property PACKAGE_PIN Y20  [get_ports LMS3_BB_ADC2_DB_N[2]   ]
set_property PACKAGE_PIN W20  [get_ports LMS3_BB_ADC2_DB_P[2]   ]
set_property PACKAGE_PIN AC24 [get_ports LMS3_BB_ADC2_DB_N[3]   ]
set_property PACKAGE_PIN AB24 [get_ports LMS3_BB_ADC2_DB_P[3]   ]
set_property PACKAGE_PIN W19  [get_ports LMS3_BB_ADC2_DB_N[4]   ]
set_property PACKAGE_PIN V19  [get_ports LMS3_BB_ADC2_DB_P[4]   ]
set_property PACKAGE_PIN AA25 [get_ports LMS3_BB_ADC2_DB_N[5]   ]
set_property PACKAGE_PIN Y25  [get_ports LMS3_BB_ADC2_DB_P[5]   ]
set_property PACKAGE_PIN Y26  [get_ports LMS3_BB_ADC2_DB_N[6]   ]
set_property PACKAGE_PIN W25  [get_ports LMS3_BB_ADC2_DB_P[6]   ]

#LMS2 DAC1
create_interface LMS2_BB_DAC1
set_property INTERFACE LMS2_BB_DAC1 [get_ports *LMS2_BB_DAC1*]
set_property IOSTANDARD LVCMOS33 [get_ports {LMS2_BB_DAC1_PD  LMS2_BB_DAC1_TORB}]

set_property PACKAGE_PIN AA2 [get_ports CDCM2_LMS2_BB_DAC1_REFC_N   ]
set_property PACKAGE_PIN AA3 [get_ports CDCM2_LMS2_BB_DAC1_REFC_P   ]
set_property PACKAGE_PIN AB4 [get_ports FPGA_LMS2_BB_DAC1_CLK_N     ]
set_property PACKAGE_PIN AA4 [get_ports FPGA_LMS2_BB_DAC1_CLK_P     ]
set_property PACKAGE_PIN  W1 [get_ports LMS2_BB_DAC1_B_N[0]         ]
set_property PACKAGE_PIN  V1 [get_ports LMS2_BB_DAC1_B_P[0]         ]
set_property PACKAGE_PIN  W4 [get_ports LMS2_BB_DAC1_B_N[1]         ]
set_property PACKAGE_PIN  W5 [get_ports LMS2_BB_DAC1_B_P[1]         ]
set_property PACKAGE_PIN  V2 [get_ports LMS2_BB_DAC1_B_N[2]         ]
set_property PACKAGE_PIN  V3 [get_ports LMS2_BB_DAC1_B_P[2]         ]
set_property PACKAGE_PIN  W6 [get_ports LMS2_BB_DAC1_B_N[3]         ]
set_property PACKAGE_PIN  V6 [get_ports LMS2_BB_DAC1_B_P[3]         ]
set_property PACKAGE_PIN  Y3 [get_ports LMS2_BB_DAC1_B_N[4]         ]
set_property PACKAGE_PIN  W3 [get_ports LMS2_BB_DAC1_B_P[4]         ]
set_property PACKAGE_PIN AC1 [get_ports LMS2_BB_DAC1_B_N[5]         ]
set_property PACKAGE_PIN AB1 [get_ports LMS2_BB_DAC1_B_P[5]         ]
set_property PACKAGE_PIN  Y1 [get_ports LMS2_BB_DAC1_B_N[6]         ]
set_property PACKAGE_PIN  Y2 [get_ports LMS2_BB_DAC1_B_P[6]         ]
set_property PACKAGE_PIN AE1 [get_ports LMS2_BB_DAC1_B_N[7]         ]
set_property PACKAGE_PIN AD1 [get_ports LMS2_BB_DAC1_B_P[7]         ]
set_property PACKAGE_PIN AF2 [get_ports LMS2_BB_DAC1_B_N[8]         ]
set_property PACKAGE_PIN AE2 [get_ports LMS2_BB_DAC1_B_P[8]         ]
set_property PACKAGE_PIN AE5 [get_ports LMS2_BB_DAC1_B_N[9]         ]
set_property PACKAGE_PIN AD5 [get_ports LMS2_BB_DAC1_B_P[9]         ]
set_property PACKAGE_PIN AF3 [get_ports LMS2_BB_DAC1_B_N[10]        ]
set_property PACKAGE_PIN AE3 [get_ports LMS2_BB_DAC1_B_P[10]        ]
set_property PACKAGE_PIN AF4 [get_ports LMS2_BB_DAC1_B_N[11]        ]
set_property PACKAGE_PIN AF5 [get_ports LMS2_BB_DAC1_B_P[11]        ]
set_property PACKAGE_PIN AD4 [get_ports LMS2_BB_DAC1_B_N[12]        ]
set_property PACKAGE_PIN AC4 [get_ports LMS2_BB_DAC1_B_P[12]        ]
set_property PACKAGE_PIN  Y5 [get_ports LMS2_BB_DAC1_B_N[13]        ]
set_property PACKAGE_PIN  Y6 [get_ports LMS2_BB_DAC1_B_P[13]        ]
set_property PACKAGE_PIN  W8 [get_ports LMS2_BB_DAC1_B_N[14]        ]
set_property PACKAGE_PIN  V8 [get_ports LMS2_BB_DAC1_B_P[14]        ]
set_property PACKAGE_PIN AB5 [get_ports LMS2_BB_DAC1_B_N[15]        ]
set_property PACKAGE_PIN AA5 [get_ports LMS2_BB_DAC1_B_P[15]        ]
set_property PACKAGE_PIN AA8 [get_ports LMS2_BB_DAC1_SELIQ_N        ]
set_property PACKAGE_PIN  Y8 [get_ports LMS2_BB_DAC1_SELIQ_P        ]

#LMS2 DAC2
create_interface LMS2_BB_DAC2
set_property INTERFACE LMS2_BB_DAC2 [get_ports *LMS2_BB_DAC2*]
set_property IOSTANDARD LVCMOS33 [get_ports {LMS2_BB_DAC2_PD  LMS2_BB_DAC2_TORB}]

set_property PACKAGE_PIN  N2 [get_ports CDCM2_LMS2_BB_DAC2_REFC_N   ]
set_property PACKAGE_PIN  N3 [get_ports CDCM2_LMS2_BB_DAC2_REFC_P   ]
set_property PACKAGE_PIN  L2 [get_ports FPGA_LMS2_BB_DAC2_CLK_N     ]
set_property PACKAGE_PIN  M2 [get_ports FPGA_LMS2_BB_DAC2_CLK_P     ]
set_property PACKAGE_PIN  J3 [get_ports LMS2_BB_DAC2_B_N[0]         ]
set_property PACKAGE_PIN  K3 [get_ports LMS2_BB_DAC2_B_P[0]         ]
set_property PACKAGE_PIN  L7 [get_ports LMS2_BB_DAC2_B_N[1]         ]
set_property PACKAGE_PIN  M7 [get_ports LMS2_BB_DAC2_B_P[1]         ]
set_property PACKAGE_PIN  L4 [get_ports LMS2_BB_DAC2_B_N[2]         ]
set_property PACKAGE_PIN  M4 [get_ports LMS2_BB_DAC2_B_P[2]         ]
set_property PACKAGE_PIN  K5 [get_ports LMS2_BB_DAC2_B_N[3]         ]
set_property PACKAGE_PIN  L5 [get_ports LMS2_BB_DAC2_B_P[3]         ]
set_property PACKAGE_PIN  N6 [get_ports LMS2_BB_DAC2_B_N[4]         ]
set_property PACKAGE_PIN  N7 [get_ports LMS2_BB_DAC2_B_P[4]         ]
set_property PACKAGE_PIN  J1 [get_ports LMS2_BB_DAC2_B_N[5]         ]
set_property PACKAGE_PIN  K1 [get_ports LMS2_BB_DAC2_B_P[5]         ]
set_property PACKAGE_PIN  K2 [get_ports LMS2_BB_DAC2_B_N[6]         ]
set_property PACKAGE_PIN  L3 [get_ports LMS2_BB_DAC2_B_P[6]         ]
set_property PACKAGE_PIN  M1 [get_ports LMS2_BB_DAC2_B_N[7]         ]
set_property PACKAGE_PIN  N1 [get_ports LMS2_BB_DAC2_B_P[7]         ]
set_property PACKAGE_PIN  H1 [get_ports LMS2_BB_DAC2_B_N[8]         ]
set_property PACKAGE_PIN  H2 [get_ports LMS2_BB_DAC2_B_P[8]         ]
set_property PACKAGE_PIN  P1 [get_ports LMS2_BB_DAC2_B_N[9]         ]
set_property PACKAGE_PIN  R1 [get_ports LMS2_BB_DAC2_B_P[9]         ]
set_property PACKAGE_PIN  T3 [get_ports LMS2_BB_DAC2_B_N[10]        ]
set_property PACKAGE_PIN  T4 [get_ports LMS2_BB_DAC2_B_P[10]        ]
set_property PACKAGE_PIN  R2 [get_ports LMS2_BB_DAC2_B_N[11]        ]
set_property PACKAGE_PIN  T2 [get_ports LMS2_BB_DAC2_B_P[11]        ]
set_property PACKAGE_PIN  U1 [get_ports LMS2_BB_DAC2_B_N[12]        ]
set_property PACKAGE_PIN  U2 [get_ports LMS2_BB_DAC2_B_P[12]        ]
set_property PACKAGE_PIN  R5 [get_ports LMS2_BB_DAC2_B_N[13]        ]
set_property PACKAGE_PIN  P6 [get_ports LMS2_BB_DAC2_B_P[13]        ]
set_property PACKAGE_PIN  U5 [get_ports LMS2_BB_DAC2_B_N[14]        ]
set_property PACKAGE_PIN  U6 [get_ports LMS2_BB_DAC2_B_P[14]        ]
set_property PACKAGE_PIN  P8 [get_ports LMS2_BB_DAC2_B_N[15]        ]
set_property PACKAGE_PIN  R8 [get_ports LMS2_BB_DAC2_B_P[15]        ]
set_property PACKAGE_PIN  R6 [get_ports LMS2_BB_DAC2_SELIQ_N        ]
set_property PACKAGE_PIN  R7 [get_ports LMS2_BB_DAC2_SELIQ_P        ]

#GNSS
create_interface GNSS
set_property INTERFACE GNSS [get_ports GNSS* ]
set_property INTERFACE GNSS [get_ports PPS* ]
set_property IOSTANDARD LVCMOS33 [get_ports GNSS* ]
set_property IOSTANDARD LVCMOS33 [get_ports PPS* ]

set_property PACKAGE_PIN M24  [get_ports GNSS_LCKIND          ]
set_property PACKAGE_PIN L20  [get_ports GNSS_PPS             ]
set_property PACKAGE_PIN M25  [get_ports GNSS_RESET_N         ]
set_property PACKAGE_PIN L25  [get_ports GNSS_UART_RX         ]
set_property PACKAGE_PIN L24  [get_ports GNSS_UART_TX         ]
set_property PACKAGE_PIN N21  [get_ports PPS_IN_EXT           ]
set_property PACKAGE_PIN P20  [get_ports PPS_IN_PREVIOUS      ]
set_property PACKAGE_PIN T22  [get_ports PPS_OUT              ]

# SPI0
create_interface FPGA_SPI0
set_property INTERFACE FPGA_SPI0 [get_ports FPGA_SPI0* ]
set_property IOSTANDARD LVCMOS25 [get_ports FPGA_SPI0* ]

set_property PACKAGE_PIN C1  [get_ports FPGA_SPI0_LMS1_MISO    ]
set_property PACKAGE_PIN B1  [get_ports FPGA_SPI0_LMS1_SS      ]
set_property PACKAGE_PIN D5  [get_ports FPGA_SPI0_LMS2_MISO    ]
set_property PACKAGE_PIN F5  [get_ports FPGA_SPI0_LMS2_SS      ]
set_property PACKAGE_PIN C4  [get_ports FPGA_SPI0_LMS3_MISO    ]
set_property PACKAGE_PIN F4  [get_ports FPGA_SPI0_LMS3_SS      ]
set_property PACKAGE_PIN A2  [get_ports FPGA_SPI0_MOSI         ]
set_property PACKAGE_PIN A3  [get_ports FPGA_SPI0_SCLK         ]

# SPI1
create_interface FPGA_SPI1
set_property INTERFACE FPGA_SPI1 [get_ports FPGA_SPI1* ]
set_property IOSTANDARD LVCMOS25 [get_ports FPGA_SPI1* ]

#set_property PACKAGE_PIN C1  [get_ports FPGA_SPI0_LMS1_MISO    ]
#set_property PACKAGE_PIN B1  [get_ports FPGA_SPI0_LMS1_SS      ]
#set_property PACKAGE_PIN D5  [get_ports FPGA_SPI0_LMS2_MISO    ]
#set_property PACKAGE_PIN F5  [get_ports FPGA_SPI0_LMS2_SS      ]
#set_property PACKAGE_PIN C4  [get_ports FPGA_SPI0_LMS3_MISO    ]
#set_property PACKAGE_PIN F4  [get_ports FPGA_SPI0_LMS3_SS      ]
#set_property PACKAGE_PIN A2  [get_ports FPGA_SPI0_MOSI         ]
#set_property PACKAGE_PIN A3  [get_ports FPGA_SPI0_SCLK         ]

# SPI2
create_interface FPGA_SPI2
set_property INTERFACE FPGA_SPI2 [get_ports FPGA_SPI2* ]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_SPI2* ]

set_property PACKAGE_PIN P26  [get_ports FPGA_SPI2_ADF_SS     ]
set_property PACKAGE_PIN T25  [get_ports FPGA_SPI2_MOSI       ]
set_property PACKAGE_PIN T24  [get_ports FPGA_SPI2_SCLK       ]
set_property PACKAGE_PIN R26  [get_ports FPGA_SPI2_XO_DAC_SS  ]

# FPGA_I2C
create_interface FPGA_I2C
set_property INTERFACE FPGA_I2C [get_ports FPGA_I2C* ]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_I2C* ]

set_property PACKAGE_PIN N17  [get_ports FPGA_I2C_SCL         ]
set_property PACKAGE_PIN N16  [get_ports FPGA_I2C_SDA         ]

# LMS1
create_interface LMS1
set_property INTERFACE LMS1 [get_ports LMS1* ]
set_property IOSTANDARD LVCMOS25 [get_ports LMS1* ]

set_property PACKAGE_PIN H8 [get_ports LMS1_DIQ1_D[0 ]         ]    
set_property PACKAGE_PIN G8 [get_ports LMS1_DIQ1_D[1 ]         ]
set_property PACKAGE_PIN H7 [get_ports LMS1_DIQ1_D[2 ]         ]
set_property PACKAGE_PIN G7 [get_ports LMS1_DIQ1_D[3 ]         ]
set_property PACKAGE_PIN F8 [get_ports LMS1_DIQ1_D[4 ]         ]
set_property PACKAGE_PIN F7 [get_ports LMS1_DIQ1_D[5 ]         ]
set_property PACKAGE_PIN H6 [get_ports LMS1_DIQ1_D[6 ]         ]
set_property PACKAGE_PIN G6 [get_ports LMS1_DIQ1_D[7 ]         ]
set_property PACKAGE_PIN H9 [get_ports LMS1_DIQ1_D[8 ]         ]
set_property PACKAGE_PIN J6 [get_ports LMS1_DIQ1_D[9 ]         ]
set_property PACKAGE_PIN J5 [get_ports LMS1_DIQ1_D[10]         ]
set_property PACKAGE_PIN L8 [get_ports LMS1_DIQ1_D[11]         ]
set_property PACKAGE_PIN H4 [get_ports LMS1_DIQ2_D[0 ]         ]
set_property PACKAGE_PIN K7 [get_ports LMS1_DIQ2_D[1 ]         ]
set_property PACKAGE_PIN K6 [get_ports LMS1_DIQ2_D[2 ]         ]
set_property PACKAGE_PIN B5 [get_ports LMS1_DIQ2_D[3 ]         ]
set_property PACKAGE_PIN A5 [get_ports LMS1_DIQ2_D[4 ]         ]
set_property PACKAGE_PIN B4 [get_ports LMS1_DIQ2_D[5 ]         ]
set_property PACKAGE_PIN A4 [get_ports LMS1_DIQ2_D[6 ]         ]
set_property PACKAGE_PIN D3 [get_ports LMS1_DIQ2_D[7 ]         ]
set_property PACKAGE_PIN C3 [get_ports LMS1_DIQ2_D[8 ]         ]
set_property PACKAGE_PIN F3 [get_ports LMS1_DIQ2_D[9 ]         ]
set_property PACKAGE_PIN E3 [get_ports LMS1_DIQ2_D[10]         ]
set_property PACKAGE_PIN C2 [get_ports LMS1_DIQ2_D[11]         ]
set_property PACKAGE_PIN D6 [get_ports LMS1_ENABLE_IQSEL1      ]
set_property PACKAGE_PIN J4 [get_ports LMS1_ENABLE_IQSEL2      ]
set_property PACKAGE_PIN G4 [get_ports LMS1_FCLK1              ]
set_property PACKAGE_PIN D4 [get_ports LMS1_FCLK2              ]
set_property PACKAGE_PIN G5 [get_ports LMS1_MCLK1              ]
set_property PACKAGE_PIN E5 [get_ports LMS1_MCLK2              ]
set_property PACKAGE_PIN J8 [get_ports LMS1_RESET              ]
set_property PACKAGE_PIN E2 [get_ports LMS1_RXEN               ]
set_property PACKAGE_PIN F2 [get_ports LMS1_TXEN               ]
set_property PACKAGE_PIN E6 [get_ports LMS1_TXNRX1             ]
set_property PACKAGE_PIN K8 [get_ports LMS1_TXNRX2             ]

# LMS RF SW
create_interface LMS_RF_SW
set_property INTERFACE LMS_RF_SW [get_ports {LMS2_TX* LNA* RFSW* }]
set_property IOSTANDARD LVCMOS25 [get_ports {LMS2_TX* LNA* RFSW* }]

# LMS2
create_interface LMS2
set_property INTERFACE LMS2 [get_ports {LMS2_RESET LMS2_RXEN LMS2_TXEN}]
set_property IOSTANDARD LVCMOS25 [get_ports {LMS2_RESET LMS2_RXEN LMS2_TXEN}]

set_property PACKAGE_PIN G9 [get_ports LMS2_RESET ]
set_property PACKAGE_PIN E1 [get_ports LMS2_RXEN  ]
set_property PACKAGE_PIN D1 [get_ports LMS2_TXEN  ]

# LMS3
create_interface LMS3
set_property INTERFACE LMS3 [get_ports {LMS3_RESET LMS3_RXEN LMS3_TXEN}]
set_property IOSTANDARD LVCMOS25 [get_ports {LMS3_RESET LMS3_RXEN LMS3_TXEN}]

set_property PACKAGE_PIN B2 [get_ports LMS3_RESET ]
set_property PACKAGE_PIN G2 [get_ports LMS3_RXEN  ]
set_property PACKAGE_PIN G1 [get_ports LMS3_TXEN  ]

# PCIe
create_interface PCIE
set_property INTERFACE PCIE [get_ports PCIE* ]

set_property PACKAGE_PIN E11  [get_ports PCIE_REFCLK_N        ]
set_property PACKAGE_PIN F11  [get_ports PCIE_REFCLK_P        ]
set_property PACKAGE_PIN R23  [get_ports PCIE_PERSTn          ]
set_property PACKAGE_PIN R22  [get_ports PCIE_SMCLK           ]
set_property PACKAGE_PIN T23  [get_ports PCIE_SMDAT           ]
set_property PACKAGE_PIN R18  [get_ports PCIE_WAKEn           ]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_PERSTn ]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_SMCLK  ]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_SMDAT  ]
set_property IOSTANDARD LVCMOS33 [get_ports PCIE_WAKEn  ]


# MISC
create_interface MISC
set_property INTERFACE MISC [get_ports {ADF_MUXOUT CDCM* FAN_CTRL HW_VER[*] BOM_VER[*] LM75_OS EXT_GND XO_TUNE_FPGA}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADF_MUXOUT FAN_CTRL LM75_OS}]
set_property IOSTANDARD LVCMOS25 [get_ports {CDCM*_RESET_N CDCM*_STATUS0 CDCM*_STATUS1 CDCM*_SYNCN } ]
set_property IOSTANDARD LVCMOS25 [get_ports {HW_VER[*] BOM_VER[*] EXT_GND XO_TUNE_FPGA}]
set_property IOSTANDARD LVDS_25  [get_ports {CDCM2_LMS2_BB_DAC1_REFC_* CDCM2_LMS2_BB_DAC2_REFC_*}]

set_property PACKAGE_PIN M19  [get_ports ADF_MUXOUT           ]

#place_ports LMS2_TX1_1_EN LMS2_TX1_2_EN LMS2_TX2_1_EN RFSW2_TX1_V1 LNA1_BP_M LNA1_EN_M LNA2_BP_M LNA2_EN_M RFSW1_RX2_V1 RFSW1_TRX1R_V1 RFSW1_TRX1T_V1 RFSW1_TRX2R_V1 RFSW1_TRX2T_V1 RFSW1_TX1_V1 RFSW2_TRX1R_V1 RFSW2_TRX1T_V1 RFSW2_TRX2R_V1 RFSW2_TRX2T_V1






#set_property PACKAGE_PIN N18  [get_ports PD_LMS2_BB_ADC1_DRV  ]
#set_property PACKAGE_PIN K25  [get_ports PD_LMS2_BB_ADC2_DRV  ]
#set_property PACKAGE_PIN K26  [get_ports PD_LMS3_BB_ADC1_DRV  ]
#set_property PACKAGE_PIN M20  [get_ports PD_LMS3_BB_ADC2_DRV  ]


