cronJob = require('cron').CronJob

messages = [
  "やふー"
]

lunchMessages = [
 "お腹すいたね(´º﹃º｀)",
 "今日は何食べるの(´º﹃º｀)??",
 "(´º﹃º｀)",
 "おなかすいた…（・ω・。`）"
]

message = messages[Math.floor(Math.random() * messages.length)]
lunchMessage = lunchMessages[Math.floor(Math.random() * messages.length)]

user = {}
user.name = "mi2hirohata"

envelope = user:user, room:"bot_test_room"

module.exports = (robot) ->
  # 秒 分 時 日 月 曜日
  # 曜日は1(日)~7(土)
  new cronJob
    cronTime: "00 * * * * *"
    onTick: ->
      robot.send envelope, lunchMessage
      return
    start: true
    timeZone: "Asia/Tokyo"
  new cronJob
    # 日曜8時の定例通知
    cronTime: "00 00 20 * * 1"
    onTick: ->
      robot.send envelope, "定例やりますよ ヽ(´・ω・`)/"
      return
    start: true
    timeZone: "Asia/Tokyo"
  new cronJob
    cronTime: "00 00 13 * * *"
    onTick: ->
      robot.send envelope, "お腹すいたね(´º﹃º｀)"
      return
    start: true
    timeZone: "Asia/Tokyo"
