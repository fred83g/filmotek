//%attributes = {}
// afficherActeurSelection

C_OBJECT:C1216($form_obj)
$form_obj:=New object:C1471
$form_obj.acteurListe:=New object:C1471

C_LONGINT:C283($win_l)
$win_l:=Open form window:C675("acteurSelection")
DIALOG:C40("acteurSelection"; $form_obj)
CLOSE WINDOW:C154($win_l)
