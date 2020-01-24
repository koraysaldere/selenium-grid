@ECHO OFF

CD\

IF NOT EXIST C:\tools\selenium GOTO NODRIVER
ELSE (echo "Driver klasörü daha önce oluşturulmuş.")

:NODRIVER
MKDIR -p C:\tools\selenium

IF NOT EXIST C:\tools\selenium\ChromeDriver.exe GOTO INSTALLCHROME
ELSE (echo "Chrome Driver zaten yüklü.")

:INSTALLCHROME
choco install selenium-chrome-driver --force -y

IF NOT EXIST C:\tools\selenium\FirefoxDriver.exe GOTO INSTALLFIREFOX
ELSE (echo "Firefox Driver zaten yüklü..")

:INSTALLFIREFOX
choco install selenium-gecko-driver --force -y

IF NOT EXIST C:\tools\selenium\OperaDriver.exe GOTO INSTALLOPERA
ELSE (echo "Opera Driver zaten yüklü.")

:INSTALLOPERA
choco install selenium-opera-driver --force -y

IF NOT EXIST C:\tools\selenium\IeDriver.exe GOTO INSTALLIE
ELSE (echo "Ie Driver zaten yüklü.")

:INSTALLIE
choco install selenium-ie-driver --force -y
