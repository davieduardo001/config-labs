# Config Labs

This repository contains scripts for setting up a development environment on Windows and WSL.

## Windows Setup

To set up your Windows environment, run the `sync-windows.ps1` script from a PowerShell terminal with administrator privileges.

```powershell
./sync-windows.ps1
```

This script will:

*   Install Chocolatey.
*   Install Firefox, VS Code, and WSL.
*   Install JetBrains Nerd Font.
*   Install `nvm`, `pyenv`, and `pnpm`.
*   Generate an SSH key.
*   Apply VS Code profiles.
*   Apply a custom PowerShell configuration.

## WSL Setup

To set up your WSL environment, run the `sync-wsl.sh` script from your WSL terminal.

```bash
./sync-wsl.sh
```

This script will:

*   Apply the `bash-config`.
*   Apply the `fastfetch` config.
