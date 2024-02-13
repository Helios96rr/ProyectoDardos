(*gMainCtrl_type*)

TYPE
	gMainCtrl_type : 	STRUCT 
		visapiCtrl : visapiCtrl_type;
		scoreCtrl : scoreCtrl_type;
	END_STRUCT;
END_TYPE

(*visapiCtrl_type*)

TYPE
	visapiCtrl_type : 	STRUCT 
		cmd : visapiCtrl_cmd_type;
		status : visapiCtrl_status_type;
		state : visapiCtrl_state_type;
	END_STRUCT;
	visapiCtrl_cmd_type : 	STRUCT 
		readyToDraw : BOOL;
	END_STRUCT;
	visapiCtrl_status_type : 	STRUCT 
		touchCoordinateX : REAL;
		drawing : BOOL;
		touchCoordinateY : REAL;
		valitTouch : BOOL;
		homeYCoordenate : REAL;
		homeXCoordenate : REAL;
		widthEllipse : ARRAY[1..6]OF UINT;
		heigthEllipse : ARRAY[1..6]OF UINT;
		widthTarget : UDINT;
		heigthTarget : UDINT;
		touchCoordinateStatus : BOOL;
		widthRect : UDINT;
	END_STRUCT;
	visapiCtrl_state_type : 
		(
		WAIT := 0,
		DRAWING := 10,
		ERROR := 100
		);
END_TYPE

(*scoreCtrl_type*)

TYPE
	scoreCtrl_type : 	STRUCT 
		cmd : scoreCtrl_cmd_type;
		status : scoreCtrl_status_type;
		state : scoreCtrl_state_type;
	END_STRUCT;
	scoreCtrl_cmd_type : 	STRUCT 
		addPointScore : BOOL;
	END_STRUCT;
	scoreCtrl_status_type : 	STRUCT 
		validTouch : BOOL;
		additivePoint : ARRAY[1..MAX_RADIUS_WITH_TARGET]OF UINT;
		incorrectScore : BOOL;
		correctScore : BOOL;
		cumulateScore : UINT;
		cumulateShots : UINT;
	END_STRUCT;
	scoreCtrl_state_type : 
		(
		WAIT_SCORE := 0,
		GET_SCORE := 10,
		ERROR_SCORE := 100
		);
END_TYPE

(*gMachinePar*)

TYPE
	gMachinePar_type : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
END_TYPE

(*gVisuCtrl_type*)

TYPE
	gVisuCtrl_type : 	STRUCT 
		numInput : gVIsu_numInput_type;
		runtime : gVisu_runtime_type;
		button : gVisu_button_type;
		textOutput : gVisu_textOutput_type;
	END_STRUCT;
	gVIsu_numInput_type : 	STRUCT 
		radiusWidth : ARRAY[1..MAX_RADIUS_WITH_TARGET]OF UINT;
		selectedRadiusWidth : ARRAY[1..MAX_RADIUS_WITH_TARGET]OF UINT;
	END_STRUCT;
	gVisu_runtime_type : 	STRUCT 
		showButtonStartNewGame : USINT;
	END_STRUCT;
	gVisu_button_type : 	STRUCT 
		startNewGame : BOOL;
	END_STRUCT;
	gVisu_textOutput_type : 	STRUCT 
		statusGame : USINT;
	END_STRUCT;
END_TYPE
