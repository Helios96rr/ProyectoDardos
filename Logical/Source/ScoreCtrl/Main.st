
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	homeXCoordenate := (gMainCtrl.visapiCtrl.status.homeXCoordenate);
	homeYCoordenate	:= (gMainCtrl.visapiCtrl.status.homeYCoordenate);
	newTouch		:= 	gMainCtrl.visapiCtrl.status.touchCoordinateStatus;
	
	firstProduct 	:= ABS(homeXCoordenate - gMainCtrl.visapiCtrl.status.touchCoordinateX);
	secondProduct	:= ABS(homeYCoordenate - gMainCtrl.visapiCtrl.status.touchCoordinateY);
	ratio := SQRT(EXPT(firstProduct,EXPONENT)+(EXPT(secondProduct,EXPONENT)));
	intRatio := REAL_TO_INT(ratio);
		
	
	
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
					pointValue := 10;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[2]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 20;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[3]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 30;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[4]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 40;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[5]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 50;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthEllipse[6]/2) AND (intRatio > gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 50;
				ELSIF (intRatio <= gMainCtrl.visapiCtrl.status.heigthTarget/2)  THEN 
					addPointsReady := FALSE;
					pointValue := 70;
				ELSIF (intRatio > gMainCtrl.visapiCtrl.status.heigthEllipse[1]/2) AND (addPointsReady) AND (remainingShots <= (maxShots-1)) THEN
					addPointsReady 	:= FALSE;
					pointValue 		:= 0;
		
				END_IF;
				
				countPointValue := countPointValue + pointValue;
				oldPointValue := pointValue;
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

