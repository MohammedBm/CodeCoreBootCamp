const express = require('express');

const app = express();
const logger = require('morgan');
const  bodyParser = require('body-parser');

app.set('view engine', 'ejs');
app.use(logger('dev'))
app.use(bodyParser.urlencoded({extended: false}));



const years = Array.from({length: 10}, (index, year) =>2017 - year);

app.get('/',(req,res)=>{
  res.render('index',{index:{}, years:years});
});

app.post('/',(req,res)=>{
  res.render('index',{index: req.body,years:years})
})











const PORT = 5050;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
