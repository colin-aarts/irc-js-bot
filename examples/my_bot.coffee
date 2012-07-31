'use strict'


bot  = require 'irc-js-bot'

# IRC-js options object <http://gf3.github.com/IRC-js/IRC/options/>
irc_options =
		server: 'irc.freenode.net'
		nick: 'my_bot'
		channels: ['#my_bot', '#something_else']
		encoding: 'utf-8'
		pass: 'my_password'
		user:
			username: 'johndoe'
			hostname: 'intertubes'
			realname: 'johndoe'
		log: true

# irc-js-bot options object
bot_options =
		admins: [
			{ nick: 'moi',          host: 'pdpc/supporter/active/moi' }
			{ nick: 'someone_else', host: 'foo.bar.com' }
		]
		triggers: ['`', '.']
		plugins: ['irc-js-bot-admin', 'irc-js-bot-util', 'irc-js-bot-short', 'irc-js-bot-w3c', 'irc-js-bot-google', 'irc-js-bot-currency_conversion']
		plugin_options:
			'irc-js-bot-currency_conversion':
				api_key: 'your_api_key_here'

# Init
rivvles = bot irc_options, bot_options
