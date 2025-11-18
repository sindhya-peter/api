# Enable required features
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Install WSL (Store version) and default Ubuntu distro
wsl --install -d Ubuntu

# Optional: Set WSL2 as default
wsl --set-default-version 2

# Reboot recommended for full functionality
# Exit 3010 triggers Intune reboot prompt
exit 3010
