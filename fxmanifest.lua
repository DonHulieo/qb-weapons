fx_version 'cerulean'
game 'gta5'

author 'DonHulieo'
description 'Weapons logic script, with attachment and weapon durabilty, weapon repairs and gun damage control.'
version '1.0.3'

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'config.lua',
}

server_script 'server/main.lua'
client_script 'client/main.lua'

files {'weaponsnspistol.meta'}

data_file 'WEAPONINFO_FILE_PATCH' 'weaponsnspistol.meta'

lua54 'yes'
