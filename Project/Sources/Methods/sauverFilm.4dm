//%attributes = {}
// sauverFilm
C_OBJECT:C1216($status; $enregListe,$enreg)
If (actionDetail="AJOUTER")
	$enreg:=ds:C1482.Film.new()
	
Else 
	$enregListe:=ds:C1482.Film.query("ID=:1"; filmCou.ID)
	$enreg:=$enregListe.first()
	
End if 

$enreg.Annee:=Form:C1466.film.Annee
$enreg.Genre:=Form:C1466.film.Genre
$enreg.Nom:=Form:C1466.film.Nom
$enreg.Pays:=Form:C1466.film.Pays
$enreg.Prod:=Form:C1466.film.Prod
$enreg.Stock:=Form:C1466.film.Stock
$enreg.Stock2:=Form:C1466.film.Stock2
$status:=$enreg.save()
If ($status.success)
	
	If (actionDetail="AJOUTER")
		
		ALERT:C41("Enreg Film ajouté")
		filmCou:=$enreg
		filmCouModifie:=True:C214
		actionDetail:="MODIFIER"  // on passe de "ajouter" à "modifier"
	Else 
		
		ALERT:C41("Enreg Film modifié")
		filmCouModifie:=True:C214
	End if 
	
	
End if 
