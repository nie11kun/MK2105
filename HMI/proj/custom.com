;***********************start:欢迎画面**********************
//S(Start)

	DEF TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/0,0,0/);磨削类型

	HS7=(["\\S_001.png",$85067],ac7,se1,pa0)
	VS1=(["\\S_002.png",$85072],ac7,se1,pa0) 
	
	PRESS(HS7)
;
		LM("MASK18","grind.com");磨削界面加载 ifIsInternalOnly
;
	END_PRESS

	PRESS(VS1)
		LM("Mask0","info.com")
	END_PRESS

//END
