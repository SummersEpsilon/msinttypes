# msinttypes
http://msinttypes.googlecode.com/files/msinttypes-r26.zip


On windows 10.

## Step1: Administor CMD Propmt.
@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

## Step2:
choco install msinttypes

## in Step2, get Error.


