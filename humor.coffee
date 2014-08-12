# Description
#   Gets a chuck norris joke
#
# Dependencies
#   None
#
# Configuration
#  None
#
# Commands:
#   "hubot humor me" - Get random joke from the internet chuck norris database (http://www.icndb.com/)
#
# Notes:
#
# Author:
#   Mauricio A (rmalarc@msn.com)
#
module.exports = (robot) ->
  robot.respond /(humor)( me)?\s*$/i, (msg) ->
    robot.http('http://api.icndb.com/jokes/random?limitTo=[nerdy]')
      .get() (err, res, body) ->
         msg.send(JSON.parse(body).value.joke)
