cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 30 18 * * 1-5', ->
    now = new time.Date()
    say = '稼働管理表を記入しましょう！！'
    room = { room: '#random' }
    robot.send room, say
  , null, true, 'Asia/Tokyo'