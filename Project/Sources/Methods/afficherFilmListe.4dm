//%attributes = {}
// afficherFilmListe

C_OBJECT:C1216($form_obj)
$form_obj:=New object:C1471
//$form_obj.filmListe:=New object

C_LONGINT:C283($win_l)
$win_l:=Open form window:C675("filmListe")
DIALOG:C40("filmListe"; $form_obj)
CLOSE WINDOW:C154($win_l)
