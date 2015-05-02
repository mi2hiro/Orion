cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob
    cronTime: "00 * * * * *"
    onTick: ->
      robot.send {room: "bot_test_room"}, "朝会やりますよ ヽ(´・ω・`)/"
      return
    start: true
    timeZone: "Asia/Tokyo"
