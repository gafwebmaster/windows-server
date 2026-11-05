Import-Module WindowsServerBackup

# 1. Inițializăm o politică nouă curată
$Policy = New-WBPolicy

# 2. Adăugăm folderul sursă (ce salvăm)
$BackupFileSpec = New-WBFileSpec -FileSpec "C:\inetpub"
Add-WBFileSpec -Policy $Policy -FileSpec $BackupFileSpec

# 3. Definim destinația ca o cale de rețea (Network Share)
$NetworkTarget = New-WBBackupTarget -NetworkPath "\\localhost\ServerBackups"
Add-WBBackupTarget -Policy $Policy -Target $NetworkTarget

# 4. Pornim jobul de backup
Start-WBBackup -Policy $Policy
