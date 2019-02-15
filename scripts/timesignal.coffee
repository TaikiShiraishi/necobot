cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 30 21 * * 1-5', ->
    say = '@shiraishi' + now.getHours() + '時' + now.getMinutes() + '分になりました'
    room = { room: '#times_shiraishi' }
    robot.send room, say
  , null, true, 'Asia/Tokyo'