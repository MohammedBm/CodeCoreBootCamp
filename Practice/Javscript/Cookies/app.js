const express = require('express');

const app = express();
const path = require('path');
const logger = require('morgan');
const  bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');

app.set('view engine', 'ejs');

app.use(logger('dev'))


app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());


app.use(function(req,res,next){
  const {UserName} = req.cookies;
  res.locals.UserName = UserName;
  const {games} = req.cookies;
  res.locals.games = games
  next();
})





app.get('/',(req,res)=>{
  res.render('index')
})

app.post('/UserName',(req,res)=>{
  const {UserName} = req.body;
  const {games} = req.body;
  res.cookie('games', games,{maxAge: 1000*60*60*24});
  res.cookie('UserName', UserName,{maxAge: 1000*60*60*24});
  res.redirect('/')
});



const PORT = 9000;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
