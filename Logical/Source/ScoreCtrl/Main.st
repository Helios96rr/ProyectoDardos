
PROGRAM _INIT
	actualRadius := 1;
	maxCountPointValue 	:= 1000;
	maxShots 			:= 10;
	
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

	
	IF gMainCtrl.visapiCtrl.status.touchCoordinateX >= MIN_X_COORDINATE AND (gMainCtrl.visapiCtrl.status.touchCoordinateX <= MAX_X_COORDINATE)
		AND (gMainCtrl.visapiCtrl.status.touchCoordinateY >= MIN_Y_COORDINATE) AND (gMainCtrl.visapiCtrl.status.touchCoordinateY <= MAX_Y_COORDINATE) THEN
		validCoordenate := TRUE;
	ELSE
		validCoordenate := FALSE;
	END_IF; 
	

	CASE gMainCtrl.scoreCtrl.state OF
		

		WAIT_SCORE:

			IF EDGEPOS(newTouch) THEN
				IF (intRatio < gMainCtrl.visapiCtrl.status.widthRect) THEN
			(*	IF (intRatio < gMainCtrl.visapiCtrl.status.widthRect/2) THEN*)
					addPointsReady	:= TRUE;
					gMainCtrl.scoreCtrl.state	 := GET_SCORE;
				END_IF;
			END_IF;
			
		GET_SCORE:
	
			IF remainingShots <= (maxShots-1) AND addPointsReady AND (countPointValue < maxCountPointValue) AND validCoordenate THEN
				IF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[2]/2)  THEN 
					addPointsReady := FALSE;
					countPointValue := countPointValue + gMainCtrl.scoreCtrl.status.additivePoint[7];
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[2]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2)  THEN 
					addPointsReady := FALSE;
					countPointValue := countPointValue + gMainCtrl.scoreCtrl.status.additivePoint[6];
//					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[6];
//					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[5];
					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[4];
					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[3];
					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					addPointsReady := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[2];
					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					addPointsReady := FALSE;
					pointValue := gMainCtrl.scoreCtrl.status.additivePoint[1];
					countPointValue := countPointValue + pointValue;
				ELSIF (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) AND (addPointsReady) AND (remainingShots <= (maxShots-1)) THEN
					addPointsReady 	:= FALSE;
//					pointValue 		:= 0;
//					countPointValue := countPointValue + pointValue;
				END_IF;
				
				(*countPointValue := countPointValue + pointValue;*)
				remainingShots := remainingShots + 1;
				
			END_IF;
		
		
			IF EDGENEG(newTouch) THEN
				gMainCtrl.scoreCtrl.state	 := WAIT_SCORE;	
			END_IF;	
				
	
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
			(* Insert code here *)
	 
END_PROGRAM

