# Script Name:               Powershell AD Automation
# Author:                       Michael Plaskett    
# Date of latest revision:      09/15/23
# Purpose:          TO grasp the fundamental of Powershell AD Automation
# Resource:        

# Define user attributes
$FirstName = "Franz"
$LastName = "Ferdinand"
$DisplayName = "$FirstName $LastName"
$SamAccountName = "ferdi"
$UserPrincipalName = "$SamAccountName@GlobeXpower.com"
$Office = "Springfield, OR"
$Title = "TPS Reporting Lead"
$Department = "TPS Department"
$EmailAddress = "ferdi@GlobeXpower.com"
$Password = ConvertTo-SecureString "YourPasswordHere" -AsPlainText -Force

# Specify the path to the OU (Organizational Unit) where you want to create the user
$OUPath = "OU=Users,OU=Springfield,OU=USA,OU=GlobeX,DC=example,DC=com"

# Create the new user in Active Directory
New-ADUser -Name $DisplayName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName `
  -UserPrincipalName $UserPrincipalName -Office $Office -Title $Title -Department $Department `
  -EmailAddress $EmailAddress -AccountPassword $Password -Enabled $true -Path $OUPath

# Verify user creation
Get-ADUser -Filter {SamAccountName -eq $SamAccountName}