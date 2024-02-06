SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\dotnet\;C:\Users\josea\AppData\Local\Microsoft\WindowsApps;C:\Users\josea\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\josea\AppData\Local\Microsoft\WindowsApps;C:\Users\josea\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\BRAutomation\AS411\bin-en\4.11;C:\BRAutomation\AS411\bin-en\4.10;C:\BRAutomation\AS411\bin-en\4.9;C:\BRAutomation\AS411\bin-en\4.8;C:\BRAutomation\AS411\bin-en\4.7;C:\BRAutomation\AS411\bin-en\4.6;C:\BRAutomation\AS411\bin-en\4.5;C:\BRAutomation\AS411\bin-en\4.4;C:\BRAutomation\AS411\bin-en\4.3;C:\BRAutomation\AS411\bin-en\4.2;C:\BRAutomation\AS411\bin-en\4.1;C:\BRAutomation\AS411\bin-en\4.0;C:\BRAutomation\AS411\bin-en
export AS_BUILD_MODE := Rebuild
export AS_VERSION := 4.11.2.75
export AS_WORKINGVERSION := 4.11
export AS_COMPANY_NAME :=  
export AS_USER_NAME := josea
export AS_PATH := C:/BRAutomation/AS411
export AS_BIN_PATH := C:/BRAutomation/AS411/bin-en
export AS_PROJECT_PATH := C:/Proyectos/ProyectosBR/proyectoDardos
export AS_PROJECT_NAME := proyectoDardos
export AS_SYSTEM_PATH := C:/BRAutomation/AS/System
export AS_VC_PATH := C:/BRAutomation/AS411/AS/VC
export AS_TEMP_PATH := C:/Proyectos/ProyectosBR/proyectoDardos/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Proyectos/ProyectosBR/proyectoDardos/Binaries
export AS_GNU_INST_PATH := C:/BRAutomation/AS411/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BRAutomation/AS411/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BRAutomation/AS411/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BRAutomation/AS411/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BRAutomation/AS411
export WIN32_AS_PATH := "C:\BRAutomation\AS411"
export WIN32_AS_BIN_PATH := "C:\BRAutomation\AS411\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Proyectos\ProyectosBR\proyectoDardos"
export WIN32_AS_SYSTEM_PATH := "C:\BRAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BRAutomation\AS411\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Proyectos\ProyectosBR\proyectoDardos\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Proyectos\ProyectosBR\proyectoDardos\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BRAutomation\AS411\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BRAutomation\AS411"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/proyectoDardos.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Rebuild'   

