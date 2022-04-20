//%attributes = {}
// chargerFilmListe

C_OBJECT:C1216($liste)

$liste:=ds:C1482.Film.all().orderBy("Nom")
Form:C1466.data:=New collection:C1472
Form:C1466.data:=$liste
