#username from environmental variable and stores in variable
$username = $env:UserName

#splits username at uppercase
$Name = ($username.substring(0,1).toupper() + $username.substring(1) -creplace '[^a-z\s]', ' $&').Trim();

#splits first and last name
$Firstname, $LastName = $Name.Split()

#grab the first letter of the firstname
$firstletter = $Firstname.Substring(0,1)

#lastname to upper case
$LastNameCaps = $LastName.ToUpper()

#hostname string
$mynewhostname = "HOP-WIN-" + $LastNameCaps + $firstletter


#write-host $mynewhostname - testing

#Renames hostname
Rename-Computer -NewName $Mynewhostname -force
