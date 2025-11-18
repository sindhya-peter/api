wsl --shutdown
wsl --unregister Ubuntu   # or whatever distro you installed
wsl --uninstall
dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
dism.exe /online /disable-feature /featurename:VirtualMachinePlatform /norestart
