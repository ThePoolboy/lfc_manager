$cur_directory = Get-Location
$mod_manager = "https://github.com/BepInEx/BepInEx/releases/download/v5.4.22/BepInEx_x64_5.4.22.0.zip"
$mod_1 = "https://thunderstore.io/package/download/RugbugRedfern/Skinwalkers/2.0.1/"
$mod_2 = "https://thunderstore.io/package/download/Sligili/More_Emotes/1.2.2/"
$mod_3 = "https://thunderstore.io/package/download/Sligili/HDLethalCompany/1.5.6/"
$mod_4 = "https://thunderstore.io/package/download/AlexCodesGames/AdditionalSuits/1.1.3/"
$mod_5 = "https://thunderstore.io/package/download/tinyhoot/ShipLoot/1.0.0/"

New-Item -Name "temp_downloads" -ItemType "directory" -ErrorAction SilentlyContinue
Invoke-WebRequest -Uri $mod_manager -OutFile "$cur_directory\temp_downloads\BepInEx_x64_5.4.22.0.zip"
Invoke-WebRequest -Uri $mod_1 -OutFile "$cur_directory\temp_downloads\RugbugRedfern-Skinwalkers-2.0.1.zip"
Invoke-WebRequest -Uri $mod_2 -OutFile "$cur_directory\temp_downloads\Sligili-More_Emotes-1.2.2.zip"
Invoke-WebRequest -Uri $mod_3 -OutFile "$cur_directory\temp_downloads\Sligili-HDLethalCompany-1.5.6.zip"
Invoke-WebRequest -Uri $mod_4 -OutFile "$cur_directory\temp_downloads\AlexCodesGames-AdditionalSuits-1.1.3.zip"
Invoke-WebRequest -Uri $mod_5 -OutFile "$cur_directory\temp_downloads\tinyhoot-ShipLoot-1.0.0.zip"

New-Item -Name "temp_manager" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\BepInEx_x64_5.4.22.0.zip" -DestinationPath "$cur_directory\temp_manager" -ErrorAction SilentlyContinue
New-Item -Name "temp_mod_1" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\RugbugRedfern-Skinwalkers-2.0.1.zip" -DestinationPath "$cur_directory\temp_mod_1" -ErrorAction SilentlyContinue
New-Item -Name "temp_mod_2" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\Sligili-More_Emotes-1.2.2.zip" -DestinationPath "$cur_directory\temp_mod_2" -ErrorAction SilentlyContinue
New-Item -Name "temp_mod_3" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\Sligili-HDLethalCompany-1.5.6.zip" -DestinationPath "$cur_directory\temp_mod_3" -ErrorAction SilentlyContinue
New-Item -Name "temp_mod_4" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\AlexCodesGames-AdditionalSuits-1.1.3.zip" -DestinationPath "$cur_directory\temp_mod_4" -ErrorAction SilentlyContinue
New-Item -Name "temp_mod_5" -ItemType "directory" -ErrorAction SilentlyContinue
Expand-Archive -Path "$cur_directory\temp_downloads\tinyhoot-ShipLoot-1.0.0.zip" -DestinationPath "$cur_directory\temp_mod_5" -ErrorAction SilentlyContinue

$game_root = Read-Host "Input the EXACT file path of your Lethal Company Installation Folder"
$manager_src = "$cur_directory\temp_manager\*"
$manager_dest = $game_root
$mod1_src = "$cur_directory\temp_mod_1\BepInEx\plugins\*"
$mod1_dest = "$game_root\BepInEx\plugins"
$mod2_src = "$cur_directory\temp_mod_2\BepInEx\plugins\*"
$mod2_dest = "$game_root\BepInEx\plugins"
$mod3_src = "$cur_directory\temp_mod_3\BepInEx\plugins\*"
$mod3_dest = "$game_root\BepInEx\plugins"
$mod4_src = "$cur_directory\temp_mod_4\plugins\*"
$mod4_dest = "$game_root\BepInEx\plugins"
$mod5_src = "$cur_directory\temp_mod_5\plugins\*"
$mod5_dest = "$game_root\BepInEx\plugins"
$config_src = "$cur_directory\custom_configs\*"
$config_dest = "$game_root\BepInEx\config"

Copy-Item -Force -Recurse -Verbose $manager_src -Destination $manager_dest -ErrorAction SilentlyContinue
New-Item -Name "config" -ItemType "directory" -Path "$game_root\BepInEx" -ErrorAction SilentlyContinue
New-Item -Name "plugins" -ItemType "directory" -Path "$game_root\BepInEx" -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $mod1_src -Destination $mod1_dest -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $mod2_src -Destination $mod2_dest -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $mod3_src -Destination $mod3_dest -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $mod4_src -Destination $mod4_dest -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $mod5_src -Destination $mod5_dest -ErrorAction SilentlyContinue
Copy-Item -Force -Recurse -Verbose $config_src -Destination $config_dest -ErrorAction SilentlyContinue