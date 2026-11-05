# 🛡️ PowerShell Advanced System Audit & Compliance Script

Acest proiect conține un script automatizat în PowerShell conceput pentru a rula pe infrastructuri Windows Server. Scriptul execută un audit complet de securitate, analizează performanța hardware mapând starea pe o coloană de severitate (`GOOD`, `MEDIUM`, `CRITICAL`), inventariază conturile cu drepturi administrative și oferă recomandări bazate pe ghidurile oficiale Microsoft Best Practices.

## 🚀 Funcționalități incluse
- **Health Check Dinamic:** Calculul procentual al utilizării resurselor (RAM, Disc) cu clasificare automată în funcție de praguri critice.
- **Audit de Securitate:** Verificarea stării componentelor critice de securitate, precum Windows UAC (User Account Control).
- **Matricea de Privilegii:** Interogarea automată a membrilor grupului local de administratori pentru prevenirea escaladării drepturilor (*Privilege Creep*).
- **Motor de recomandări:** Generarea automată a acțiunilor corective bazate pe principiul privilegiului minim.

## 📋 Codul Sursă al Scriptului (`Audit-Script.ps1`)

Aici poți insera codul din interiorul blocului `@' ... '@` rulat mai sus, pentru ca angajatorii să îți poată vedea logica de programare direct pe GitHub!
