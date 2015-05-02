cronJob = require('cron').CronJob

envelope = room:"random"

module.exports = (robot, user) ->
  new cronJob
    cronTime: "00 30 6 * * *"
    onTick: ->
      robot.send envelope, "おはようございます"
      return
    start: true
    timeZone: "Asia/Tokyo"
