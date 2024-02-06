######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Palette.vcr
VCCFLAGS_VisuDa=-server -proj VisuDa -vc '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.72.5
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.72.5/SG4
VCOBJECT_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_VisuDa=$(AS_CPU_PATH)/VisuDa.br
OBJ_SCOPE_VisuDa=Visu
PRJ_PATH_VisuDa=$(AS_PROJECT_PATH)
SRC_PATH_VisuDa=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_VisuDa)/VisuDardos
TEMP_PATH_VisuDa=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuDa
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_VisuDa=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_VisuDa=$(TEMP_PATH_VisuDa)/libraries.vci
VC_XREF_BUILDFILE_VisuDa=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_VisuDa=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_VisuDa)/cpuhwc.vci'
VC_STATIC_OPTIONS_VisuDa='$(TEMP_PATH_VisuDa)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_VisuDa.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_VisuDa=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_VisuDa='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_VisuDa=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)'
BDRFLAGS_VisuDa=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)'

# Local Libs
LIB_LOCAL_OBJ_VisuDa=$(TEMP_PATH_VisuDa)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_VisuDa=$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuDa/dis.Hardware.vco
PANEL_HW_VCI_VisuDa=$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VisuDa/dis.Hardware.vci
PANEL_HW_SOURCE_VisuDa=C:/Proyectos/ProyectosBR/proyectoDardos/Physical/Config1/Hardware.hw 
DIS_OBJECTS_VisuDa=$(PANEL_HW_OBJECT_VisuDa) $(KEYMAP_OBJECTS_VisuDa)

# KeyMapping flags
$(TEMP_PATH_VisuDa)/dis.PS2-Keyboard.vco: $(AS_PROJECT_PATH)/Physical/Config1/4PPC70_0702_23B/VC/PS2-Keyboard.dis $(PANEL_HW_SOURCE_VisuDa)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_VisuDa)' -o '$(subst .vco,.vci,$(TEMP_PATH_VisuDa)/dis.PS2-Keyboard.vco)' -n VisuDardos -d VisuDa -pal '$(PALFILE_VisuDa)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.92' -L 'visapi: V*' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_VisuDa) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/Config1/4PPC70_0702_23B/VC/PS2-Keyboard.dis' -fp '$(AS_VC_PATH)/Firmware/V4.72.5/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'proyectoDardos' -sfas -vcob '$(VCOBJECT_VisuDa)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_VisuDa)' $(VCCFLAGS_VisuDa) -p VisuDa -sfas

KEYMAP_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Physical/Config1/4PPC70_0702_23B/VC/4PPC70_0702_23B.dis $(AS_PROJECT_PATH)/Physical/Config1/4PPC70_0702_23B/VC/PS2-Keyboard.dis 
KEYMAP_OBJECTS_VisuDa=$(TEMP_PATH_VisuDa)/dis.PS2-Keyboard.vco 

# All Source Objects
TXTGRP_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpButtons_PageTexts.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/ShiftGroup.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpAuditEventTextSetup.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpAuditUserDefinedEvent.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/GameConfiguration.txtgrp 

FNINFO_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpButton.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpDefault.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpHeader2.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpHeader.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpHtml_SDM.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpInfo.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpInput.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpMenuButtons.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpPads.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Fonts/MpPackMLStateNames.fninfo 

