//%attributes = {}
// chargerFilmDetail

filmCouModifie:=False:C215

If (actionDetail="AJOUTER")
	Form:C1466.film:=New object:C1471("Annee"; 0; "Genre"; ""; "ID"; 0; "Pays"; ""; "Prod"; ""; "Real"; ""; "Stock"; ""; "Stock2"; "")
	
Else 
	
	//les info sur le film sélectionné
	Form:C1466.film:=filmCou
	
	//les info pour chaque role dans le film
	C_OBJECT:C1216($role_liste; $role_ele; $acteur_ele; $obj)
	C_LONGINT:C283($ageActeur)
	$role_liste:=ds:C1482.Role.query("ID_Film=:1"; filmCou.ID)
	Form:C1466.roleListe:=New collection:C1472
	For each ($role_ele; $role_liste)
		$acteur_ele:=ds:C1482.Acteur.query("ID=:1"; $role_ele.ID_Acteur)
		If (($acteur_ele[0].AnneeNaiss=0) | (filmCou.Annee=0))
			$ageActeur:=0
		Else 
			$ageActeur:=filmCou.Annee-$acteur_ele[0].AnneeNaiss
		End if 
		$obj:=New object:C1471("DescrRole"; $role_ele.Descr; "IDRole"; $role_ele.ID; "AgeActeur"; $ageActeur; "Acteur"; $acteur_ele[0].toObject("Nom,AnneeNaiss,Categorie,Pays,ID"))
		Form:C1466.roleListe.push($obj)
	End for each 
	
End if 
