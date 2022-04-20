//%attributes = {}
//sauverActeurFilmDetail
C_OBJECT:C1216($status; $enregListe,$enreg)
$enregListe:=ds:C1482.Acteur.query("ID=:1"; Form:C1466.eleCou.Acteur.ID)
$enreg:=$enregListe.first()
$enreg.AnneeNaiss:=Form:C1466.eleCou.Acteur.AnneeNaiss
$enreg.Nom:=Form:C1466.eleCou.Acteur.Nom
$enreg.Pays:=Form:C1466.eleCou.Acteur.Pays
$enreg.Categorie:=Form:C1466.eleCou.Acteur.Categorie
$status:=$enreg.save()
If ($status.success)
	ALERT:C41("Enreg Acteur modifié")
	acteurCouModifie:=True:C214
End if 
