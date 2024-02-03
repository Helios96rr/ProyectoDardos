<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="VisuCtrl" Source="Visu.VisuCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PlayersCtr" Source="Source.PlayersCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ScoreCtrl" Source="Source.ScoreCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <VcDataObjects>
    <VcDataObject Name="VisuDa" Source="Visu.VisuDardos.dob" Memory="UserROM" Language="Vc" WarningLevel="2" />
  </VcDataObjects>
  <Libraries>
    <LibraryObject Name="visapi" Source="Libraries.visapi.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="binary" Debugging="true" />
  </Libraries>
</SwConfiguration>