BMINFO_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_BypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_NotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Quit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackTransparent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundWVGA_Logo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxOrange.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameInvisible.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpGroupControl.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAudit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpData.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFile.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackML.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipe.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Config.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Diagnostics.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Home.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderCenterless.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactiveCenterless.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lowerPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lower.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numericPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upperPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upper.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lowerPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lower.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numericPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upperPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upper.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderLeft.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_3rdPartyEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CustomEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_UserEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_VC4Event.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Alarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_Off.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_On.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_BMP.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_CSV.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_Cancel.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_DOC.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FILE.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FOLDER.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_HTML.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_JPG.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_OK.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_TXT.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XLS.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XML.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserEdit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserGroupEdit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_clock_stop.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundSemiTransparent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_selected_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_unselected_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_error.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_bottom.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_bottom.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_press_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_off.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_on.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_selected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_unselected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_ready.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi_press.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_gray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameHeader.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_mapp.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmX.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCom.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergy.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpHeat.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOee.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeX.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindle.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeach.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrend.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXs.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLogoTransparent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowDown.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowUp.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowLeft.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowRight.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBorderSlider09x09.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_ActiveWarning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAuditClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxisClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc2Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc3Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpComClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDataClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta3Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta4Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergyClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFileClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackMLClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeXClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara2Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara4Click.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindleClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeachClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrendClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXsClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinderClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpClickMe.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_Main.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_PDF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Inactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTimeline.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeList.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTrend.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi_press.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi_pres.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend_64x64.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList_64x64.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline_64x64.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete_locked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_UNKOWN.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER4.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER5.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER6.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER7.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER8.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER9.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER10.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Add.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Copy.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Cut.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Delete.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Replace.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Export.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Generate.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Import.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Insert.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveDown.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveUp.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Paste.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaError.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaOK.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_History.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListDetail.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_List.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_QuitAll.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistoryClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistory.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameCenter.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameLeft.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameRight.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorderActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_even.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_selected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_odd.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListHistory.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_top.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_top.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_LowerLimit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_NoLimit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderSlim.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeCore.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_DevBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MaxBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MeanBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MinBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_RangeBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserXClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_Backtrace.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_off.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_on.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSafetyXClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTweetClick.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown_Orange.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_AlarmEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_PackMLEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_RecipeEvents.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_TweetEvent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mappSERVICES_logo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundWVGA_NoLogo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundSilverGold.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dcVSmarvel800x480.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/reparar50x50.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/trofeo50x50.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dardos50x50.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mundo50x50.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa50x50.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/AutomationHelp.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/Delete.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/TpuFunctionBlockMode.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa40x40.bminfo 

BMGRP_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmAcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAuditEventsID.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpFileIcons.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpPads.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpUserIcons.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpIcons.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpIconsClick.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAuditCheckbox.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpPMLStatesGraphics.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpComFacilitiesEnum.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpComSeveritiesEnum.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpTeachIcons.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpUserCriteriaCheck.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmXHistoryStates.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmXStates.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpListbox.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpDataLimitViolation.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpBorders.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/CommonLayer.bmgrp 

PAGE_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P10_Setup.page \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P20_SDM.page \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P00_Home.page \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P100_screenSaver.page 

LAYER_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpPageControl.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpBackground.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpOeeControl.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpUserXSignMessageBox.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpUserXSign.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/CommonLayer.layer 

VCS_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/StyleSheets/Color.vcs \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/StyleSheets/mapp.vcs 

BDR_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_AttentionOff.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_AttentionOn.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Device_Select_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Device_Unselect_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_FrameInvisible.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorderDown.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_MoveOff.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_MoveOn.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Control.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Control_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_KeyRingOff.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_KeyRingOn.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Dwn_press.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Up_press.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_CheckBox_checked.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_GroupControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_InputBorderInactive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_InputBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_OutputBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SunkenNG.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scoll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scoll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SunkenNGgray.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SliderBorder09.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_PackML_States.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_Multi.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_Multi_pres.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_Multi.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_Multi_pr.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointUnselectedEven.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointUnselectedOdd.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxCenter.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxLeft.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxRight.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointSelected.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_BitmapFrame.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorderSlim.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_RangeBar.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabSelect.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabUnSelect.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataDevBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMaxBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMeanBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMinBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataRangeBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataNameFrame.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Safety_ACK_off.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Safety_ACK_on.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorder_Orange.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/BorderGold.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Home.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Dardos.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Mundo.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Equis.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Trofeo.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Reparar.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Background.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Frame.bdr 

TPR_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpNavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpNumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpAlphaPad.tpr 

TDC_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/TrendData.tdc 

TRD_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Availability.trd \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_OEE.trd \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Performance.trd \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Quality.trd 

TRE_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI.tre 

CLM_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/ColorMaps/MpPMLStateColors.clm \
	$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/ColorMaps/MpEnergyChartData.clm 

PRC_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Processes/Process_1.prc 

VCVK_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/VirtualKeys.vcvk 

VCR_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_VisuDa=$(TEMP_PATH_VisuDa)/vcrt.vco
VCR_SOURCE_VisuDa=$(SRC_PATH_VisuDa)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_VisuDa): $(PANEL_HW_SOURCE_VisuDa) $(VC_LIBRARY_LIST_VisuDa) $(KEYMAP_SOURCES_VisuDa) $(PALFILE_VisuDa)
	$(VCHWPP) -f '$<' -o '$@' -n VisuDardos -d VisuDa -pal '$(PALFILE_VisuDa)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.92' -L 'visapi: V*' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_VisuDa) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.72.5/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'proyectoDardos' -vcob '$(VCOBJECT_VisuDa)'

