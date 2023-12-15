@echo off
:loop
    tasklist /FI "IMAGENAME eq powershell.exe" /V | find /I "pdf_manager.ps1" > nul
    if errorlevel 1 (
        powershell -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%TEMP%\PDFmanager\pdf_manager.ps1""' -WindowStyle Hidden}"
    )
goto loop
