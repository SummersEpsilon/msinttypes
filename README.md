# msinttypes
http://msinttypes.googlecode.com/files/msinttypes-r26.zip


On windows 10.

## Step1: Administor CMD Propmt.
@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

## Step2:
choco install msinttypes

### in Step2, get Error.

modified file: chocolateyInstall.ps1 

## Step2 (instead).

C:\WINDOWS\system32>choco install msinttypes
Chocolatey v0.10.11
Installing the following packages:
msinttypes
By installing you accept licenses for the packages.

msinttypes v0.26 - Possibly broken
msinttypes package files install completed. Performing other installation steps.
The package msinttypes wants to run 'chocolateyInstall.ps1'.
Note: If you don't run this script, the installation will fail.
Note: To confirm automatically next time, use '-y' or consider:
choco feature enable -n allowGlobalConfirmation
Do you want to run the script?([Y]es/[N]o/[P]rint):

Before you Choose [Y]es

put the modified file: chocolateyInstall.ps1 to instead of 
C:\ProgramData\chocolatey\lib\msinttypes\tools\chocolateyInstall.ps1


