//%attributes = {}
//sauverRole

C_OBJECT:C1216($status; $enregListe,$enreg)
$enregListe:=ds:C1482.Role.query("ID=:1"; Form:C1466.eleCou.IDRole)
$enreg:=$enregListe.first()
$enreg.Descr:=Form:C1466.eleCou.DescrRole
$status:=$enreg.save()
If ($status.success)
	ALERT:C41("role modifié")
End if 
