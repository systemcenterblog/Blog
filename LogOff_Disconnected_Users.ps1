#Disconnect sessions from multiple servers using powershell script#
# Found on https://mydailytechnicalskills.blogspot.com/2017/06/disconnect-sessions-from-multiple.html #
#Script no warranty#

function Get-Sessions
{
   $queryResults = query session
   $starters = New-Object psobject -Property @{"SessionName" = 0; "UserName" = 0; "ID" = 0; "State" = 0; "Type" = 0; "Device" = 0;}
   foreach ($result in $queryResults)
   {
      try
      {
         if($result.trim().substring(0, $result.trim().indexof(" ")) -eq "SESSIONNAME")
         {
            $starters.UserName = $result.indexof("USERNAME");
            $starters.ID = $result.indexof("ID");
            $starters.State = $result.indexof("STATE");
            $starters.Type = $result.indexof("TYPE");
            $starters.Device = $result.indexof("DEVICE");
            continue;
         }

         New-Object psobject -Property @{
            "SessionName" = $result.trim().substring(0, $result.trim().indexof(" ")).trim(">");
            "Username" = $result.Substring($starters.Username, $result.IndexOf(" ", $starters.Username) - $starters.Username);
            "ID" = $result.Substring($result.IndexOf(" ", $starters.Username), $starters.ID - $result.IndexOf(" ", $starters.Username) + 2).trim();
            "State" = $result.Substring($starters.State, $result.IndexOf(" ", $starters.State)-$starters.State).trim();
            "Type" = $result.Substring($starters.Type, $starters.Device - $starters.Type).trim();
            "Device" = $result.Substring($starters.Device).trim()
         }
      } 
      catch 
      {
         $e = $_;
         Write-Log "ERROR: " + $e.PSMessageDetails
      }
   }
}

[string]$IncludeStates = '^(Disc)$'

$DisconnectedSessions = Get-Sessions | ? {$_.State -match $IncludeStates -and $_.UserName -ne ""} | Select ID, UserName

foreach ($session in $DisconnectedSessions)
{
   logoff $session.ID
   Write-host -Message $session.Username
}
