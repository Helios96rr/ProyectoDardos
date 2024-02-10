
PROGRAM _INIT	
	//Inicialización de circunferencias
	heigthEllipse[1] := 330;
	heigthEllipse[2] := 280;
	heigthEllipse[3] := 230;
	heigthEllipse[4] := 180;
	heigthEllipse[5] := 130;
	heigthEllipse[6] := 80;
	heigthTarget	 := 50;
 
	xTouchPosition;
	yTouchPosition;
	
END_PROGRAM

PROGRAM _CYCLIC
	
	
	
	//CORDENADAS, ALTO Y ANCHO DE LOS RECTANGULOS QUE DIVIDEN EL TABLERO
	xRect[2]:= ((widthRect[1]/2)-(widthEllipse[1]/2))+ leftOffset;
	yRect[3]:=((heigthRect[1]/2)-(widthEllipse[1]/2))+ topOffset;
	widthRect[2] := widthEllipse[1];
	heigthRect[3] := widthEllipse[1]; 
	widthTarget	:= heigthTarget;
	
	IF defaultRadiusValues THEN
		heigthEllipse[1] := 330;
		heigthEllipse[2] := 280;
		heigthEllipse[3] := 230;
		heigthEllipse[4] := 180;
		heigthEllipse[5] := 130;
		heigthEllipse[6] := 80;
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
						widthEllipse[j] 	:= heigthEllipse[j];
						VA_Ellipse(1,VC_HANDLE,xEllipse ,yEllipse,heigthEllipse[j] ,widthEllipse[j],fillEllipse[j],colorEllipse[j]); 
					END_FOR;
					
					VA_Rect(1,VC_HANDLE,xRect[2],yRect[2],widthRect[2],heigthRect[2],fillRect[2],colorRect[2]); //RECTANGULO HORIZONTAL
					VA_Rect(1,VC_HANDLE,xRect[3],yRect[3],widthRect[3],heigthRect[3],fillRect[3],colorRect[3]); //RECTANGULO VERTICAL
					VA_Ellipse(1,VC_HANDLE,xTarget,yTarget,heigthTarget,widthTarget,fillTarget,colorTarget); //TARGET
					VA_GetTouchAction(1,VC_HANDLE,0,ADR(Touch));
					VA_Srelease(1, VC_HANDLE);	
				END_IF;	
				
				IF Touch.x <= MAX_X_COORDINATE AND (Touch.x >= MIN_X_COORDINATE) AND(Touch.y <= MAX_Y_COORDINATE) AND(Touch.y >= MIN_Y_COORDINATE) THEN
					gMainCtrl.visapiCtrl.status.valitTouch := TRUE;
				ELSE
					gMainCtrl.visapiCtrl.status.valitTouch := FALSE;
				END_IF;
				
			END_IF;
			
			//RESET VA_SETUP EN CASO DE ERROR
			IF VC_HANDLE = 0 THEN
				gMainCtrl.visapiCtrl.state := ERROR;
			END_IF;	
	
		ERROR:
			gMainCtrl.visapiCtrl.state := WAIT;
	
	END_CASE;
	
	FOR j:= 1 TO MAX_RADIUS DO
		gMainCtrl.visapiCtrl.status.heigthEllipse[j]:= heigthEllipse[j];
		gMainCtrl.visapiCtrl.status.widthEllipse[j]	:= widthEllipse[j];	
	END_FOR;	
		
	//CONEXION DE VARIABLES LOCALES A GLOBALES	
	gMainCtrl.visapiCtrl.status.widthTarget := widthTarget;
	gMainCtrl.visapiCtrl.status.heigthTarget:= heigthTarget;
	gMainCtrl.visapiCtrl.status.homeXCoordenate := xTarget;
	gMainCtrl.visapiCtrl.status.homeYCoordenate	:= yTarget;
	gMainCtrl.visapiCtrl.status.touchCoordinateX := Touch.x;
	gMainCtrl.visapiCtrl.status.touchCoordinateY := Touch.y;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

