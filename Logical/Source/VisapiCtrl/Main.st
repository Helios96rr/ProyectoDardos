
PROGRAM _INIT	
	//Inicialización de circunferencias
	gMainCtrl.visapiCtrl.status.heigthEllipse[1] := 330;
	gMainCtrl.visapiCtrl.status.heigthEllipse[2] := 280;
	gMainCtrl.visapiCtrl.status.heigthEllipse[3] := 230;
	gMainCtrl.visapiCtrl.status.heigthEllipse[4] := 180;
	gMainCtrl.visapiCtrl.status.heigthEllipse[5] := 130;
	gMainCtrl.visapiCtrl.status.heigthEllipse[6] := 80;
	gMainCtrl.visapiCtrl.status.heigthTarget	 := 40;
	heigthTarget	 := 30;
	xTouchPosition;
	yTouchPosition;
	actualRadius := 1;
END_PROGRAM

PROGRAM _CYCLIC
	
	FOR j:= 1 TO MAX_RADIUS DO
		heigthEllipse[j] := gMainCtrl.visapiCtrl.status.heigthEllipse[j];
		widthEllipse[j] := gMainCtrl.visapiCtrl.status.widthEllipse[j];	
	END_FOR;	
	
	//CORDENADAS, ALTO Y ANCHO DE LOS RECTANGULOS QUE DIVIDEN EL TABLERO
	xRect[2]:= ((widthRect[1]/2)-(gMainCtrl.visapiCtrl.status.widthEllipse[1]/2))+ LEFT_OFFSET;
	yRect[3]:=((heigthRect[1]/2)-(gMainCtrl.visapiCtrl.status.widthEllipse[1]/2))+ TOP_OFFSET;
	widthRect[2] := gMainCtrl.visapiCtrl.status.widthEllipse[1];
	heigthRect[3] := gMainCtrl.visapiCtrl.status.widthEllipse[1]; 
	widthTarget	:= heigthTarget;
	
	IF defaultRadiusValues THEN
		gMainCtrl.visapiCtrl.status.heigthEllipse[1] := 330;
		gMainCtrl.visapiCtrl.status.heigthEllipse[2] := 280;
		gMainCtrl.visapiCtrl.status.heigthEllipse[3] := 230;
		gMainCtrl.visapiCtrl.status.heigthEllipse[4] := 180;
		gMainCtrl.visapiCtrl.status.heigthEllipse[5] := 130;
		gMainCtrl.visapiCtrl.status.heigthEllipse[6] := 80;
		gMainCtrl.visapiCtrl.status.heigthTarget	 := 40;
	END_IF;

	IF Touch.status = 1 THEN
		newTouch 	:= TRUE;
	ELSE 
		newTouch	:= FALSE;
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
		heigthTarget		:= updateRadio;
	ELSIF actualRadius = 2 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[6] := updateRadio;
	ELSIF actualRadius = 3 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[5] := updateRadio;
	ELSIF actualRadius = 4 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[4] := updateRadio;
	ELSIF actualRadius = 5 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[3] := updateRadio;
	ELSIF actualRadius = 6 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[2] := updateRadio;
	ELSIF actualRadius = 7 AND confirmValueRadius THEN
		confirmValueRadius := FALSE;
		gMainCtrl.visapiCtrl.status.heigthEllipse[1] := updateRadio;
	END_IF;
	
	
	
	

	CASE gMainCtrl.visapiCtrl.state OF

		WAIT: 
			IF ready <> 1 THEN
				VC_HANDLE := VA_Setup(1,interpreter);
				ready := 1;	
			END_IF;	
			IF  (*oldHeight <> height AND*) ready = 1 THEN
				gMainCtrl.visapiCtrl.state := DRAWING;
			END_IF;
			

		DRAWING: 
			
			
		
			IF ready = 1 AND actualPage = 0 THEN
				IF VA_Saccess(1, VC_HANDLE) = 0 THEN

					VA_Rect(1,VC_HANDLE,xRect[1],yRect[1],widthRect[1],heigthRect[1],fillRect[1],colorRect[1]);

					FOR j:= 1 TO (MAX_RADIUS) DO
						fillEllipse[j+1]	:= colorEllipse[j+1];
						gMainCtrl.visapiCtrl.status.widthEllipse[j] := gMainCtrl.visapiCtrl.status.heigthEllipse[j];
						VA_Ellipse(1,VC_HANDLE,xEllipse ,yEllipse,gMainCtrl.visapiCtrl.status.heigthEllipse[j] ,gMainCtrl.visapiCtrl.status.widthEllipse[j],fillEllipse[j],colorEllipse[j]); 
					END_FOR;
					
					VA_Rect(1,VC_HANDLE,xRect[2],yRect[2],widthRect[2],heigthRect[2],fillRect[2],colorRect[2]); //RECTANGULO HORIZONTAL
					VA_Rect(1,VC_HANDLE,xRect[3],yRect[3],widthRect[3],heigthRect[3],fillRect[3],colorRect[3]); //RECTANGULO VERTICAL
					VA_Ellipse(1,VC_HANDLE,xTarget,yTarget,heigthTarget,widthTarget,fillTarget,colorTarget); //TARGET
					
					IF changeRatioValue THEN
						changeRatioValue	:= FALSE;
						VA_Redraw(1,VC_HANDLE);
					END_IF;	
					VA_GetTouchAction(1,VC_HANDLE,0,ADR(Touch));
					VA_Srelease(1, VC_HANDLE);	
				END_IF;	
			END_IF;
			
			//RESET VA_SETUP EN CASO DE ERROR
			IF VC_HANDLE = 0 THEN
				gMainCtrl.visapiCtrl.state := ERROR;
			END_IF;	
	
		ERROR:
			gMainCtrl.visapiCtrl.state := WAIT;
	
	END_CASE;
	
	//SENTENCIA PARA CONSIDERAR UN TOQUE EN EL AREA DE JUEGO	
	IF Touch.x <= MAX_X_COORDINATE AND (Touch.x >= MIN_X_COORDINATE) AND(Touch.y <= MAX_Y_COORDINATE) AND(Touch.y >= MIN_Y_COORDINATE) THEN
		gMainCtrl.visapiCtrl.status.valitTouch := TRUE;
	ELSE
		gMainCtrl.visapiCtrl.status.valitTouch := FALSE;
	END_IF;
	

		
	//CONEXION DE VARIABLES LOCALES A GLOBALES	
	gMainCtrl.visapiCtrl.status.widthRect				:= widthRect[1];
	gMainCtrl.visapiCtrl.status.widthTarget 			:= widthTarget;
	gMainCtrl.visapiCtrl.status.heigthTarget			:= heigthTarget;
	gMainCtrl.visapiCtrl.status.homeXCoordenate 		:= UDINT_TO_REAL (xTarget);
	gMainCtrl.visapiCtrl.status.homeYCoordenate			:= UDINT_TO_REAL (yTarget);
	gMainCtrl.visapiCtrl.status.touchCoordinateX 		:= UDINT_TO_REAL (Touch.x);
	gMainCtrl.visapiCtrl.status.touchCoordinateY 		:= UDINT_TO_REAL (Touch.y);
	gMainCtrl.visapiCtrl.status.touchCoordinateStatus	:= newTouch;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

