if ((wsl --list) -and (Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux).State -eq "Enabled") {
    Write-Output "WSL Installed"
    exit 0
} else {
    exit 1
}
