# EmailChecker
Checks every 15 minutes to see when a users email address has finally been added to Active Directory

## Usage
Run the script from within Powershell:

    PS C:\> .\EmailChecker.ps1
    
Enter the users Name/SAMAccountName:

    Please enter a user to watch: Xandora
    
Watch Output:

    GivenName      Surname      EmailAddress
    ---------      -------      ------------
    Test           User         
    Test           User         
    Test           User         
    Test           User         
    Test           User         Test_User@example.com
    Test           User         Test_User@example.com
    Test           User         Test_User@example.com
    
Fin.
