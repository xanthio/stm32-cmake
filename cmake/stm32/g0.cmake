set(STM32_G0_TYPES 
    G030xx G031xx G041xx G050xx G051xx G061xx
    G070xx G071xx G081xx G0B0xx G0B1xx G0C1xx
)
set(STM32_G0_TYPE_MATCH 
    "G030.." "G031.." "G041.." "G050.." "G051.." "G061.."
    "G070.." "G071.." "G081.." "G0B0.." "G0B1.." "G0C1.."
)
set(STM32_G0_RAM_SIZES 
      8K   8K   8K  18K  18K  18K
     36K  36K  36K 144K 144K 144K
)
set(STM32_G0_CCRAM_SIZES 
      0K   0K   0K   0K   0K   0K
      0K   0K   0K   0K   0K   0K
)

stm32_util_create_family_targets(G0)

target_compile_options(STM32::G0 INTERFACE 
    -mcpu=cortex-m0plus
)
target_link_options(STM32::G0 INTERFACE 
    -mcpu=cortex-m0plus
)

list(APPEND STM32_ALL_DEVICES
    G030C6
    G030C8
    G030F6
    G030J6
    G030K6
    G030K8
    G031C4
    G031C6
    G031C8
    G031F4
    G031F6
    G031F8
    G031G4
    G031G6
    G031G8
    G031J4
    G031J6
    G031K4
    G031K6
    G031K8
    G031Y8
    G041C6
    G041C8
    G041F6
    G041F8
    G041G6
    G041G8
    G041J6
    G041K6
    G041K8
    G041Y8
    G050C6
    G050C8
    G050F6
    G050K6
    G050K8
    G051C6
    G051C8
    G051F6
    G051F8
    G051G6
    G051G8
    G051K6
    G051K8
    G061C6
    G061C8
    G061F6
    G061F8
    G061G6
    G061G8
    G061K6
    G061K8
    G070CB
    G070KB
    G070RB
    G071C6
    G071C8
    G071CB
    G071EB
    G071G6
    G071G8
    G071GB
    G071K6
    G071K8
    G071KB
    G071R6
    G071R8
    G071RB
    G081CB
    G081EB
    G081GB
    G081KB
    G081RB
    G0B0CE
    G0B0KE
    G0B0RE
    G0B0VE
    G0B1CB
    G0B1CC
    G0B1CE
    G0B1KB
    G0B1KC
    G0B1KE
    G0B1MB
    G0B1MC
    G0B1ME
    G0B1NE
    G0B1RB
    G0B1RC
    G0B1RE
    G0B1VB
    G0B1VC
    G0B1VE
    G0C1CC
    G0C1CE
    G0C1KC
    G0C1KE
    G0C1MC
    G0C1ME
    G0C1RC
    G0C1RE
    G0C1VC
    G0C1VE
)

list(APPEND STM32_SUPPORTED_FAMILIES_LONG_NAME
    STM32G0
)

list(APPEND STM32_FETCH_FAMILIES G0)

set(CUBE_G0_VERSION  v1.4.1)
set(CMSIS_G0_VERSION v1.4.0)
set(HAL_G0_VERSION   v1.4.1)