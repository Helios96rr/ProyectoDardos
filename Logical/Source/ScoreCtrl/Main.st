
PROGRAM _INIT
	actualRadius := 1;	
	gMainCtrl.scoreCtrl.status.additivePoint[1] := 100;
	gMainCtrl.scoreCtrl.status.additivePoint[2] := 80;
	gMainCtrl.scoreCtrl.status.additivePoint[3] := 60;
	gMainCtrl.scoreCtrl.status.additivePoint[4] := 40;
	gMainCtrl.scoreCtrl.status.additivePoint[5] := 20;
	gMainCtrl.scoreCtrl.status.additivePoint[6] := 10;
	gMainCtrl.scoreCtrl.status.additivePoint[7] := 5;
	
END_PROGRAM

PROGRAM _CYCLIC
	homeXCoordenate := (gMainCtrl.visapiCtrl.status.homeXCoordenate);
	homeYCoordenate	:= (gMainCtrl.visapiCtrl.status.homeYCoordenate);
	newTouch		:= 	gMainCtrl.visapiCtrl.status.touchCoordinateStatus;
	
	firstProduct 	:= ABS(homeXCoordenate - gMainCtrl.visapiCtrl.status.touchCoordinateX);
	secondProduct	:= ABS(homeYCoordenate - gMainCtrl.visapiCtrl.status.touchCoordinateY);
	ratio := SQRT(EXPT(firstProduct,EXPONENT)+(EXPT(secondProduct,EXPONENT)));
	intRatio := REAL_TO_INT(ratio);
	
		
	IF restorePointValues THEN
		gMainCtrl.scoreCtrl.status.additivePoint[1] := 10;
		gMainCtrl.scoreCtrl.status.additivePoint[2] := 20;
		gMainCtrl.scoreCtrl.status.additivePoint[3] := 30;
		gMainCtrl.scoreCtrl.status.additivePoint[4] := 10;
		gMainCtrl.scoreCtrl.status.additivePoint[5] := 10;
		gMainCtrl.scoreCtrl.status.additivePoint[6] := 10;
		gMainCtrl.scoreCtrl.status.additivePoint[7] := 10;
	END_IF;
	
	
	///// AJUSTES DE PUNTAJE PARA CADA CIRCUNFERENCIA
	IF (actualRadius >= 1) AND (actualRadius <7) THEN
		IF EDGEPOS(nextRadius) THEN
			actualRadius:= actualRadius + 1;
		END_IF;
	END_IF;
	IF (actualRadius > 1) AND (actualRadius <= 7) THEN
		IF EDGEPOS(previusRadius) THEN
			actualRadius:= actualRadius - 1;	
		END_IF;
	END_IF;


	IF actualRadius = 1 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[1] := addivePoint;
	ELSIF actualRadius = 2 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[2] := addivePoint;
	ELSIF actualRadius = 3 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[3] := addivePoint;
	ELSIF actualRadius = 4 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[4] := addivePoint;
	ELSIF actualRadius = 5 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[5] := addivePoint;
	ELSIF actualRadius = 6 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[6] := addivePoint;
	ELSIF actualRadius = 7 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.scoreCtrl.status.additivePoint[7] := addivePoint;
	END_IF;

	
	IF	gMainCtrl.visapiCtrl.status.valitTouch THEN
		validCoordenate := TRUE;
	ELSE
		validCoordenate := FALSE;
	END_IF; 
	

	CASE gMainCtrl.scoreCtrl.state OF
		

		WAIT_SCORE:

			IF EDGEPOS(newTouch) THEN
				IF (intRatio < gMainCtrl.visapiCtrl.status.widthRect) THEN
					gMainCtrl.scoreCtrl.cmd.addPointScore := TRUE;
					gMainCtrl.scoreCtrl.state	 := GET_SCORE;
				END_IF;
			END_IF;
			
		GET_SCORE:
				
			IF gMainCtrl.scoreCtrl.status.cumulateShots <= (MAX_SHOTS-1) AND gMainCtrl.scoreCtrl.cmd.addPointScore AND (gMainCtrl.scoreCtrl.status.cumulateScore < MAX_SCORE) AND validCoordenate THEN
				IF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[2]/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore  + gMainCtrl.scoreCtrl.status.additivePoint[7];
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[2]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + gMainCtrl.scoreCtrl.status.additivePoint[6];
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[5];
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[4];
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[3];
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[2];
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[1];
					gMainCtrl.scoreCtrl.status.cumulateScore := gMainCtrl.scoreCtrl.status.cumulateScore + pointValue;
				ELSIF (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) AND (gMainCtrl.scoreCtrl.cmd.addPointScore )(* AND (gMainCtrl.scoreCtrl.status.cumulateShots <= (MAX_SHOTS-1))*) THEN
					gMainCtrl.scoreCtrl.cmd.addPointScore := FALSE;
				END_IF;
				
				gMainCtrl.scoreCtrl.status.cumulateShots := gMainCtrl.scoreCtrl.status.cumulateShots + 1;
				
				
			END_IF;
			
			IF 	intRatio > (gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) THEN
				gMainCtrl.scoreCtrl.status.incorrectScore := TRUE;
				gMainCtrl.scoreCtrl.status.correctScore := FALSE;
			ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) THEN
				gMainCtrl.scoreCtrl.status.correctScore := TRUE;
				gMainCtrl.scoreCtrl.status.incorrectScore := FALSE;
			END_IF
			
		
			IF EDGENEG(newTouch) THEN
				gMainCtrl.scoreCtrl.state	 := WAIT_SCORE;	
			END_IF;	
				
	
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
			(* Insert code here *)
	 
END_PROGRAM

