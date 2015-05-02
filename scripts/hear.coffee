respondHIMessage = [
  "、元気？",
  "、眠たいね Zzz"
]

cronJob = require('cron').CronJob

Array::toDict = (key) ->
  @reduce ((dict, obj) -> dict[ obj[key] ] = obj if obj[key]?; return dict), {}

nicName = [
  {
    name: "mi2hirohata"
    nic: "はたぼー"
  },
  {
    name: "koma2hiroki"
    nic: "ひろき"
  },
  {
    name: "hidayuko"
    nic: "ゆこ"
  }
].toDict('name')

console.log(nicName)

module.exports = (robot) ->
  robot.hear /はろー/, (msg) ->
    msg.reply '遊んでないで働け!!'
  robot.hear /HI$/i, (msg) ->
    # ユーザー指定の返信完成
    username = msg.message.user.name
    nic = nicName[username].nic
    message = msg.random respondHIMessage
    msg.send "#{nic}#{message}"
