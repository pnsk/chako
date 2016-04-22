cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 45 19 * * 1-5', () =>
    robot.send {room: "#general"}, "今日のご飯は何かな？"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '0 00 10 * * 1-5', () =>
    robot.send {room: "#general"}, "今日もお仕事頑張って〜"
  , null, true, "Asia/Tokyo"
