//%attributes = {}
// ajouter role
C_OBJECT:C1216($status; $enreg)
$enreg:=ds:C1482.Role.new()
$enreg.ID_Film:=filmCou.ID
$enreg.ID_Acteur:=Form:C1466.eleCou.ID

$status:=$enreg.save()

If ($status.success)
	
	ALERT:C41("Role ajouté")
Else 
	
	ALERT:C41("ajout role ko")
	
End if 