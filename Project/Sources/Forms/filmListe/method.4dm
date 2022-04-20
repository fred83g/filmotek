//formulaire filmListe
Case of 
	: (Form event code:C388=On Load:K2:1)
		chargerFilmListe
		//: (Form event code=On Clicked)  // "ou double clicked" inutile : "clicked" détecté avant "double clicked")
		
		////If (Character code(Keystroke)#Escape key)
		//filmCou:=Form.eleCou
		//afficherFilmDetail
		////End if 
End case 