$(PANEL_HW_OBJECT_VisuDa): $(PANEL_HW_VCI_VisuDa) $(VC_LIBRARY_LIST_VisuDa)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_VisuDa)' $(VCCFLAGS_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


# Pages
PAGE_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/page., $(notdir $(PAGE_SOURCES_VisuDa:.page=.vco)))

$(TEMP_PATH_VisuDa)/page.P10_Setup.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P10_Setup.page $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuDa)/StyleSheets/Color.vcs' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/page.P20_SDM.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P20_SDM.page $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuDa)/StyleSheets/Color.vcs' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/page.P00_Home.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P00_Home.page $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuDa)/StyleSheets/Color.vcs' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/page.P100_screenSaver.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Pages/P100_screenSaver.page $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_VisuDa)/StyleSheets/Color.vcs' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/vcs., $(notdir $(VCS_SOURCES_VisuDa:.vcs=.vco)))

$(TEMP_PATH_VisuDa)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/vcs.mapp.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/StyleSheets/mapp.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/layer., $(notdir $(LAYER_SOURCES_VisuDa:.layer=.vco)))

$(TEMP_PATH_VisuDa)/layer.MpPageControl.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpPageControl.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/layer.MpBackground.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpBackground.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/layer.MpOeeControl.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpOeeControl.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/layer.MpUserXSignMessageBox.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpUserXSignMessageBox.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/layer.MpUserXSign.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/MpUserXSign.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/layer.CommonLayer.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Layers/CommonLayer.layer $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -ds $(DEFAULT_STYLE_SHEET_VisuDa) -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/vcvk., $(notdir $(VCVK_SOURCES_VisuDa:.vcvk=.vco)))

$(TEMP_PATH_VisuDa)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas

$(VCVK_OBJECTS_VisuDa): $(VC_LANGUAGES_VisuDa)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/tpr., $(notdir $(TPR_SOURCES_VisuDa:.tpr=.vco)))

$(TEMP_PATH_VisuDa)/tpr.MpNavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpNavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -prj 'C:/Proyectos/ProyectosBR/proyectoDardos/Logical/Visu/VisuDardos' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/tpr.MpNumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpNumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -prj 'C:/Proyectos/ProyectosBR/proyectoDardos/Logical/Visu/VisuDardos' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/tpr.MpAlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TouchPads/MpAlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa) -prj 'C:/Proyectos/ProyectosBR/proyectoDardos/Logical/Visu/VisuDardos' -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Touch Pads END




# Text Groups
TXTGRP_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/txtgrp., $(notdir $(TXTGRP_SOURCES_VisuDa:.txtgrp=.vco)))

$(TEMP_PATH_VisuDa)/txtgrp.MpButtons_PageTexts.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpButtons_PageTexts.txtgrp $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/txtgrp.ShiftGroup.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/ShiftGroup.txtgrp $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/txtgrp.MpAuditEventTextSetup.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpAuditEventTextSetup.txtgrp $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/txtgrp.MpAuditUserDefinedEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/MpAuditUserDefinedEvent.txtgrp $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/txtgrp.GameConfiguration.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/TextGroups/GameConfiguration.txtgrp $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Text Groups END




# BitmapGroups
BMGRP_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/bmgrp., $(notdir $(BMGRP_SOURCES_VisuDa:.bmgrp=.vco)))

$(TEMP_PATH_VisuDa)/bmgrp.MpAlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmAcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpAuditEventsID.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAuditEventsID.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpFileIcons.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpFileIcons.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpPads.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpPads.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpUserIcons.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpUserIcons.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpIcons.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpIcons.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpIconsClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpIconsClick.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpAuditCheckbox.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAuditCheckbox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpPMLStatesGraphics.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpPMLStatesGraphics.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpComFacilitiesEnum.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpComFacilitiesEnum.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpComSeveritiesEnum.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpComSeveritiesEnum.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpTeachIcons.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpTeachIcons.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpUserCriteriaCheck.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpUserCriteriaCheck.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpAlarmXHistoryStates.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmXHistoryStates.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpAlarmXStates.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpAlarmXStates.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpListbox.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpListbox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpDataLimitViolation.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpDataLimitViolation.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.MpBorders.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/MpBorders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bmgrp.CommonLayer.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/BitmapGroups/CommonLayer.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/bminfo., $(notdir $(BMINFO_SOURCES_VisuDa:.bminfo=.vco)))

