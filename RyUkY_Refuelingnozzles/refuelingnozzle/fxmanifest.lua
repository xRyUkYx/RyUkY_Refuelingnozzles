fx_version 'bodacious'
games {'gta5'}

-- Resource stuff
name 'Refueling Nozzle'
description 'Refueling Nozzles For All Gas Stations By ToxicScripts'
version 'v1'
author 'Toxic Scripts'

-- Adds additional logging useful when debugging issues.
client_debug_mode 'false'
server_debug_mode 'false'

-- Leave this set to '0' to prevent compatibility issues 
-- and to keep the save files your users.
experimental_features_enabled '0'

ui_page 'html/ui.html'

files {
    'settings.ini',
    'html/ui.html',
    'html/sounds/*.ogg',
}

-- Files & scripts
client_script 'RefuelingNozzle.net.dll'
server_script 'RefuelingNozzleServer.net.dll'