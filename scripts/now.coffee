
class Time
  getDatetime: ->
    days = ["日", "月", "火", "水", "木", "金", "土"]
    d = new Date
    return class
      @year  = d.getFullYear()     # 年（西暦）
      @month = d.getMonth() + 1    # 月
      @date  = d.getDate()         # 日
      @hour  = d.getHours()        # 時
      @min   = d.getMinutes()      # 分
      @dayOfWeek = days[d.getDay()]# 曜日

time = new Time
datetime = time.getDatetime()

module.exports = (robot) ->
  robot.respond /NOW$/i, (msg) ->
    msg.send "#{datetime.year}年#{datetime.month}月#{datetime.date}日(#{datetime.dayOfWeek})#{datetime.hour}時#{datetime.min}分"
