# User Variables
$local_directory = Get-Location
$working_directory = "$local_directory\temp_working"

$mod_bepinex = "https://github.com/BepInEx/BepInEx/releases/download/v5.4.22/BepInEx_x64_5.4.22.0.zip"
$mod_skinwalkers = "https://thunderstore.io/package/download/RugbugRedfern/Skinwalkers/2.0.1/"
$mod_moreemotes = "https://thunderstore.io/package/download/Sligili/More_Emotes/1.2.2/"
$mod_hdlethalcompany = "https://thunderstore.io/package/download/Sligili/HDLethalCompany/1.5.6/"
$mod_additionalsuits = "https://thunderstore.io/package/download/AlexCodesGames/AdditionalSuits/1.1.3/"
$mod_shiploot = "https://thunderstore.io/package/download/tinyhoot/ShipLoot/1.0.0/"
$mod_latecompany = "https://thunderstore.io/package/download/anormaltwig/LateCompany/1.0.10/"
$mod_alwayshearactivewalkies = "https://thunderstore.io/package/download/Suskitech/AlwaysHearActiveWalkies/1.4.4/"
$mod_helmetcameras = "https://thunderstore.io/package/download/RickArg/Helmet_Cameras/2.1.5/"

$bepinex_exists = Test-Path -Path "$working_directory\BepInEx_x64_5.4.22.0.zip"
$skinwalkers_exists = Test-Path -Path "$working_directory\RugbugRedfern-Skinwalkers-2.0.1.zip"
$moreemotes_exists = Test-Path -Path "$working_directory\Sligili-More_Emotes-1.2.2.zip"
$hdlethalcompany_exists = Test-Path -Path "$working_directory\Sligili-HDLethalCompany-1.5.6.zip"
$additionalsuits_exists = Test-Path -Path "$working_directory\AlexCodesGames-AdditionalSuits-1.1.3.zip"
$shiploot_exists = Test-Path -Path "$working_directory\tinyhoot-ShipLoot-1.0.0.zip"
$latecompany_exists = Test-Path -Path "$working_directory\anormaltwig-LateCompany-1.0.10.zip"
$alwayshearactivewalkies_exists = Test-Path -Path "$working_directory\Suskitech-AlwaysHearActiveWalkies-1.4.4.zip"
$helmetcameras_exists = Test-Path -Path "$working_directory\RickArg-Helmet_Cameras-2.1.5.zip"

$src_bepinex = "$working_directory\BEPINEX\*"
$src_skinwalkers = "$working_directory\SKINWALKERS\BepInEx\plugins\*"
$src_moreemotes = "$working_directory\MOREEMOTES\BepInEx\plugins\*"
$src_hdlethalcompany = "$working_directory\HDLETHALCOMPANY\BepInEx\plugins\*"
$src_additionalsuits = "$working_directory\ADDITIONALSUITS\plugins\*"
$src_shiploot = "$working_directory\SHIPLOOT\plugins\*"
$src_latecompany = "$working_directory\LATECOMPANY\BepInEx\plugins\*"
$src_alwayshearactivewalkies = "$working_directory\ALWAYSHEARACTIVEWALKIES\AlwaysHearWalkie.dll"
$src_helmetcameras = "$working_directory\HELMETCAMERAS\BepInEx\plugins\*"
$src_config = "$local_directory\custom_configs\*"

function install_bepinex ($game_root) {

    Invoke-WebRequest -Uri $mod_bepinex -OutFile "$working_directory\BepInEx_x64_5.4.22.0.zip"
    New-Item -Name "temp_working\BEPINEX" -ItemType "directory"
    Expand-Archive -Path "$working_directory\BepInEx_x64_5.4.22.0.zip" -DestinationPath "$working_directory\BEPINEX"
    Copy-Item -Recurse $src_bepinex -Destination $game_root
    New-Item -Name "config" -ItemType "directory" -Path "$game_root\BepInEx"
    New-Item -Name "plugins" -ItemType "directory" -Path "$game_root\BepInEx"
    
}

