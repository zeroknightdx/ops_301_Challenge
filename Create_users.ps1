# ----- Edit these Variables for your own Use Case ----- #
$PASSWORD_FOR_USERS = "Password1"
$USER_FIRST_LAST_LIST = Get-Content .\names.txt
# ------------------------------------------------------ #

# Convert the password to a secure string
$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

# Create an Organizational Unit (OU) for the users
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

# Iterate through the list of first and last names
foreach ($name in $USER_FIRST_LAST_LIST) {
    $first, $last = $name.Split(" ")
    $firstLower = $first.ToLower()
    $lastLower = $last.ToLower()
    $username = "$($firstLower[0])$lastLower"

    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan

    New-AdUser -AccountPassword $password `
               -GivenName $firstLower `
               -Surname $lastLower `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]('').distinguishedName))" `
               -Enabled $true
}
