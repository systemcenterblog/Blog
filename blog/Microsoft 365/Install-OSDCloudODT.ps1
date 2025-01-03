<#
.SYNOPSIS
Enables ODT Support in an OSDCloud Workspace

.Description
Enables ODT Support in an OSDCloud Workspace

.LINK
https://osdcloud.osdeploy.com
JP Modified

.NOTES
#>
function Install-OSDCloudODT {
    [CmdletBinding()]
    param ()
    #=======================================================================
    #	Start the Clock
    #=======================================================================
    $ODTStartTime = Get-Date
   
#=======================================================================
#	O365ProPlusRetail Configurations
#=======================================================================
$O365ProPlusRetailCurrent = @'
<Configuration ID="4d85475a-3aea-4fcb-877a-85841651fb69">
  <Add OfficeClientEdition="64" Channel="Current">
    <Product ID="O365ProPlusRetail">
      <Language ID="MatchOS" />
      <ExcludeApp ID="Groove" />
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI />
  <Display Level="Full" AcceptEULA="TRUE" />
</Configuration>
'@
$O365ProPlusRetailMonthlyEnterprise = @'
<Configuration ID="002634c3-bedd-416a-82ea-764d564ec07a">
  <Add OfficeClientEdition="64" Channel="MonthlyEnterprise">
    <Product ID="O365ProPlusRetail">
      <Language ID="MatchOS" />
      <ExcludeApp ID="Groove" />
      <ExcludeApp ID="Bing" />
      <ExcludeApp ID="Lync" />
    </Product>
    <Product ID="LanguagePack">
      <Language ID="en-us" />
      <Language ID="MatchPreviousMSI" />
      <ExcludeApp ID="Bing" />
    </Product>
    <Product ID="ProofingTools">
      <Language ID="af-za" />
      <Language ID="sq-al" />
      <Language ID="ar-sa" />
      <Language ID="hy-am" />
      <Language ID="as-in" />
      <Language ID="az-latn-az" />
      <Language ID="bn-bd" />
      <Language ID="bn-in" />
      <Language ID="eu-es" />
      <Language ID="bs-latn-ba" />
      <Language ID="bg-bg" />
      <Language ID="ca-es" />
      <Language ID="zh-cn" />
      <Language ID="zh-tw" />
      <Language ID="hr-hr" />
      <Language ID="cs-cz" />
      <Language ID="da-dk" />
      <Language ID="nl-nl" />
      <Language ID="en-us" />
      <Language ID="et-ee" />
      <Language ID="fi-fi" />
      <Language ID="fr-fr" />
      <Language ID="gl-es" />
      <Language ID="ka-ge" />
      <Language ID="de-de" />
      <Language ID="el-gr" />
      <Language ID="gu-in" />
      <Language ID="ha-latn-ng" />
      <Language ID="he-il" />
      <Language ID="hi-in" />
      <Language ID="hu-hu" />
      <Language ID="is-is" />
      <Language ID="ig-ng" />
      <Language ID="id-id" />
      <Language ID="ga-ie" />
      <Language ID="xh-za" />
      <Language ID="zu-za" />
      <Language ID="it-it" />
      <Language ID="ja-jp" />
      <Language ID="kn-in" />
      <Language ID="kk-kz" />
      <Language ID="rw-rw" />
      <Language ID="sw-ke" />
      <Language ID="kok-in" />
      <Language ID="ko-kr" />
      <Language ID="ky-kg" />
      <Language ID="lv-lv" />
      <Language ID="lt-lt" />
      <Language ID="lb-lu" />
      <Language ID="mk-mk" />
      <Language ID="ms-my" />
      <Language ID="ml-in" />
      <Language ID="mt-mt" />
      <Language ID="mi-nz" />
      <Language ID="mr-in" />
      <Language ID="ne-np" />
      <Language ID="nb-no" />
      <Language ID="nn-no" />
      <Language ID="or-in" />
      <Language ID="ps-af" />
      <Language ID="fa-ir" />
      <Language ID="pl-pl" />
      <Language ID="pt-br" />
      <Language ID="pt-pt" />
      <Language ID="pa-in" />
      <Language ID="ro-ro" />
      <Language ID="rm-ch" />
      <Language ID="ru-ru" />
      <Language ID="gd-gb" />
      <Language ID="sr-cyrl-ba" />
      <Language ID="sr-cyrl-rs" />
      <Language ID="sr-latn-rs" />
      <Language ID="nso-za" />
      <Language ID="tn-za" />
      <Language ID="si-lk" />
      <Language ID="sk-sk" />
      <Language ID="sl-si" />
      <Language ID="es-es" />
      <Language ID="sv-se" />
      <Language ID="ta-in" />
      <Language ID="tt-ru" />
      <Language ID="te-in" />
      <Language ID="th-th" />
      <Language ID="tr-tr" />
      <Language ID="uk-ua" />
      <Language ID="ur-pk" />
      <Language ID="uz-latn-uz" />
      <Language ID="ca-es-valencia" />
      <Language ID="vi-vn" />
      <Language ID="cy-gb" />
      <Language ID="wo-sn" />
      <Language ID="yo-ng" />
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="PinIconsToTaskbar" Value="FALSE" />
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI />
  <Display Level="Full" AcceptEULA="TRUE" />
</Configuration>
'@
$O365ProPlusRetailSemiAnnual = @'
<Configuration ID="4c075323-cc94-4689-85d1-43719cc99f01">
  <Add OfficeClientEdition="64" Channel="SemiAnnual">
    <Product ID="O365ProPlusRetail">
      <Language ID="MatchOS" />
      <ExcludeApp ID="Groove" />
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI />
  <Display Level="Full" AcceptEULA="TRUE" />
</Configuration>
'@
$O365ProPlusRetailSemiAnnualPreview = @'
<Configuration ID="3d9984f2-c89e-4b93-93c4-4415f960cbe0">
  <Add OfficeClientEdition="64" Channel="SemiAnnualPreview">
    <Product ID="O365ProPlusRetail">
      <Language ID="MatchOS" />
      <ExcludeApp ID="Groove" />
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI />
  <Display Level="Full" AcceptEULA="TRUE" />
</Configuration>
'@
$ProPlus2019Volume = @'
<Configuration ID="fbce83bd-7a92-4627-84e5-c08baf3dc13d">
  <Add OfficeClientEdition="64" Channel="PerpetualVL2019">
    <Product ID="ProPlus2019Volume" PIDKEY="NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP">
      <Language ID="MatchOS" />
      <ExcludeApp ID="Groove" />
    </Product>
  </Add>
  <Property Name="SharedComputerLicensing" Value="0" />
  <Property Name="SCLCacheOverride" Value="0" />
  <Property Name="AUTOACTIVATE" Value="0" />
  <Property Name="FORCEAPPSHUTDOWN" Value="FALSE" />
  <Property Name="DeviceBasedLicensing" Value="0" />
  <Updates Enabled="TRUE" />
  <RemoveMSI />
  <Display Level="Full" AcceptEULA="TRUE" />
</Configuration>
'@
    #=======================================================================
    #	Enable OSDCloud ODT
    #=======================================================================

    $WorkspacePath="C:\Programdata"
    if (Test-WebConnection -Uri 'https://www.microsoft.com/en-us/download') {
        $ODTPageLinks = (Invoke-WebRequest -Uri 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=49117' -UseBasicParsing).Links
        $ODTDownload = ($ODTPageLinks | Where-Object {$_.outerHTML -like "*click here to download manually*"}).href

        Write-Verbose "Downloading $ODTDownload"
        $ODTFile = Save-WebFile -SourceUrl $ODTDownload -DestinationDirectory "$WorkspacePath\ODT" -Overwrite

        #Create Paths
        if (!(Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\Current")) {New-Item -Path "$WorkspacePath\ODT\O365ProPlusRetail\Current" -ItemType Directory -Force | Out-Null}
        if (!(Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise")) {New-Item -Path "$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise" -ItemType Directory -Force | Out-Null}
        if (!(Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnual")) {New-Item -Path "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnual" -ItemType Directory -Force | Out-Null}
        if (!(Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnualPreview")) {New-Item -Path "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnualPreview" -ItemType Directory -Force | Out-Null}
        if (!(Test-Path "$WorkspacePath\ODT\ProPlus2019Volume\PerpetualVL2019")) {New-Item -Path "$WorkspacePath\ODT\ProPlus2019Volume\PerpetualVL2019" -ItemType Directory -Force | Out-Null}

        $O365ProPlusRetailCurrent | Out-File -FilePath "$WorkspacePath\ODT\O365ProPlusRetail\Current\OSDM365Current.xml" -Encoding utf8
        $O365ProPlusRetailMonthlyEnterprise | Out-File -FilePath "$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise\OSDM365MonthlyEnterprise.xml" -Encoding utf8
        $O365ProPlusRetailSemiAnnual | Out-File -FilePath "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnual\OSDM365Semi-Annual.xml" -Encoding utf8
        $O365ProPlusRetailSemiAnnualPreview | Out-File -FilePath "$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnualPreview\OSDM365Semi-Annual Preview.xml" -Encoding utf8
        $ProPlus2019Volume | Out-File -FilePath "$WorkspacePath\ODT\ProPlus2019Volume\PerpetualVL2019\OSD OfficeProfessionalPlus2019.xml" -Encoding utf8

        if (Test-Path $ODTFile.FullName) {
            Write-Verbose "Expanding $($ODTFile.FullName) to $WorkspacePath\ODT\O365ProPlusRetail\Current"
            & $ODTFile.FullName /quiet /extract:"$WorkspacePath\ODT\O365ProPlusRetail\Current"

            Write-Verbose "Expanding $($ODTFile.FullName) to $WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise"
            & $ODTFile.FullName /quiet /extract:"$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise"

            Write-Verbose "Expanding $($ODTFile.FullName) to $WorkspacePath\ODT\O365ProPlusRetail\SemiAnnual"
            & $ODTFile.FullName /quiet /extract:"$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnual"

            Write-Verbose "Expanding $($ODTFile.FullName) to $WorkspacePath\ODT\O365ProPlusRetail\SemiAnnualPreview"
            & $ODTFile.FullName /quiet /extract:"$WorkspacePath\ODT\O365ProPlusRetail\SemiAnnualPreview"

            Write-Verbose "Expanding $($ODTFile.FullName) to $WorkspacePath\ODT\ProPlus2019Volume\PerpetualVL2019"
            & $ODTFile.FullName /quiet /extract:"$WorkspacePath\ODT\ProPlus2019Volume\PerpetualVL2019"
        }

        Start-Sleep -Seconds 3

        Get-ChildItem -Path "$WorkspacePath\ODT\" -Include 'configuration-Office365-x64.xml' -Recurse | Remove-Item
        Get-ChildItem -Path "$WorkspacePath\ODT\" -Include 'configuration-Office365-x86.xml' -Recurse | Remove-Item
        Get-ChildItem -Path "$WorkspacePath\ODT\" -Include 'configuration-Office2019Enterprise.xml' -Recurse | Remove-Item



    }

    #=======================================================================
    #   Install ODT MonthlyEnterprise
    #=======================================================================
      if ((Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise\setup.exe") -and (Test-Path "$WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise\OSDM365MonthlyEnterprise.xml")) {
        Write-Verbose "ODT: Disable Telemetry"
        reg add HKCU\Software\Policies\Microsoft\Office\Common\ClientTelemetry /v DisableTelemetry /t REG_DWORD /d 1 /f

        Write-Verbose "ODT: Installing Microsoft Office"
        #Start-Process -WorkingDirectory 'C:\OSDCloud\ODT' -FilePath 'setup.exe' -ArgumentList "/configure","Config.xml" -Wait -Verbose
        & $WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise\setup.exe /configure $WorkspacePath\ODT\O365ProPlusRetail\MonthlyEnterprise\OSDM365MonthlyEnterprise.xml

        Write-Verbose "ODT: Enable Telemetry"
        reg add HKCU\Software\Policies\Microsoft\Office\Common\ClientTelemetry /v DisableTelemetry /t REG_DWORD /d 0 /f
    }
    #=======================================================================
    #   Complete
    #   Give a fair amount of time to display errors
    #=======================================================================
    Start-Sleep -Seconds 10
    #=======================================================================

    #=======================================================================
    #	Complete
    #=======================================================================
    $ODTEndTime = Get-Date
    $ODTTimeSpan = New-TimeSpan -Start $ODTStartTime -End $ODTEndTime
    Write-Host -ForegroundColor DarkGray    "========================================================================="
    Write-Host -ForegroundColor Yellow      "$((Get-Date).ToString('yyyy-MM-dd-HHmmss')) $($MyInvocation.MyCommand.Name) " -NoNewline
    Write-Host -ForegroundColor Cyan        "Completed in $($ODTTimeSpan.ToString("mm' minutes 'ss' seconds'"))"
    #=======================================================================
}

function Save-WebFile {
    [CmdletBinding()]
    param (
        #URL of the file to download
        [Parameter(Position = 0, Mandatory = $true, ValueFromPipeline)]
        [string]$SourceUrl,

        #Destination File Name
        [string]$DestinationName,

        #Destination Folder
        [Alias('Path')]
        [string]$DestinationDirectory = "$env:TEMP\OSD",

        #Overwrite the file if it exists already
        #The default action is to skip the download
        [switch]$Overwrite
    )
    #=======================================================================
    #	DestinationDirectory
    #=======================================================================
    if (Test-Path "$DestinationDirectory") {
    }
    else {
        New-Item -Path "$DestinationDirectory" -ItemType Directory -Force -ErrorAction Stop | Out-Null
    }
    Write-Verbose "DestinationDirectory: $DestinationDirectory"
    #=======================================================================
    #	DestinationName
    #=======================================================================
    if ($PSBoundParameters['DestinationName']) {
    }
    else {
        $DestinationName = Split-Path -Path $SourceUrl -Leaf
    }
    Write-Verbose "DestinationName: $DestinationName"
    #=======================================================================
    #	WebFileFullName
    #=======================================================================
    $DestinationDirectoryItem = (Get-Item $DestinationDirectory).FullName
    $DestinationFullName = Join-Path $DestinationDirectoryItem $DestinationName
    #=======================================================================
    #	OverWrite
    #=======================================================================
    if ((-NOT ($PSBoundParameters['Overwrite'])) -and (Test-Path $DestinationFullName)) {
        Write-Verbose "DestinationFullName already exists"
        Get-Item $DestinationFullName
    }
    else {
        #=======================================================================
        #	Download
        #=======================================================================
        if (Get-Command 'curl.exe') {
            Write-Verbose "cURL: $SourceUrl"
    
            if ($host.name -match 'ConsoleHost') {
                Invoke-Expression "& curl.exe --location --output `"$DestinationFullName`" --url $SourceUrl"
            }
            else {
                #PowerShell ISE will display a NativeCommandError, so progress will not be displayed
                $Quiet = Invoke-Expression "& curl.exe --location --output `"$DestinationFullName`" --url $SourceUrl 2>&1"
            }
        }
        else {
            [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls1
            $WebClient = New-Object System.Net.WebClient
            $WebClient.DownloadFile($SourceUrl, $DestinationFullName)
        }
        #=======================================================================
        #	Return
        #=======================================================================
        if (Test-Path $DestinationFullName) {
            Get-Item $DestinationFullName
        }
        else {
            Write-Warning "Could not download $DestinationFullName"
            $null
        }
        #=======================================================================
    }
}

function Test-WebConnection {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $True)]
        [string]$Uri = 'google.com'
    )
    
    begin {}
    
    process {
        $Params = @{
            Method = 'Head'
            Uri = $Uri
            UseBasicParsing = $True
        }

        try {
            Write-Verbose "Test-WebConnection OK: $Uri"
            Invoke-WebRequest @Params | Out-Null
            $true
        }
        catch {
            Write-Verbose "Test-WebConnection FAIL: $Uri"
            $false
        }
        finally {
            $Error.Clear()
        }
    }
    
    end {}
}

function Test-WebConnection {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $True)]
        [string]$Uri = 'google.com'
    )
    
    begin {}
    
    process {
        $Params = @{
            Method = 'Head'
            Uri = $Uri
            UseBasicParsing = $True
        }

        try {
            Write-Verbose "Test-WebConnection OK: $Uri"
            Invoke-WebRequest @Params | Out-Null
            $true
        }
        catch {
            Write-Verbose "Test-WebConnection FAIL: $Uri"
            $false
        }
        finally {
            $Error.Clear()
        }
    }
    
    end {}
}
function Wait-WebConnection {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $True)]
        [string]$Uri = 'powershellgallery.com'
    )


    if ((Test-WebConnection -Uri 'powershellgallery.com') -eq $true) {
        Write-Verbose "Wait-WebConnection to $Uri"
    }
    else {
        do {
            Write-Verbose "Wait-WebConnection to $Uri"
            
            Write-Verbose "Waiting 10 seconds to try again ..."
            Start-Sleep -Seconds 10
    
        } until ((Test-WebConnection -Uri 'powershellgallery.com') -eq $true)
    }
    $Error.Clear()
}

Install-OSDCloudODT
