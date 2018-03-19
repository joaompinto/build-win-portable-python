@echo off
set VERSION="2.7.14"
wget -c https://www.python.org/ftp/python/%VERSION%/python-%VERSION%.amd64.msi
rd /s /q python-%VERSION%\
lessmsi-v1.6.1\lessmsi.exe x python-%VERSION%.amd64.msi python-%VERSION%\
move \* python-%VERSION%
for /d /r "python-%VERSION%\SourceDir" %%i in (*) do if exist "python-%VERSION%\%%~ni" (dir "%%i" | find "0 File(s)" > NUL & if errorlevel 1 move /y "%%i\*.*" "python-%VERSION%\%%~ni") else (move /y "%%i" "python-%VERSION%")
move /y python-%VERSION%\SourceDir\*.* python-%VERSION%
rd /s /q python-%VERSION%\SourceDir
python-%VERSION%\python -m ensurepip
IF NOT "%PIP_INSTALL%"=="" python-%VERSION%\python -m pip install %PIP_INSTALL%
python-%VERSION%\python zippython.py python-%VERSION%\ python-%VERSION%-portable.zip
rd /s /q python-%VERSION%
start .
