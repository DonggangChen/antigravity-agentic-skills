@echo off
:: 1. YÖNETİCİ YETKİSİ ALMA (ZORLAMALI)
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Yonetici yetkisi gerekiyor...
    powershell -Command "Start-Process -FilePath '%0' -Verb RunAs"
    exit /b
)

:: 2. SUNUCULARI DURDUR
echo Serverlar durduruluyor...
taskkill /F /IM node.exe /T 2>nul
taskkill /F /IM python.exe /T 2>nul

:: 3. EKRANA UYARI MESAJI ÇIKAR (POPU-UP)
set "msg=BUTUN SERVERLAR DURDURULDU! Node ve Python surecleri temizlendi."
powershell -Command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('%msg%', 'Sistem Bilgisi', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)"

exit