; Work around for ubisofts stupid software
; which forces you to type in your password
; when launching legacy games.
; Generate an exec file from autoit 
; after entering your password below.

; Place the generated exe in the same location as the game exe.

Start()
Sleep(10000)
Password()

Func Start()
	
		Run("AC4BFSP.exe") ;<-- replace with the game exe
	
		Do
	
			Sleep(500)
	
		Until WinExists("[CLASS:uplay_start]")
	
EndFunc

Func Password()

        If WinExists("[CLASS:uplay_start]") Then
				
			Send("{TAB}")
			Send("enterpasswordhere")
			Send("{ENTER}")
        
		EndIf

EndFunc