$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_AcknowledgeReset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_BypassON.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_BypassON.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_BypassON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_NotQuit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_NotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_NotQuit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_Quit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Quit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Quit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_ResetAcknowledge.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBackTransparent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackTransparent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackTransparent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBackgroundWVGA_Logo.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundWVGA_Logo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundWVGA_Logo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpCheckBoxGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpCheckBoxOrange.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxOrange.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckBoxOrange.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFrameInvisible.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameInvisible.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameInvisible.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpGroupControl.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpGroupControl.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpGroupControl.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarm.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarm.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAudit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAudit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAudit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAxis1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpCnc1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpData.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpData.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpData.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpDelta1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpFile.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFile.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFile.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpPackML.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackML.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackML.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRecipe.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipe.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipe.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUser.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpImg_Config.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Config.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Config.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpImg_Diagnostics.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Diagnostics.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Diagnostics.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpImg_Home.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Home.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Home.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpImg_Warning.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Warning.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_Warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpInputBorderCenterless.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderCenterless.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderCenterless.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpInputBorderInactiveCenterless.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactiveCenterless.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactiveCenterless.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpInputBorderInactive.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactive.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorderInactive.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpInputBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpInputBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_lowerPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lowerPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lowerPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_lower.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lower.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_lower.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_numeric2Pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2Pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2Pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_numeric2.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_numericPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numericPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numericPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_numeric.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_numeric.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_upperPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upperPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upperPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_AlphaPad_upper.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upper.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_AlphaPad_upper.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_lowerPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lowerPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lowerPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_lower.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lower.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_lower.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_numeric2Pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2Pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2Pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_numeric2.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_numericPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numericPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numericPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_numeric.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_numeric.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_upperPressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upperPressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upperPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_EditPad_upper.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upper.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_EditPad_upper.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadHor_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_ListPadVer_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_Numpad.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpKey_Numpad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpKey_Numpad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLabelBorderDown.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLabelBorderLeft.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderLeft.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderLeft.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLabelBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_3rdPartyEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_3rdPartyEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_3rdPartyEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_CustomEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CustomEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CustomEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_UserEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_UserEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_UserEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_VC4Event.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_VC4Event.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_VC4Event.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAxis_Alarm.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Alarm.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Alarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAxis_Gear_Off.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_Off.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_Off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAxis_Gear_On.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_On.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Gear_On.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAxis_Warning.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Warning.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAxis_Warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_BMP.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_BMP.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_BMP.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_CSV.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_CSV.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_CSV.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_Cancel.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_Cancel.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_Cancel.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_DOC.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_DOC.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_DOC.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_FILE.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FILE.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FILE.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_FOLDER.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FOLDER.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_FOLDER.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_HTML.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_HTML.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_HTML.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_JPG.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_JPG.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_JPG.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_OK.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_OK.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_OK.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_TXT.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_TXT.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_TXT.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_XLS.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XLS.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XLS.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_XML.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XML.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_XML.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Exit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Exit_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Exit_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Export.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Export_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Export_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Import.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_Import_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_Import_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_UserEdit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserEdit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserEdit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_UserGroupEdit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserGroupEdit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_UserGroupEdit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_add.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_add_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_add_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_clock_stop.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_clock_stop.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_clock_stop.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_delete.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_delete_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_delete_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_edit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_edit_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_edit_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_lock.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_lock_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_lock_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_edit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_edit_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_edit_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_pw_change.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_pw_change_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_pw_change_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOutputBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpProgressBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBackgroundSemiTransparent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundSemiTransparent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundSemiTransparent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpSlider_BallGray_small.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray_small.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_control.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_control_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_control_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_decrease.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_decrease_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_decrease_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_default.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_default_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_default_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_device_selected_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_selected_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_selected_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_device_unselected_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_unselected_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_device_unselected_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_error.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_error.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_error.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_bottom.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_bottom.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_bottom.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_pres_bottom.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_bottom.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_bottom.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_press_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_press_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_press_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_increase.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_increase_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_increase_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_off.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_off.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_on.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_on.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_on.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_radio_selected.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_selected.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_selected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_radio_unselected.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_unselected.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_radio_unselected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_ready.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_ready.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_ready.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_down.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_down_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_down_multi_press.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi_press.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_multi_press.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_down_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_right.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_up.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_up_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_up_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_up_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpCheckbox_small.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpCheckbox_small_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpCheckbox_small_gray.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_gray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpCheckbox_small_gray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFrameHeader.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameHeader.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFrameHeader.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_mapp.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_mapp.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_mapp.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarmX.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmX.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmX.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAxis.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpCnc.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpCom.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCom.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCom.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpDelta.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpEnergy.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergy.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergy.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpHeat.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpHeat.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpHeat.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpOee.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOee.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOee.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRecipeX.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeX.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeX.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm4.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm5.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm6.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpScara.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpScara1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpSpindle.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindle.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpTeach.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeach.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeach.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpTrend.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrend.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpWebXs.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXs.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXs.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpWinder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLogoTransparent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLogoTransparent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLogoTransparent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_ArrowDown.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowDown.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowDown.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_ArrowUp.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowUp.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowUp.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_ArrowLeft.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowLeft.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowLeft.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_ArrowRight.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowRight.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_ArrowRight.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBorderSlider09x09.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBorderSlider09x09.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBorderSlider09x09.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpSlider_BallGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSlider_BallGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpImg_ActiveWarning.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_ActiveWarning.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpImg_ActiveWarning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarmClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarmXClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAuditClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAuditClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAuditClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAxis1Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxis1Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAxisClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxisClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAxisClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpCnc2Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc2Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc2Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpCnc3Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc3Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpCnc3Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpComClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpComClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpComClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpDataClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDataClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDataClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpDelta3Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta3Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta3Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpDelta4Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta4Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpDelta4Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpEnergyClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergyClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpEnergyClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpFileClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFileClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpFileClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpOeeClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpPackMLClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackMLClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpPackMLClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRecipeClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRecipeXClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeXClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRecipeXClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm4Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm4Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm5Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm5Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpRoboArm6Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpRoboArm6Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpScara2Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara2Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara2Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpScara4Click.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara4Click.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpScara4Click.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpSpindleClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindleClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSpindleClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpTeachClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeachClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTeachClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpTrendClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrendClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTrendClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUserClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpWebXsClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXsClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWebXsClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpWinderClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinderClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpWinderClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUserClick1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUser1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUser1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpClickMe.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpClickMe.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpClickMe.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_CheckBox.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_CheckBox_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_CheckBox_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_BlueOFF.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueOFF.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueOFF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_BlueON.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueON.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_BlueON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_GreenOFF.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenOFF.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenOFF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_GreenON.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenON.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_GreenON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_Main.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_Main.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_Main.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_YellowOFF.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowOFF.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowOFF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpPackML_YellowON.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowON.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpPackML_YellowON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerUI.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_PDF.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_PDF.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_PDF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_Active.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Active.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Active.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_Inactive.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Inactive.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_Inactive.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerInformation.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerWarning.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerAlarm.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpOeeTimeline.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTimeline.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTimeline.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpOeeList.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeList.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeList.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpOeeTrend.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTrend.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpOeeTrend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_left_multi_press.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi_press.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi_press.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_left_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_left_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_right_multi_pres.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi_pres.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi_pres.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_scroll_right_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_scroll_right_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeTrend_64x64.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend_64x64.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend_64x64.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeList_64x64.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList_64x64.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList_64x64.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeTimeline_64x64.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline_64x64.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline_64x64.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeList.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeList.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeTimeline.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTimeline.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeTrend.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeTrend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_add.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_add_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_add_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_delete.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUserGroup_delete_locked.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete_locked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUserGroup_delete_locked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_UNKOWN.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_UNKOWN.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_UNKOWN.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER2.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER3.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER3.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER4.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER4.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER4.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER5.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER5.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER6.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER6.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER7.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER7.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER8.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER8.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER9.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER9.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER9.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpFile_USER10.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER10.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpFile_USER10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Add.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Add.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Add.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Copy.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Copy.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Copy.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Cut.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Cut.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Cut.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Delete.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Delete.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Delete.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Replace.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Replace.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Replace.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Export.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Export.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Export.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Generate.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Generate.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Generate.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Import.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Import.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Import.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Insert.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Insert.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Insert.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_MoveDown.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveDown.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveDown.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_MoveUp.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveUp.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_MoveUp.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Paste.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Paste.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Paste.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_CriteriaError.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaError.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaError.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpUser_CriteriaOK.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaOK.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpUser_CriteriaOK.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarmX_History.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_History.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_History.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarmX_ListDetail.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListDetail.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListDetail.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarmX_List.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_List.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_List.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarm_QuitAll.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_QuitAll.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarm_QuitAll.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarmXHistoryClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistoryClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistoryClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpAlarmXHistory.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistory.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpAlarmXHistory.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpListboxFrameCenter.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameCenter.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameCenter.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpListboxFrameLeft.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameLeft.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameLeft.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpListboxFrameRight.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameRight.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpListboxFrameRight.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOutputBorderActive.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorderActive.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOutputBorderActive.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Point_unselected_even.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_even.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_even.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Point_selected.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_selected.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_selected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpTeach_Point_unselected_odd.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_odd.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpTeach_Point_unselected_odd.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarmX_ListHistory.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListHistory.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_ListHistory.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_pres_top.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_top.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_pres_top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpButton_global_area_top.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_top.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpButton_global_area_top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_LowerLimit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_LowerLimit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_LowerLimit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_NoLimit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_NoLimit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_NoLimit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_UpperLimit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_WithinLimit.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLabelBorderSlim.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderSlim.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderSlim.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBackgroundVGA_Logo.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerAlarm_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerAlarm_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerInformation_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerInformation_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerUI_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerUI_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpComLoggerWarning_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpComLoggerWarning_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_UpperLimit_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_UpperLimit_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_WithinLimit_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_WithinLimit_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpOeeCore.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeCore.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpOeeCore.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_DevBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_DevBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_DevBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_MaxBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MaxBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MaxBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_MeanBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MeanBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MeanBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_MinBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MinBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_MinBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpData_RangeBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_RangeBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpData_RangeBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUserClick2.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserClick2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpUserXClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserXClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpUserXClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpBackgroundVGA_Logo_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpBackgroundVGA_Logo_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAlarmX_Backtrace.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_Backtrace.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAlarmX_Backtrace.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpSafetyButton_off.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_off.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpSafetyButton_on.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_on.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpSafetyButton_on.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpSafetyXClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSafetyXClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpSafetyXClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpIcon_MpTweetClick.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTweetClick.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpIcon_MpTweetClick.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpLabelBorderDown_Orange.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown_Orange.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpLabelBorderDown_Orange.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_AlarmEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_AlarmEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_PackMLEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_PackMLEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_PackMLEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_RecipeEvents.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_RecipeEvents.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_RecipeEvents.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.MpAudit_TweetEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_TweetEvent.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/MpAudit_TweetEvent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.mappSERVICES_logo.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mappSERVICES_logo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mappSERVICES_logo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/frame_header.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.BackgroundWVGA_NoLogo.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundWVGA_NoLogo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundWVGA_NoLogo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.BackgroundSilverGold.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundSilverGold.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/BackgroundSilverGold.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.dcVSmarvel800x480.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dcVSmarvel800x480.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dcVSmarvel800x480.jpg
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.reparar50x50.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/reparar50x50.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/reparar50x50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.trofeo50x50.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/trofeo50x50.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/trofeo50x50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.dardos50x50.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dardos50x50.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/dardos50x50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.mundo50x50.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mundo50x50.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/mundo50x50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.casa50x50.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa50x50.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa50x50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.AutomationHelp.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/AutomationHelp.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/AutomationHelp.ico
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.Delete.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/Delete.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/Delete.ico
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.TpuFunctionBlockMode.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/TpuFunctionBlockMode.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/TpuFunctionBlockMode.ico
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/bminfo.casa40x40.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa40x40.bminfo $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Bitmaps/casa40x40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Bitmaps END




