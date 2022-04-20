//%attributes = {}
// afficherFilmDetail

filmCou:=Form:C1466.eleCou
actionDetail:="AFFICHER"


If (filmCou#Null:C1517)
	
	C_OBJECT:C1216($form_obj)
	$form_obj:=New object:C1471
	
	C_LONGINT:C283($win_l)
	$win_l:=Open form window:C675("filmDetail")
	DIALOG:C40("filmDetail"; $form_obj)
	CLOSE WINDOW:C154($win_l)
	
End if 
