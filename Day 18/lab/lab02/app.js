const express = require('express');

const app = express();
const logger = require('morgan');
const  bodyParser = require('body-parser');

app.set('view engine', 'ejs');
app.use(logger('dev'))
app.use(bodyParser.urlencoded({extended: false}));



// const name = Array.from();

const randomName = function(namesInput) {
  let randomNumber = Math.floor(Math.random() * namesInput.length);
  return namesInput[randomNumber];
}


app.get('/', (req,res)=>{
  res.render('index', {name: ''});
});

app.post('/', (req,res)=>{
  let allNames = req.body.names.split(',')
  let randName = randomName(allNames)
  res.render('index',{name: randName})
})


app.get('/team',(req,res)=> {
  res.render('team', {team: ''})
})


app.post('/team', (req,res)=>{
  const {teamType} = req.body;
  let allTeams = req.body.team.split(',')
  let randTeam = randomTeam(allTeams,count)
  res.cookie('teamType', teamType,{maxAge: 1000*60*60*24});

})








const PORT = 5050;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
