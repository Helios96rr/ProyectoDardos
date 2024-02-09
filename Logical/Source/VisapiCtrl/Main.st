
PROGRAM _INIT	
	//(1)VA_Setup o VA_Setup son utilizadas para CONEXIÓN DE VISAPI CON LA VISUALIZACIÓN. 
	//(2)VA_Saccess es utilizada para REALIZAR FUNCIONES DE VISAPI.
	//(3) VA_Line, VA_Rect, VA_Redraw, funciones de dibujo	
	x:= 200;
	y:= 200;
	x2:= 250;
	y2:= 250;
	height := 80;
END_PROGRAM

PROGRAM _CYCLIC
	fill := color;
	width := height;
	width2 := height2;

	
	
	
	CASE gMainCtrl.visapiCtrl.state OF
		
			
		
		WAIT: 
			IF ready <> 1 THEN
				VC_HANDLE := VA_Setup(1,interpreter);
				ready := 1;	
			END_IF;	
			IF  oldHeight <> height AND ready = 1 THEN
				ready := 1;
				gMainCtrl.visapiCtrl.state := DRAWING;
			END_IF;
			
	

		
		DRAWING: 
		
			IF ready = 1 AND actualPage = 0 THEN
				
				IF VA_Saccess(1, VC_HANDLE) = 0 THEN
					//VA_Rect(1,VC_HANDLE,x2,y2,width2,height2,fill2,color2);
					VA_Ellipse(1,VC_HANDLE,x,y,height,width,fill,color);
					VA_Srelease(1, VC_HANDLE);	
					oldHeight := height;
					
				END_IF;
		
			END_IF;
		
			IF oldHeight = height THEN
				gMainCtrl.visapiCtrl.state := WAIT;
				ready := 2;
				
			END_IF;
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

