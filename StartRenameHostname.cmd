@echo off

SET mypath=%~dp0

REM This script enables Autohide of the start menu
powershell -ExecutionPolicy Unrestricted -File "%mypath%HopinRenameHostname.ps1"


pause

