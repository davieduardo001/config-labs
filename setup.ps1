# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Firefox
choco install firefox -y

# Install VSCode
choco install vscode -y

# Install WSL
choco install wsl -y

# Generate SSH key
# The SSH key will be stored in C:\Users\<YourUsername>\.ssh\id_rsa (private key) and C:\Users\<YourUsername>\.ssh\id_rsa.pub (public key)
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Clone the code-profiles repository
git clone https://github.com/davieduardo001/code-profiles.git $env:TEMP\code-profiles

# Create the VSCode profiles directory if it doesn't exist
$vsCodeProfilesDir = "$env:APPDATA\Code\User\profiles"
if (-not (Test-Path $vsCodeProfilesDir)) {
    New-Item -ItemType Directory -Path $vsCodeProfilesDir
}

# Copy the profiles
Copy-Item -Path "$env:TEMP\code-profiles\*.code-profile" -Destination $vsCodeProfilesDir
