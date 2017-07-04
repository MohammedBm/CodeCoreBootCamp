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
  const {tasks} = req.cookies;
  res.locals.tasks = tasks;
  next();
})


app.get('/',(req,res)=>{
  res.render('index')
})


app.post('/task',(req,res)=>{
  const   {task} = req.body;
  const tasks = req.cookies.tasks || []

  tasks.push(task)

  res.cookie('tasks', tasks, {maxAge: 1000*60*60*24});
  //the max options determines how long a cookie will last in milleseconds
  res.redirect('/show');
});

app.get('/show',(req,res)=>{
  const tasks = req.cookies.tasks
  res.render('/show', {tasks: tasks})
})


const PORT = 5050;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
