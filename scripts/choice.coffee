# Description:
#   Helps you make a decision.
#
# Commands:
#   hubot <this> or <that>? - Make a well-informed choice

module.exports = (robot) ->
  robot.respond /(.*) or (.*)\?$/i, (res) ->
    res.send res.random [res.match[1], res.match[2]]
