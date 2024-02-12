
PROGRAM _INIT
	actualRadius[1] 	:= 1;
	actualRadius[2] 	:= 1;
	actualValueRadus	:= 1;

	
END_PROGRAM

PROGRAM _CYCLIC
	
	IF (actualRadius[1] >= 1) AND (actualRadius[1] <7) THEN
		IF EDGEPOS(nextRadius) THEN
			actualRadius[1]:= actualRadius[1] + 1;
		END_IF;
	END_IF;
	IF (actualRadius[1] > 1) AND (actualRadius[1] <= 7) THEN
		IF EDGEPOS(previusRadius) THEN
			actualRadius[1]:= actualRadius[1] - 1;
		END_IF;
	END_IF;
			
		
		
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

