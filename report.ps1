@'
# Script de Inventar Server - Portofoliu GitHub
$ReportPath = "$Home\Desktop\Inventar_SRV01.txt"

$Content = @"
==================================================
RAPORT INVENTAR ȘI CONFIGURARE SERVER: $env:COMPUTERNAME
Generat la: $(Get-Date)
==================================================

1. INFORMAȚII SISTEM:
---------------------
Nume Server: $env:COMPUTERNAME
Fus Orar:    $((Get-TimeZone).Id)

2. VERIFICARE ROL WEB (IIS):
----------------------------
Serviciul W3SVC (Web): $((Get-Service W3SVC).Status)
Serviciul WAS (Process): $((Get-Service WAS).Status)

3. VERIFICARE CONECTIVITATE INTERNET:
-------------------------------------
Conexiune Google Port 443: $((Test-NetConnection google.com -Port 443).TcpTestSucceeded)

4. UTILIZATORI LOCALI CREAȚI:
-----------------------------
$(Get-LocalUser | Select-Object Name, Enabled, Description | Format-Table | Out-String)
==================================================
"@

$Content | Out-File -FilePath $ReportPath -Encoding utf8
Write-Host "Raportul a fost salvat cu succes pe Desktop: Inventar_SRV01.txt" -ForegroundColor Green
'@ | Out-File -FilePath "$Home\Desktop\Genereaza-Inventar.ps1" -Encoding utf8

# Executăm scriptul nou creat pentru a genera fișierul final text
& "$Home\Desktop\Genereaza-Inventar.ps1"