function install_skinwalkers {

    Invoke-WebRequest -Uri $mod_skinwalkers -OutFile "$working_directory\RugbugRedfern-Skinwalkers-2.0.1.zip"
    New-Item -Name "temp_working\SKINWALKERS" -ItemType "directory"
    Expand-Archive -Path "$working_directory\RugbugRedfern-Skinwalkers-2.0.1.zip" -DestinationPath "$working_directory\SKINWALKERS"
    Copy-Item -Recurse $src_skinwalkers -Destination $dest_plugins

}

function install_moreemotes {

    Invoke-WebRequest -Uri $mod_moreemotes -OutFile "$working_directory\Sligili-More_Emotes-1.2.2.zip"
    New-Item -Name "temp_working\MOREEMOTES" -ItemType "directory"
    Expand-Archive -Path "$working_directory\Sligili-More_Emotes-1.2.2.zip" -DestinationPath "$working_directory\MOREEMOTES"
    Copy-Item -Recurse $src_moreemotes -Destination $dest_plugins

}

function install_hdlethalcompany {
    
    Invoke-WebRequest -Uri $mod_hdlethalcompany -OutFile "$working_directory\Sligili-HDLethalCompany-1.5.6.zip"
    New-Item -Name "temp_working\HDLETHALCOMPANY" -ItemType "directory"
    Expand-Archive -Path "$working_directory\Sligili-HDLethalCompany-1.5.6.zip" -DestinationPath "$working_directory\HDLETHALCOMPANY"
    Copy-Item -Recurse $src_hdlethalcompany -Destination $dest_plugins

}

function install_additionalsuits {

    Invoke-WebRequest -Uri $mod_additionalsuits -OutFile "$working_directory\AlexCodesGames-AdditionalSuits-1.1.3.zip"
    New-Item -Name "temp_working\ADDITIONALSUITS" -ItemType "directory"
    Expand-Archive -Path "$working_directory\AlexCodesGames-AdditionalSuits-1.1.3.zip" -DestinationPath "$working_directory\ADDITIONALSUITS"
    Copy-Item -Recurse $src_additionalsuits -Destination $dest_plugins
    
}

function install_shiploot {
    
    Invoke-WebRequest -Uri $mod_shiploot -OutFile "$working_directory\tinyhoot-ShipLoot-1.0.0.zip"
    New-Item -Name "temp_working\SHIPLOOT" -ItemType "directory"
    Expand-Archive -Path "$working_directory\tinyhoot-ShipLoot-1.0.0.zip" -DestinationPath "$working_directory\SHIPLOOT"
    Copy-Item -Recurse $src_shiploot -Destination $dest_plugins

}

function install_latecompany {

    Invoke-WebRequest -Uri $mod_latecompany -OutFile "$working_directory\anormaltwig-LateCompany-1.0.10.zip"
    New-Item -Name "temp_working\LATECOMPANY" -ItemType "directory"
    Expand-Archive -Path "$working_directory\anormaltwig-LateCompany-1.0.10.zip" -DestinationPath "$working_directory\LATECOMPANY"
    Copy-Item -Recurse $src_latecompany -Destination $dest_plugins
}

function install_alwayshearactivewalkies {

    Invoke-WebRequest -Uri $mod_alwayshearactivewalkies -OutFile "$working_directory\Suskitech-AlwaysHearActiveWalkies-1.4.4.zip"
    New-Item -Name "temp_working\ALWAYSHEARACTIVEWALKIES" -ItemType "directory"
    Expand-Archive -Path "$working_directory\Suskitech-AlwaysHearActiveWalkies-1.4.4.zip" -DestinationPath "$working_directory\ALWAYSHEARACTIVEWALKIES"
    Copy-Item -Recurse $src_alwayshearactivewalkies -Destination $dest_plugins
    
}

