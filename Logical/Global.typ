
TYPE
	gMainCtrl_type : 	STRUCT 
		visapiCtrl : visapiCtrl_type;
	END_STRUCT;
	visapiCtrl_type : 	STRUCT 
		cmd : visapiCtrl_cmd_type;
		status : visapiCtrl_status_type;
		state : visapiCtrl_state_type;
	END_STRUCT;
	visapiCtrl_cmd_type : 	STRUCT 
		readyToDraw : BOOL;
	END_STRUCT;
	visapiCtrl_status_type : 	STRUCT 
		touchCoordinateX : UDINT;
		drawing : BOOL;
		touchCoordinateY : UDINT;
		valitTouch : BOOL;
		homeYCoordenate : UDINT;
		homeXCoordenate : UDINT;
		widthEllipse : ARRAY[1..6]OF UDINT;
		heigthEllipse : ARRAY[1..6]OF UDINT;
		widthTarget : UDINT;
		heigthTarget : UDINT;
	END_STRUCT;
	visapiCtrl_state_type : 
		(
		WAIT := 0,
		DRAWING := 10,
		ERROR := 100
		);
END_TYPE
