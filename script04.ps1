﻿<#
.Synopsis
   The following script saves all services
.DESCRIPTION
   the following script saves all currently running services into a file
.PARAMETER ComputerName
   Enter the machine
.PARAMETER FilePath
   Enter the save path of the file
.EXAMPLE
   script_04 -ComputerName Server_01 Server_04 -FilePath C:\Logs
#>

<#
Author: Marvin Ecker
#>


[CmdletBinding()]
Param
(
    [Parameter(Mandatory=$true)]
    [String]$FilePath
)

#entry point
Get-Service | Out-File -FilePath $FilePath 