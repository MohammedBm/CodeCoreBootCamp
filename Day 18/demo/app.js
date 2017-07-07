//Step 1: Create a project with ` yarn init`
//Step 2: Add express package with `yarn add express`
//Step 3: Create `app.js` file
//Step 4: Require express in `app.js`
//Step 5: Create a route to server `/hello/:name`
//Step 6: Have server, app listen on PORT
//Step 7: Install nodemon & add start script
const express = require('express');
//calling the express function will create an instance of
//a express web server
const app = express();
const logger = require('morgan');
const bodyParser = require('body-parser');
//configure our express app to use ejs as out templating engine
app.set('view engine', 'ejs');

//mkaing a part of the relate url begin with:, will make that matched section
//available as data in request.params under property named after the word that
//folows-> :.

app.use(logger('dev'))
app.use(bodyParser.urlencoded({
  extended: false
}));

// //URL: http://localhost:4545/hello/:name hhtp VERB: GET
// app.get('/hello/:name',( req, res)=> {
//   //this function is named middleware
//   //it's passed the arguments in order: request,response & navbar-text
//   // - request or req is an object that contains the entire message from
//   //client. This means http headers, any data its sending, etc.
//   // - response or res is an object that contains the message our server will reply
//   //with to the clinet. It also contains http headers, our own data, etc .
//   const name =  req.params.name || 'World'
//   res.send(`Hello, ${name}!!`);
// });

//URL: http://localhost:4545/index http VERB GET
app.get('/', function(req, res) {
  //res.render's first argument is the location and name of a template we want
  //to render beginning at views/
  res.render('index')
})

//URL: http://localhost:4545/contact http VERB GET
app.get('/contact', (req, res) => {
  res.render('contact', {
    contact: {}
  });
});


//URL: http://localhost:4545/contact http VERB POST
app.post('/contact', (req, res) => {
  //when a form post is patsed by bodyParser
  //its data is formated as a javascript object and it
  //assigened to the body property of request
  res.render('contact', {
    contact: req.body
  });
})

//unlike app.get, app.use will match for all http verbs
//if we do not give a path as the first argument, it will match for
//every URL
// app.use((req,res,next)=> {
//   console.log(`${req.method} - ${req.path} - ${new Date().toString()}`);
//   // next a function and third argument of middleware callback,
//   //express to move on to the next middleware
//   next();
//   //if you do not call next, or terminate a respone with response.send,
//   //the browser will appear to never stop loading when accessing a URl
//   //on your server
// });




//PORT is uppercased because we inted to be a constant.
//it shouldm't be changed after it's declared
const PORT = 4545;
app.listen(PORT, () => {
  console.log(`Server is listening to port ${PORT}`);
})
