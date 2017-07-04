const express = require('express');
const cookieParser = require('cookie-parser');
const app = express();
const path = require('path');
const logger = require('morgan');
const  bodyParser = require('body-parser');
const faker = require('faker');
const cookieName = 'tweets';

app.set('view engine', 'ejs');


app.use(logger('dev'))
app.use(express.static(path.join(__dirname,`public`)))
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());

//


app.get('/',(req,res)=>{
  res.render('home')
});


app.get('/dashboard',(req,res)=>{
  let tweets = getTweet(req,res)
  sortTweets(tweets);
  res.render('dashboard',{faker,tweets})
});


app.post('/dashboard', function(req, res) {
  const params = req.body;

  let tweet = makeTweet(params.username, params.message);

  saveTweet(req, res, tweet);

  let tweets = getTweet(req, res);
  sortTweets(tweets)
  res.render('dashboard', {faker, tweets})
  // */
});


function makeTweet(name, message) {
  let tweet = {
    name: name,
    body: message.slice(0, 256)
  };
  return tweet;
}

function saveTweet(req, res, tweet) {
  let tweets = getTweet(req, res);
  tweets.push(tweet);
  res.cookie(cookieName, tweets);
}


function getTweet(req, res) {
  return req.cookies[cookieName] || []
}
function sortTweets(tweets) {
  tweets = tweets.sort(function (a, b) {
    return a.body.length - b.body.length;
  }).reverse();
  return tweets;
}


const PORT = 4000;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
