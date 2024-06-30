fx_version 'cerulean'
game 'gta5'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua'
}


server_scripts {
    'server/server.lua',
    'dist/server/sv_server.js',
} 
client_scripts {
    'dist/client/cl_client.js',
} 