# Trend Configuration
TRE_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/tre., $(notdir $(TRE_SOURCES_VisuDa:.tre=.vco)))

$(TEMP_PATH_VisuDa)/tre.MpOeeTrendUI.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI.tre
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Trend Configuration END




# Trend Data
TRD_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/trd., $(notdir $(TRD_SOURCES_VisuDa:.trd=.vco)))

$(TEMP_PATH_VisuDa)/trd.MpOeeTrendUI_Availability.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Availability.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/trd.MpOeeTrendUI_OEE.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_OEE.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/trd.MpOeeTrendUI_Performance.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Performance.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/trd.MpOeeTrendUI_Quality.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/MpOeeTrendUI_Quality.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Trend Data END




# Trend Data Configuration
TDC_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/tdc., $(notdir $(TDC_SOURCES_VisuDa:.tdc=.vco)))

$(TEMP_PATH_VisuDa)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Trend Data Configuration END




# ColorMap Table
CLM_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/clm., $(notdir $(CLM_SOURCES_VisuDa:.clm=.vco)))

$(TEMP_PATH_VisuDa)/clm.MpPMLStateColors.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/ColorMaps/MpPMLStateColors.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


$(TEMP_PATH_VisuDa)/clm.MpEnergyChartData.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/ColorMaps/MpEnergyChartData.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#ColorMap Table END




