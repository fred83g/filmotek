//%attributes = {}
// sauverActeur
C_OBJECT:C1216($status; $enregListe,$enreg)
$enregListe:=ds:C1482.Acteur.query("ID=:1"; acteurCou.ID)
$enreg:=$enregListe.first()
$enreg.AnneeDeces:=Form:C1466.Acteur.AnneeDeces
$enreg.AnneeNaiss:=Form:C1466.Acteur.AnneeNaiss
$enreg.Nom:=Form:C1466.Acteur.Nom
$enreg.Pays:=Form:C1466.Acteur.Pays
$enreg.Categorie:=Form:C1466.Acteur.Categorie
$status:=$enreg.save()
If ($status.success)
	ALERT:C41("Enreg Acteur modifié")
	acteurCouModifie:=True:C214
End if 
