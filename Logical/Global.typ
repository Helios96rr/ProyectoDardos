
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
		drawing : BOOL;
	END_STRUCT;
	visapiCtrl_state_type : 
		(
		WAIT := 0,
		DRAWING := 10
		);
END_TYPE