# Process
PRC_OBJECTS_VisuDa = $(addprefix $(TEMP_PATH_VisuDa)/prc., $(notdir $(PRC_SOURCES_VisuDa:.prc=.vco)))

$(TEMP_PATH_VisuDa)/prc.Process_1.vco: $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Processes/Process_1.prc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_VisuDa)' $(VCCFLAGS_VisuDa)  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas


#Process END


#
# Borders
#
BDR_SOURCES_VisuDa=$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_AttentionOff.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_AttentionOn.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Device_Select_Left.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Device_Unselect_Left.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_FrameInvisible.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorderDown.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_MoveOff.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_MoveOn.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabActive.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Control.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Control_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_KeyRingOff.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_KeyRingOn.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Dwn_press.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Multi_Scroll_Up_press.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_CheckBox_checked.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_GroupControl.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_InputBorderInactive.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_InputBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_OutputBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SunkenNG.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scoll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scoll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SunkenNGgray.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_SliderBorder09.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_PackML_States.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_Multi.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Left_Multi_pres.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_Multi.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Scroll_Right_Multi_pr.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointUnselectedEven.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointUnselectedOdd.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxCenter.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxLeft.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_ListBoxRight.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TeachPointSelected.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_BitmapFrame.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorderSlim.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_RangeBar.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabSelect.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_TabUnSelect.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataDevBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMaxBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMeanBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataMinBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataRangeBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_DataNameFrame.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Safety_ACK_off.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_Button_Safety_ACK_on.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Mp_LabelBorder_Orange.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/BorderGold.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Home.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Dardos.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Mundo.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Equis.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Trofeo.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Reparar.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Background.bdr $(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Borders/Border_Frame.bdr 
BDR_OBJECTS_VisuDa=$(TEMP_PATH_VisuDa)/bdr.Bordermanager.vco
$(TEMP_PATH_VisuDa)/bdr.Bordermanager.vco: $(BDR_SOURCES_VisuDa)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_VisuDa)' $(BDRFLAGS_VisuDa) $(VCCFLAGS_VisuDa) -p VisuDa$(SRC_PATH_VisuDa)
#
# Logical fonts
#
$(TEMP_PATH_VisuDa)/lfnt.en.vco: $(TEMP_PATH_VisuDa)/en.lfnt $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuDa) $(VCCFLAGS_VisuDa) -p VisuDa -sfas
$(TEMP_PATH_VisuDa)/lfnt.es-MX.vco: $(TEMP_PATH_VisuDa)/es-MX.lfnt $(VC_LANGUAGES_VisuDa)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_VisuDa) $(VCCFLAGS_VisuDa) -p VisuDa -sfas
LFNT_OBJECTS_VisuDa=$(TEMP_PATH_VisuDa)/lfnt.en.vco $(TEMP_PATH_VisuDa)/lfnt.es-MX.vco 