function install_helmetcameras {

    Invoke-WebRequest -Uri $mod_helmetcameras -OutFile "$working_directory\RickArg-Helmet_Cameras-2.1.5.zip"
    New-Item -Name "temp_working\HELMETCAMERAS" -ItemType "directory"
    Expand-Archive -Path "$working_directory\RickArg-Helmet_Cameras-2.1.5.zip" -DestinationPath "$working_directory\HELMETCAMERAS"
    Copy-Item -Recurse $src_helmetcameras -Destination $dest_plugins

}

Write-Output "######## Welcome to LFC Manager for Lethal Company ########`n"

Start-Sleep -Seconds 1

$game_root = Read-Host "Input the EXACT file path of your Lethal Company Installation Folder"

$manager_exists = Test-Path -Path "$game_root\BepInEx"
$dest_plugins = "$game_root\BepInEx\plugins"
$dest_configs = "$game_root\BepInEx\config"

Start-Sleep -Seconds 1

do {

    $working_exists = Test-Path -Path "$working_directory"

    Clear-Host # Remove this when testing new mods

    $valid_values = "A", "B", "C", "D", "E", "F", "G", "H", "Z", 1, 2
    Write-Output "Mod Selection Menu:`n"
    Write-Output "A = Skinwalkers"
    Write-Output "B = MoreEmotes"
    Write-Output "C = HDLethalCompany"
    Write-Output "D = AdditionalSuits"
    Write-Output "E = ShipLoot"
    Write-Output "F = LateCompany"
    Write-Output "G = AlwaysHearActiveWalkies"
    Write-Output "H = HelmetCameras"
    Write-Output "Z = INSTALL ALL OF THE ABOVE"
    Write-Output "1 = UPDATE CONFIG FILES"
    Write-Output "2 = EXIT INSTALLER`n"
    $install_select = Read-Host "Which mod would you like to install"

    Clear-Host # Remove this when testing new mods
    
    if ($install_select.ToUpper() -in $valid_values) {

        if ($working_exists -eq $false -and $install_select -ne 1) {
            New-Item -Name "temp_working" -ItemType "directory"
        }
        
    
        if ($bepinex_exists -eq $false -and $install_select -ne 1 -and $manager_exists -eq $false) {
            Write-Output "Installing BEPINEX..."
            install_bepinex($game_root)
        }

        if ($skinwalkers_exists -eq $false -and ($install_select.ToUpper() -eq "A" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing SKINWALKERS..."
            install_skinwalkers
        }
    
    
        if ($moreemotes_exists -eq $false-and ($install_select.ToUpper() -eq "B" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing MOREEMOTES..."
            install_moreemotes
        }
    
    
        if ($hdlethalcompany_exists -eq $false -and ($install_select.ToUpper() -eq "C" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing HDLETHALCOMPANY..."
            install_hdlethalcompany
        }
    
    
        if ($additionalsuits_exists -eq $false -and ($install_select.ToUpper() -eq "D" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing ADDITIONALSUITS..."
            install_additionalsuits
        }
    
    
        if ($shiploot_exists -eq $false -and ($install_select.ToUpper() -eq "E" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing SHIPLOOT..."
            install_shiploot
        }

        if ($latecompany_exists -eq $false -and ($install_select.ToUpper() -eq "F" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing LATECOMPANY..."
            install_latecompany
        }

        if ($alwayshearactivewalkies_exists -eq $false -and ($install_select.ToUpper() -eq "G" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing ALWAYSHEARACTIVEWALKIES..."
            install_alwayshearactivewalkies
        }
    
        if ($helmetcameras_exists -eq $false -and ($install_select.ToUpper() -eq "H" -or $install_select.ToUpper() -eq "Z")) {
            Write-Output "Installing HELMETCAMERAS..."
            install_helmetcameras
        }

        if ($install_select -eq 1 -or $install_select.ToUpper() -eq "Z") {
            Copy-Item -Recurse $src_config -Destination $dest_configs
        }

    }
    else {
        Write-Output "`n$install_select is not a valid input, please choose a selection from the menu."
        Start-Sleep -Seconds 5
        Clear-Host
    }

} until ($install_select -eq 2)

Write-Output "Thanks for using LFC Manager!!!!!"
Start-Sleep -Seconds 10