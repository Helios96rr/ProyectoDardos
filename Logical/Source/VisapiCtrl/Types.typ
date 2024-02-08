
TYPE
	VA_SetupX_0 : 	STRUCT 
		enable : BOOL;
		VCHandle : VCHANDLE;
		interpreter : STRING[80] := 'VisuDa';
		status : UINT;
	END_STRUCT;
	VA_Saccess_0 : 	STRUCT 
		enable : BOOL;
		VCHandle : VCHANDLE;
		status : UINT;
	END_STRUCT;
END_TYPE
