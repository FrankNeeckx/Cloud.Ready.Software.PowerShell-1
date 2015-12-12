﻿function Start-NAVWindowsClient
{
    [cmdletbinding()]
    param(
        [string]$ServerName=([net.dns]::gethostname()), 
        [int]$Port=7046, 
        [String]$ServerInstance, 
        [String]$Companyname, 
        [string]$tenant='default'
        )

    if ([string]::IsNullOrEmpty($Companyname)) {
    }

    $ConnectionString = "DynamicsNAV://$($Servername):$($Port)/$($ServerInstance)/$($Companyname)/?tenant=$($tenant)"
    Write-host -ForegroundColor green -object "Starting $ConnectionString ..."
    Start-Process $ConnectionString
}
