
PROGRAM _INIT

	
END_PROGRAM

PROGRAM _CYCLIC


	
	IF gMainCtrl.scoreCtrl.status.cumulateScore >= MAX_SCORE THEN 
		IF gMainCtrl.scoreCtrl.status.cumulateShots <= MAX_SHOTS THEN
			gVisuCtrl.textOutput.statusGame := 1;
		ELSE
			gVisuCtrl.textOutput.statusGame	:= 2;
		END_IF;
	END_IF;	
		
	IF gMainCtrl.scoreCtrl.status.cumulateShots >= MAX_SHOTS THEN
		IF gMainCtrl.scoreCtrl.status.cumulateScore >= MAX_SCORE THEN
			gVisuCtrl.textOutput.statusGame := 1;
		ELSE
			gVisuCtrl.textOutput.statusGame	:= 2;
		END_IF;
	END_IF;
	
	IF gMainCtrl.scoreCtrl.status.cumulateScore <= MAX_SCORE AND gMainCtrl.scoreCtrl.status.cumulateShots < MAX_SHOTS THEN
		gVisuCtrl.textOutput.statusGame := 0;
	END_IF;
	
	IF gVisuCtrl.button.startNewGame THEN
		gMainCtrl.scoreCtrl.status.cumulateScore := 0;
		gMainCtrl.scoreCtrl.status.cumulateShots := 0;
	END_IF;
		
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

