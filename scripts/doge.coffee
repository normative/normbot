# Description:
#   Requisite Doge stuff
#
# Commands:
#   hubot doge me - Show a doge
module.exports = (robot) ->
  robot.respond /doge me/i, (msg) ->
    msg.send "http://d.ibtimes.co.uk/en/full/1354595/dogecoin-meme.jpg"