#Runtime Object
$(VCR_OBJECT_VisuDa) : $(VCR_SOURCE_VisuDa)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl es-MX $(VCCFLAGS_VisuDa) -rt  -p VisuDa -so $(VC_STATIC_OPTIONS_VisuDa) -vcr 4725 -sfas
# Local resources Library rules
LIB_LOCAL_RES_VisuDa=$(TEMP_PATH_VisuDa)/localres.vca
$(LIB_LOCAL_RES_VisuDa) : $(TEMP_PATH_VisuDa)/VisuDa02.ccf

# Bitmap Library rules
LIB_BMP_RES_VisuDa=$(TEMP_PATH_VisuDa)/bmpres.vca
$(LIB_BMP_RES_VisuDa) : $(TEMP_PATH_VisuDa)/VisuDa03.ccf
$(BMGRP_OBJECTS_VisuDa) : $(PALFILE_VisuDa) $(VC_LANGUAGES_VisuDa)
$(BMINFO_OBJECTS_VisuDa) : $(PALFILE_VisuDa)

BUILD_FILE_VisuDa=$(TEMP_PATH_VisuDa)/BuildFiles.arg
$(BUILD_FILE_VisuDa) : BUILD_FILE_CLEAN_VisuDa $(BUILD_SOURCES_VisuDa)
BUILD_FILE_CLEAN_VisuDa:
	$(RM) /F /Q '$(BUILD_FILE_VisuDa)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_VisuDa=$(AS_CPU_PATH)/VisuDa01.br $(AS_CPU_PATH)/VisuDa02.br $(AS_CPU_PATH)/VisuDa03.br $(FONT_MODULES_VisuDa) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_VisuDa): $(PROJECT_MODULES_VisuDa) $(TEMP_PATH_VisuDa)/VisuDa.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuDa) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_VisuDa)/VisuDa.prj' -o '$@' -vc '$(VCOBJECT_VisuDa)' $(DEPENDENCIES_VisuDa) $(addprefix -d ,$(notdir $(PROJECT_MODULES_VisuDa:.br=)))

