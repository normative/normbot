# Description:
#   Requisite Doge stuff
#
# Commands:
#   hubot doge me - Show a doge
module.exports = (robot) ->
  robot.respond /doge me/i, (msg) ->
    q = v: '1.0', rsz: '8', q: "doge", safe: 'active'
    msg.http('http://ajax.googleapis.com/ajax/services/search/images')
      .query(q)
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.responseData?.results
        if images?.length > 0
          image  = msg.random images
          msg.send "#{image.unescapedUrl}#.png"
