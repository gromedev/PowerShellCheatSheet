########################################
function Show-StringManipulationMenu {
    # Define the menu options
    $menuOptions = @(
        @{ Name = "Search for filename"; Cmdlet = "Find-File" },
        @{ Name = "Search for string"; Cmdlet = "Find-String" },
        @{ Name = "Set string in files"; Cmdlet = "Set-StringInFiles" },
        @{ Name = "Set filenames by date"; Cmdlet = "Set-FileNamesByDate" },
        @{ Name = "Invoke Base64"; Cmdlet = "Invoke-Base64" },
        @{ Name = "Get SHA1"; Cmdlet = "Get-SHA1" },
        @{ Name = "Return to main menu"; Cmdlet = "Show-Menu" }
        "Main menu"
    )

    # Display the menu and prompt the user for a selection
    $selectedOption = $null
    while ($null -eq $selectedOption) {
        Write-Output "Select one of the following options:"
        $menuIndex = 1
        foreach ($menuOption in $menuOptions) {
            Write-Output "$menuIndex) $($menuOption.Name)"
            $menuIndex++
        }
        $selection = Read-Host "Enter your selection"

        # Check if the selection is a valid option
        if ($selection -ge 1 -and $selection -le $menuIndex) {
            $selectedOption = $menuOptions[$selection - 1]
        }
        else {
            Write-Output "Invalid selection"
            $selectedOption = $null
        }
    }

    if ($selectedOption.Name -eq "Return to main menu") {
        # Clear the host and return to the main menu
        Clear-Host
        Show-Menu
    }
    else {
        # Execute the selected option and handle errors
        try {
            Invoke-Expression $selectedOption.Cmdlet
        }
        catch {
            Write-Output "There was an error. Returning to menu"
            Show-StringManipulationMenu
        }
    }
}


########################################
function Show-DefenderMenu() {
    # Define the menu options
    $menuOptions = @(
        @{ Name = "Get Defender logs"; Cmdlet = "Get-DefenderLogs" },
        @{ Name = "Disable Defender"; Cmdlet = "Disable-Defender" },
        @{ Name = "Find BitLocker recovery key"; Cmdlet = "Find-BitLockerRecoveryKey" },
        "Main menu"
    )

    # Display the menu and prompt the user for a selection
    $selectedOption = $null
    while ($null -eq $selectedOption) {
        Write-Output "Select one of the following options:"
        $menuIndex = 1
        foreach ($menuOption in $menuOptions) {
            Write-Output "$menuIndex) $($menuOption.Name)"
            $menuIndex++
        }
        $selection = Read-Host "Enter your selection"
 
        # Check if the selection is a valid option
        if ($selection -ge 1 -and $selection -le $menuIndex) {
            $selectedOption = $menuOptions[$selection - 1]
        }
        else {
            Write-Output "Invalid selection"
            $selectedOption = $null
        }
    }
 
    if ($selectedOption.Name -eq "Return to main menu") {
        # Clear the host and return to the main menu
        Clear-Host
        Show-Menu
    }
    else {
        # Execute the selected option and handle errors
        try {
            Invoke-Expression $selectedOption.Cmdlet
        }
        catch {
            Write-Output "There was an error. Returning to menu"
            Show-StringManipulationMenu
        }
    }
}

########################################
function Show-NetworkingMenu() {
    # Define the menu options
    $menuOptions = @(
        @{ Name = "Invoke-PingSweep"; Cmdlet = "Invoke-PingSweep" },
        @{ Name = "Invoke-PortScan"; Cmdlet = "Invoke-PortScan" },
        @{ Name = "Get-Whois"; Cmdlet = "Get-Whois" },
        @{ Name = "Spoof MacAddress"; Cmdlet = "Set-MacAddress" },
        @{ Name = "Invoke-FirewallRule"; Cmdlet = "Invoke-FirewallRule" },
        @{ Name = "Download file from URL"; Cmdlet = "Get-WebFile" },
        @{ Name = "Download video from website"; Cmdlet = "Save-Video" },
        @{ Name = "Return to main menu"; Cmdlet = "Show-Menu" }
        "Main menu"
    )

    # Display the menu and prompt the user for a selection
    $selectedOption = $null
    while ($null -eq $selectedOption) {
        Write-Output "Select one of the following options:"
        $menuIndex = 1
        foreach ($menuOption in $menuOptions) {
            Write-Output "$menuIndex) $($menuOption.Name)"
            $menuIndex++
        }
        $selection = Read-Host "Enter your selection"
 
        # Check if the selection is a valid option
        if ($selection -ge 1 -and $selection -le $menuIndex) {
            $selectedOption = $menuOptions[$selection - 1]
        }
        else {
            Write-Output "Invalid selection"
            $selectedOption = $null
        }
    }
 
    if ($selectedOption.Name -eq "Return to main menu") {
        # Clear the host and return to the main menu
        Clear-Host
        Show-Menu
    }
    else {
        # Execute the selected option and handle errors
        try {
            Invoke-Expression $selectedOption.Cmdlet
        }
        catch {
            Write-Output "There was an error. Returning to menu"
            Show-StringManipulationMenu
        }
    }
}


########################################
function Show-WindowsMenu() {
    # Define the menu options
    $menuOptions = @(
        @{ Name = "Find-Process"; Cmdlet = "Find-Process" },
        @{ Name = "Get-ProcessUsingFile"; Cmdlet = "Get-ProcessUsingFile" },
        @{ Name = "Find-Service"; Cmdlet = "Find-Service" },
        @{ Name = "Get-UninstallKey"; Cmdlet = "Get-UninstallKey" },
        @{ Name = "New-SelfSignedCert"; Cmdlet = "New-SelfSignedCert" },
        @{ Name = "Set-WindowsEdition"; Cmdlet = "Set-WindowsEdition" },
        @{ Name = "Set-RegistryValue"; Cmdlet = "Set-RegistryValue" },
        @{ Name = "Convert-AzureAdObject"; Cmdlet = "Convert-AzureAdObject" },
        @{ Name = "Return to main menu"; Cmdlet = "Show-Menu" }
        "Main menu"
    )

    # Display the menu and prompt the user for a selection
    $selectedOption = $null
    while ($null -eq $selectedOption) {
        Write-Output "Select one of the following options:"
        $menuIndex = 1
        foreach ($menuOption in $menuOptions) {
            Write-Output "$menuIndex) $($menuOption.Name)"
            $menuIndex++
        }
        $selection = Read-Host "Enter your selection"

        # Check if the selection is a valid option
        if ($selection -ge 1 -and $selection -le $menuIndex) {
            $selectedOption = $menuOptions[$selection - 1]
        }
        else {
            Write-Output "Invalid selection"
            $selectedOption = $null
        }
    }

    if ($selectedOption.Name -eq "Return to main menu") {
        # Clear the host and return to the main menu
        Clear-Host
        Show-Menu
    }
    else {
        # Execute the selected option and handle errors
        try {
            Invoke-Expression $selectedOption.Cmdlet
        }
        catch {
            Write-Output "There was an error. Returning to menu"
            Show-StringManipulationMenu
        }
    }
}