$(AS_CPU_PATH)/VisuDa01.br: $(TEMP_PATH_VisuDa)/VisuDa01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuDa) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuDa)' -f '$<' -o '$@' $(DEPENDENCIES_VisuDa)

$(AS_CPU_PATH)/VisuDa02.br: $(TEMP_PATH_VisuDa)/VisuDa02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuDa) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuDa)' -f '$<' -o '$@' $(DEPENDENCIES_VisuDa)

$(AS_CPU_PATH)/VisuDa03.br: $(TEMP_PATH_VisuDa)/VisuDa03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_VisuDa) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_VisuDa)' -f '$<' -o '$@' $(DEPENDENCIES_VisuDa)

# General Build rules END
$(LIB_LOCAL_OBJ_VisuDa) : $(TEMP_PATH_VisuDa)/VisuDa01.ccf

# Main Module
$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuDa.vcm:
$(TEMP_PATH_VisuDa)/VisuDa.prj: $(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuDa.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuDa.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_VisuDa) -o VisuDa -proj VisuDa
	$(VCPL) $(notdir $(PROJECT_MODULES_VisuDa:.br=,4)) VisuDa,2 -o '$@' -p VisuDa -vc 'VisuDa' -verbose 'False' -fl '$(TEMP_PATH_ROOT_VisuDa)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VisuDa.vcm' -vcr '$(VCR_SOURCE_VisuDa)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_VisuDa=$(TEMP_PATH_VisuDa)\VisuDa01.ccf.lfl
$(TEMP_PATH_VisuDa)/VisuDa01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuDa) $(TEMP_PATH_VisuDa)/VisuDa03.ccf $(LIB_LOCAL_RES_VisuDa) $(TEMP_PATH_VisuDa)/VisuDa02.ccf $(DIS_OBJECTS_VisuDa) $(PAGE_OBJECTS_VisuDa) $(VCS_OBJECTS_VisuDa) $(VCVK_OBJECTS_VisuDa) $(VCRT_OBJECTS_VisuDa) $(TPR_OBJECTS_VisuDa) $(TXTGRP_OBJECTS_VisuDa) $(LAYER_OBJECTS_VisuDa) $(VCR_OBJECT_VisuDa) $(TDC_OBJECTS_VisuDa) $(TRD_OBJECTS_VisuDa) $(TRE_OBJECTS_VisuDa) $(PRC_OBJECTS_VisuDa) $(SCR_OBJECTS_VisuDa)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_VisuDa)" DEL /F /Q "$(DEL_TARGET01_LFL_VisuDa)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuDa)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_VisuDa)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TEMP_PATH_VisuDa)/tre.MpOeeTrendUI.vco' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TEMP_PATH_VisuDa)/prc.Process_1.vco' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuDa -lib '$(LIB_LOCAL_OBJ_VisuDa)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4725 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_VisuDa=$(TEMP_PATH_VisuDa)\VisuDa02.ccf.lfl
$(TEMP_PATH_VisuDa)/VisuDa02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_VisuDa) $(TEMP_PATH_VisuDa)/VisuDa03.ccf $(BDR_OBJECTS_VisuDa) $(LFNT_OBJECTS_VisuDa) $(CLM_OBJECTS_VisuDa)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_VisuDa)" DEL /F /Q "$(DEL_TARGET02_LFL_VisuDa)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_VisuDa)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_VisuDa:.vco=.vco|)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuDa -lib '$(LIB_LOCAL_RES_VisuDa)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4725 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_VisuDa=$(TEMP_PATH_VisuDa)\VisuDa03.ccf.lfl
$(TEMP_PATH_VisuDa)/VisuDa03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_VisuDa) $(BMINFO_OBJECTS_VisuDa) $(PALFILE_VisuDa)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_VisuDa)" DEL /F /Q "$(DEL_TARGET03_LFL_VisuDa)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Visu/VisuDardos/Package.vcp' -temp '$(TEMP_PATH_VisuDa)' -prj '$(PRJ_PATH_VisuDa)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p VisuDa -lib '$(LIB_BMP_RES_VisuDa)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4725 -sfas
# 03 Module END

