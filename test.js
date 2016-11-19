require('./app.js')('.env',function(flag){
  console.log(flag);
  console.log("KEY :"+process.env.key);
});
