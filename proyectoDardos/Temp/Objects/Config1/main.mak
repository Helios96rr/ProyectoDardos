SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\Rockwell Software\RSCommon;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NAiS MEWNET;C:\DeltaTau\PowerPMACSim\opt\ppmac\MinGW\bin;C:\Program Files (x86)\Schneider Electric\Vijeo-Designer 6.2\Vijeo-Runtime\public\bin;C:\Program Files\dotnet\;C:\Program Files (x86)\Common Files\Rockwell\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\130\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;C:\Program Files\Microsoft SQL Server\130\DTS\Binn\;C:\Program Files\Azure Data Studio\bin;C:\Users\Domum Automation\AppData\Local\Programs\Python\Python38-32\Scripts\;C:\Users\Domum Automation\AppData\Local\Programs\Python\Python38-32\;C:\Users\Domum Automation\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Azure Data Studio\bin;C:\Users\Domum Automation\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Domum Automation\AppData\Local\Programs\Python\Python38-32\Scripts\;C:\Users\Domum Automation\AppData\Local\Programs\Python\Python38-32\;C:\Users\Domum Automation\AppData\Local\Microsoft\WindowsApps;C:\Program Files\Azure Data Studio\bin;C:\Users\Domum Automation\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\BrAutomation\AS411\Bin-en\4.11;C:\BrAutomation\AS411\Bin-en\4.10;C:\BrAutomation\AS411\Bin-en\4.9;C:\BrAutomation\AS411\Bin-en\4.8;C:\BrAutomation\AS411\Bin-en\4.7;C:\BrAutomation\AS411\Bin-en\4.6;C:\BrAutomation\AS411\Bin-en\4.5;C:\BrAutomation\AS411\Bin-en\4.4;C:\BrAutomation\AS411\Bin-en\4.3;C:\BrAutomation\AS411\Bin-en\4.2;C:\BrAutomation\AS411\Bin-en\4.1;C:\BrAutomation\AS411\Bin-en\4.0;C:\BrAutomation\AS411\Bin-en
export AS_BUILD_MODE := Build
export AS_VERSION := 4.11.2.75
export AS_WORKINGVERSION := 4.11
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Domum Automation
export AS_PATH := C:/BrAutomation/AS411
export AS_BIN_PATH := C:/BrAutomation/AS411/bin-en
export AS_PROJECT_PATH := C:/Git/CursoBR2023/ProyectosFinales/proyectoDardos
export AS_PROJECT_NAME := proyectoDardos
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS411/AS/VC
export AS_TEMP_PATH := C:/Git/CursoBR2023/ProyectosFinales/proyectoDardos/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Git/CursoBR2023/ProyectosFinales/proyectoDardos/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS411/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BrAutomation/AS411/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS411/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BrAutomation/AS411/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS411
export WIN32_AS_PATH := "C:\BrAutomation\AS411"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS411\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Git\CursoBR2023\ProyectosFinales\proyectoDardos"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS411\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Git\CursoBR2023\ProyectosFinales\proyectoDardos\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Git\CursoBR2023\ProyectosFinales\proyectoDardos\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS411\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS411"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/proyectoDardos.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

