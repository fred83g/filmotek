//%attributes = {}
// chargerActeurDetail

acteurCouModifie:=False:C215

//les info sur le acteur sélectionné (Form.acteur.*)
Form:C1466.Acteur:=acteurCou

//liste des roles de l acteur (Form.filmListe.*)
C_OBJECT:C1216($role_liste)
$role_liste:=ds:C1482.Role.query("ID_Acteur=:1"; acteurCou.ID)
//les info film de chaque role de l'acteur
Form:C1466.roleListe:=New collection:C1472
C_OBJECT:C1216($role_ele; $film_ele; $obj)
For each ($role_ele; $role_liste)
	$film_ele:=ds:C1482.Film.query("ID=:1"; $role_ele.ID_Film)
	$obj:=New object:C1471("DescrRole"; $role_ele.Descr; "Film"; $film_ele[0].toObject("Nom,Annee,Genre,Pays,Prod,Real,Stock,Stock2"))
	Form:C1466.roleListe.push($obj)
End for each 
