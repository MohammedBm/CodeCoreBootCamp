const express = require('express');

const cookieParser = require('cookie-parser');
const app = express();
const path = require('path');
const logger = require('morgan');
const  bodyParser = require('body-parser');

app.set('view engine', 'ejs');


app.use(logger('dev'))
//__dirname is a global varibke provided by node which holds absoulte path to
//the file where it is used.
//(i.e. "/users/mohammedbamhrz/Bootcamp/Day\ 19/demo")
app.use(express.static(path.join(__dirname,`public`)))
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());

app.use(function(req,res,next){
  const {username} = req.cookies;

  res.locals.username = username;
  next();
})

//URL: http://localhost:4545/index http VERB GET
app.get('/',function(req,res){
  res.render('index')
})

//URL: http://localhost:4545/contact http VERB GET
app.get('/contact',(req,res)=>{
  res.render('contact',{contact:{}});
});


//URL: http://localhost:4545/contact http VERB POST
app.post('/contact', (req,res)=>{
  res.render('contact', {contact: req.body});
})
//url http://localhost:4545/username HTTP:verb POST
app.post('/username',(req,res)=>{
  const   {username} = req.body;
  //the line above is a short cut to this line
  //const username = req.body.username
  //res.cookie is a method added by the cookie-parser. its a convenient
  //way to set cookes in the header of the response
  // - the first arugument is the name of the cookie
  // - the second arugument is the value of the cookie
  // -  the third and the last item is object to configure the cookie
  res.cookie('username', username,{maxAge: 1000*60*60*24});
  //the max options determines how long a cookie will last in milleseconds

  res.redirect('/');
});










//PORT is uppercased because we inted to be a constant.
//it shouldm't be changed after it's declared
const PORT = 4545;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
