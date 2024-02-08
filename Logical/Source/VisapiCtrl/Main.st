
PROGRAM _INIT	
	//(1)VA_Setup o VA_Setup son utilizadas para CONEXIÓN DE VISAPI CON LA VISUALIZACIÓN. 
	//(2)VA_Saccess es utilizada para REALIZAR FUNCIONES DE VISAPI.
	//(3) VA_Line, VA_Rect, VA_Redraw, funciones de dibujo	

END_PROGRAM

PROGRAM _CYCLIC

	

	
	CASE gMainCtrl.visapiCtrl.state OF
		
		DISABLE:
		
			IF setupX.status <> 0  THEN
				setupX.status:= (VA_SetupX(setupX.enable, ADR (setupX.VCHandle), setupX.interpreter));
			END_IF;
			
			IF setupX.status = 0 AND (gMainCtrl.visapiCtrl.cmd.readyToDraw)	THEN
				gMainCtrl.visapiCtrl.state	:= 	WAIT;
			END_IF;
			
			
		WAIT: 
			IF saccess.status = 0 THEN
				gMainCtrl.visapiCtrl.state	:= DRAWING;
			END_IF;
		DRAWING: 
			VA_Ellipse(1, setupX.VCHandle,0,0,50,50,1,24);
			VA_Srelease(1,setupX.VCHandle);
		
		
		
		
	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

