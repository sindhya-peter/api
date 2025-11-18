# Install-WSL.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force

# Enable required features (idempotent)
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart /quiet
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart /quiet

# Check if WSL is already functional
if (Get-Command wsl -ErrorAction SilentlyContinue) {
    $installed = wsl --list --quiet
    if ($installed) {
        Write-Output "WSL already installed"
        exit 0
    }
}

# Install WSL + default Ubuntu (this pulls the Store version)
wsl --install -d Ubuntu --web-download   # --web-download works around some Store blocks

# Set WSL 2 as default (optional but recommended)
wsl --set-default-version 2

# Request reboot
exit 3010
