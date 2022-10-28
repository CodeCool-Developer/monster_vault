fx_version 'adamant'

game 'gta5'

version '1.1.1'
name 'monster_vault'
author 'Modify By CodeCool Developer'
description 'https://discord.gg/K7PDe2jfpW'

shared_script {
	'config/config.general.lua',
	'config/config.shared.lua',
	'config/config.function.lua',
}

server_scripts {
	'server/main.lua'
}

client_scripts {
	'client/main.lua'
}

dependencies {
	'esx_addonaccount',
	'esx_addoninventory',
	'esx_datastore'
}

exports {
	"getMonsterVaultLicense"
}