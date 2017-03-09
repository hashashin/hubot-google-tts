# Description
#   Makes hubot talk
#
# Commands:
#   hubot say <text> (en|es) - return a mp3 tts
#
# Author:
#   hashashin
googleTTS = require('google-tts-api')

module.exports = (robot) ->

  robot.respond /say (.*) (en|es)$/i, (msg) ->
    googleTTS(msg.match[1], msg.match[2], 1).then((url) ->
      if robot.adapterName is "telegram"
        robot.emit 'telegram:invoke', 'sendAudio', {
          chat_id: msg.envelope.room
          audio: url
        }, (error, response) ->
          if error != null
            robot.logger.error error
          robot.logger.debug response
      else
        msg.send url
      return
    ).catch (err) ->
      robot.logger.error err.stack
      return
