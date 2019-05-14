$signature = @’ 
[DllImport("user32.dll")] 
public static extern bool SetWindowPos( 
    IntPtr hWnd, 
    IntPtr hWndInsertAfter, 
    int X, 
    int Y, 
    int cx, 
    int cy, 
    uint uFlags); 
‘@ 
  
$type = Add-Type -MemberDefinition $signature -Name SetWindowPosition -Namespace SetWindowPos -Using System.Text -PassThru

$handle = (Get-Process -id $Global:PID).MainWindowHandle 
$alwaysOnTop = New-Object -TypeName System.IntPtr -ArgumentList (-1) 
$type::SetWindowPos($handle, $alwaysOnTop, 0, 0, 0, 0, 0x0003)

# Thanks to Taylor Brown for the Alyways On Top implementation above:
# https://blogs.msdn.microsoft.com/taylorb/2012/06/12/scripts-from-teched-2012-part-1-keeping-powershell-window-on-top/

$users = @()
do {
$input = (Read-Host "Please enter a user to watch")
if ($input -ne '') {$users += $input}
}
until ($input -eq '')

Clear-Host

1..9999999 | foreach {
     foreach($u in $users) {
     Get-ADUser $u -properties EmailAddress
     }
     Start-Sleep -seconds 900
} | Format-Table @{e="GivenName"; w=15}, @{e="Surname"; w=15}, @{e='EmailAddress'; w=40}