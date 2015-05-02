cronJob = require('cron').CronJob

messages = [
  "やふー"
]

message = messages[Math.floor(Math.random() * messages.length)]

user = {}
user.name = "mi2hirohata"

envelope = user:user, room:"random"

module.exports = (robot, user) ->

  # 秒 分 時 日 月 曜日
  # 曜日は1(日)~7(土)
  new cronJob
    # 日曜8時の定例通知
    cronTime: "00 00 20 * * 1"
    onTick: ->
      robot.send envelope, message
      return
    start: true
    timeZone: "Asia/Tokyo"
  new cronJob
    cronTime: "00 00 13 * * *"
    onTick: ->
      robot.send envelope, "お腹すいたね"
      return
    start: true
    timeZone: "Asia/Tokyo"
  new cronJob
    cronTime: "00 30 6 * * *"
    onTick: ->
      robot.send envelope, "おはようございます"
      return
    start: true
    timeZone: "Asia/Tokyo"
