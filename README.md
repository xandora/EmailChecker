# EmailChecker
Checks every 15 minutes to see when a users email address has finally been added to Active Directory. Support watching multiple users at the same time. Currently it will default to Always On Top to ensure that you don't miss anything.

## Usage
Run the script from within Powershell:

    PS C:\> .\EmailChecker.ps1
    
Enter the users Name/SAMAccountName:

    Please enter a user to watch: Xandora
    
Note: Multiple Users can be watched by entering each user one at a time. The script starts when the input is left blank.
    
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
