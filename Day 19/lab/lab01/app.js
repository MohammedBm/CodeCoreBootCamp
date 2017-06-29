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
  const {cookieName} = req.cookies;
  res.locals.cookieName = cookieName;
  const {preLang} = req.cookies
  res.locals.preLang = preLang
  next();

})


app.get('/',(req,res)=>{
  res.render('index')
})


app.post('/cookieName',(req,res)=>{
  const   {cookieName} = req.body;
  const   {preLang} = req.body;
  res.cookie('preLang', preLang,{maxAge: 1000*60*60*24});
  res.cookie('cookieName', cookieName,{maxAge: 1000*60*60*24});
  //the max options determines how long a cookie will last in milleseconds

  res.redirect('/');
});




const PORT = 5050;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
