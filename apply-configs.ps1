# Apply VS Code profiles
$vsCodeProfilesDir = "$env:APPDATA\Code\User\profiles"
if (-not (Test-Path $vsCodeProfilesDir)) {
    New-Item -ItemType Directory -Path $vsCodeProfilesDir
}
Copy-Item -Path "$env:USERPROFILE\configs\code-profiles\*.code-profile" -Destination $vsCodeProfilesDir

# Apply PowerShell profile
Copy-Item -Path "$env:USERPROFILE\configs\bash-config\powershell.config" -Destination $PROFILE -Force
