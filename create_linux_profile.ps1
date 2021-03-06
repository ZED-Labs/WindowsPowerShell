if (Test-Path $profile){
    if (! (Get-Content $Profile | Where {$_ -like "*init.ps1*"})){
        $orig_profile = get-content $Profile
        'If (Test-Path "$HOME/WindowsPowerShell/Modules/zCore/init.ps1"){. "$HOME/WindowsPowerShell/Modules/zCore/init.ps1"}'+"`n$orig_profile" | New-Item -Path $HOME/.config/powershell -Name Microsoft.PowerShell_profile.ps1 -Force -Confirm:$false 2>&1 | Out-Null
    }
}else{
    'If (Test-Path "$HOME/WindowsPowerShell/Modules/zCore/init.ps1"){. "$HOME/WindowsPowerShell/Modules/zCore/init.ps1"}' | New-Item -Path $HOME/.config/powershell -Name Microsoft.PowerShell_profile.ps1 -Force -Confirm:$false 2>&1 | Out-Null
}

write-host "Cmdlets have been successfully install!`n" -ForegroundColor Cyan
