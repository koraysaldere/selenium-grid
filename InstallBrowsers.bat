@ECHO OFF

CD\

IF NOT EXIST C:\Browsers\ GOTO NOBROWSER

:NOBROWSER

MKDIR C:\Browsers

choco install opera --install -directory 'C:\Browsers\Opera' -y

choco install firefox --install -directory 'C:\Browsers\Firefox' -y

choco install googlechrome --install -directory 'C:\Browsers\Chrome' -y
