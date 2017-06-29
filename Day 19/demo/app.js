const express = require('express');

const cookieParser = require('cookie-parser');
const app = express();
const path = require('path');
const logger = require('morgan');
const  bodyParser = require('body-parser');


const home = require('./routes/home')
const posts = require('./routes/posts')
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


//when using app.use 👇 to mount a router file, the first argument is a string that will prefix all
//url paths defined inside the router file
app.use('/',home);
app.use('/posts',posts);





//PORT is uppercased because we inted to be a constant.
//it shouldm't be changed after it's declared
const PORT = 4545;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
