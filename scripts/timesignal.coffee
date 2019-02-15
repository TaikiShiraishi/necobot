cron = require('cron').CronJob
time = require('time')

module.exports = (robot) ->
  new cron '0 32 21 * * 1-5', ->
    now = new time.Date()
    say = '@shiraishi ' + now.getHours() + '時' + now.getMinutes() + '分になりました'
    room = { room: '#times_shiraishi' }
    robot.send room, say
  , null, true, 'Asia/Tokyo'