#getting all necessary inputs
$Domain = Read-Host -Prompt "Enter Domain: "
# $CompName = Read-Host -Prompt "Enter Computer Name: "
$Cred = Get-Credential

#Get off domain
Write-Output "Removing From Domain"
Remove-Computer -UnjoinDomainCredential $Cred -PassThru -Force

#Join Back To Domain
Write-Output "Joining Again"
Add-Computer -DomainName $Domain -Credential $Cred

Write-Output "Computer has successfully been readded to domain."
Read-Host -Prompt "Press Enter To exit"

