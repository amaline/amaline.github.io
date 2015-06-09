var Client = require('uptime-robot');
var cl = new Client(process.env.UPTIME_ROBOT_API_KEY);
cl.getMonitors({}, function (err, res) {
  if (err) throw err;
  console.dir(res);
});
