# irc-js-bot

A simple IRC bot implemented on top of [IRC-js](https://github.com/gf3/IRC-js), with support for plug-ins.

## Installation

	npm install irc-js-bot

## In the wild

The main support bot in the [#css](irc://irc.freenode.net/css) and [#html](irc://irc.freenode.net/html) channels on [Freenode IRC](http://freenode.net) uses irc-js-bot. He listens to the name 'rivvles'.

## Running a bot

See the [examples](/colin-aarts/irc-js-bot/tree/master/examples).

## Configuration

See the [examples](/colin-aarts/irc-js-bot/tree/master/examples). Better docs later. Maybe.

## Plug-ins

### Command syntax

The IRC syntax for a (special) command is `<trigger><command-name>[/<flags>][ <arguments>]`, e.g. `!search/n foo`.

### API

A plug-in is a Node.js module. Assign a function to the `module.exports` object; the function is called with `this` set to the bot instance. A plug-in has full access to the bot instance, no hand-holding.

Register a special command by calling `this.register_special_command` with a configuration object as its sole argument; see any of the [bundled official plug-ins](/colin-aarts/irc-js-bot/tree/master/node_modules) for examples.

You can also register an incoming message callback by calling `this.register_message_callback` with a function as its sole argument. See the [irc-js-bot-admin official plug-in](/colin-aarts/irc-js-bot/tree/master/node_modules/irc-js-bot-admin) for an example. You can use this to audit incoming messages. Return `false` to silently stop processing immediately. This is used in the admin plug-in to ignore users that are on the ignore list.

### Official (bundled) plug-ins

irc-js-bot comes bundled with several official plug-ins for your convenience. For now, please see the [source files](/colin-aarts/irc-js-bot/tree/master/node_modules) for details. Their names start with 'irc-js-bot-'. Each command supports the '?' flag for viewing detailed instructions.

## License

[UNLICENSE](/colin-aarts/irc-js-bot/blob/master/UNLICENSE) yo.
