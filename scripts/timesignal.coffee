cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronjob = new cronJob(
    // Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
    cronTime: "0 5 21 * * 1-5"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      now new time.Date()
      robot.send { room: "#times_shiraishi", "@shiraishi" + now.getHours()+"時"+now.getMinutes()+"分"になりました}
  )
