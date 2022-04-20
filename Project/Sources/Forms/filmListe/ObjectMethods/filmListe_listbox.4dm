//listbox filmListe

Case of 
	: (Form event code:C388=On After Keystroke:K2:26)  // pour ne pas avoir à utiliser la souris (je n'ai pas trouvé comment détecter la frappe de "enter")
		C_LONGINT:C283($frappe)
		$frappe:=Character code:C91(Keystroke:C390)
		If ($frappe=Right arrow key:K12:17)
			afficherFilmDetail
		End if 
	: (Form event code:C388=On Clicked:K2:4)  // "ou double clicked" inutile : "clicked" détecté avant "double clicked")
		afficherFilmDetail
End case 
