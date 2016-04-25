cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 20 * * 1-5', () =>
    robot.send {room: "#general"}, "今日のご飯は何かな？"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '0 0 10 * * 1-5', () =>
    robot.send {room: "#general"}, "今日もお仕事頑張って〜"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '0 45 0 * * *', () =>
    robot.send {room: "#general"}, "@channel そろそろ寝るよ"
  , null, true, "Asia/Tokyo"
