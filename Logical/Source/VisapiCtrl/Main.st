
PROGRAM _INIT	
	//Inicialización de circunferencias
	heigthEllipse[1] := 330;
	heigthEllipse[2] := 280;
	heigthEllipse[3] := 230;
	heigthEllipse[4] := 180;
	heigthEllipse[5] := 130;
	heigthEllipse[6] := 80;
	heigthTarget	 := 50;
	
	gMainCtrl.visapiCtrl.state := WAIT;
	
END_PROGRAM

PROGRAM _CYCLIC
	
	
	xRect[2]:= ((widthRect[1]/2)-(widthEllipse[1]/2))+ leftOffset;
	yRect[3]:=((heigthRect[1]/2)-(widthEllipse[1]/2))+ topOffset;
	widthRect[2] := widthEllipse[1];
	heigthRect[3] := heigthEllipse[1]; 
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
					
					VA_Srelease(1, VC_HANDLE);
					
				END_IF;	
			END_IF;
		
		
		
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

