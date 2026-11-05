# Configurare Inițială și Inventar Windows Server (SRV01)

Acest proiect documentează procesul de configurare inițială a unui server virtual din infrastructură (Windows Server executat în Hyper-V), utilizând exclusiv comenzi automate în PowerShell.

## 🛠️ Configurații Realizate
- Redenumirea serverului din hostname-ul implicit generat la instalare în **SRV01**
- Sincronizarea fusului orar pe regiunea corectă (**GTB Standard Time**) pentru consistența logurilor
- Verificarea și validarea conexiunilor active de rețea prin Hyper-V NAT Switch
- Instalarea rolului de Web Server (**IIS**) împreună cu uneltele de management aferente
- Crearea și auditarea unui cont local de utilizator pentru teste de securitate

## 📊 Raport de Inventar Generat (`Inventar_SRV01.txt`)

```text
==================================================
RAPORT INVENTAR ȘI CONFIGURARE SERVER: SRV01
Generat la: 11/05/2026 17:50:00
==================================================

1. INFORMAȚII SISTEM:
---------------------
Nume Server: SRV01
Fus Orar:    GTB Standard Time

2. VERIFICARE ROL WEB (IIS):
----------------------------
Serviciul W3SVC (Web): Running
Serviciul WAS (Process): Running

3. VERIFICARE CONECTIVITATE INTERNET:
-------------------------------------
Conexiune Google Port 443: True

4. UTILIZATORI LOCALI CREAȚI:
-----------------------------
Name  Enabled Description
----  ------- -----------
Gigel True    Utilizator de test pentru loguri
```

## 🔒 Test Audit Securitate: Analiză Loguri (Event ID 4625 & 7036)
În cadrul acestui exercițiu am testat corelația dintre acțiunile administrative și jurnalele de evenimente Windows:
1. **Event ID 7036 (System):** Am auditat ciclul de pornire/oprire al serviciului IIS (`W3SVC`), extrăgând momentele exacte în care serviciul a trecut prin stările `stopped` și `running`.
2. **Event ID 4625 (Security):** Am generat o tentativă eșuată de autentificare prin PowerShell (`Start-Process` folosind credențiale invalide pentru contul `Gigel`) și am identificat cu succes amprenta evenimentului în jurnalul de Securitate pentru a simula izolarea unui incident.
