const express = require('express');
const router = express.Router();


router.get('/hello/:name', function (request, response) {
  // This function is named Middleware
  // It's passed the arguments in order: request, response & next
  // - request is an object that contains the entire message from
  //   client. This means http headers, any data its sending, etc.
  // - response is an object that contains the message our server will
  //   reply with to the client. It also contains http headers, our own data, etc.
  const name = request.params.name || 'World';
  response.send(`Hello, ${name}!`);
});


//URL: http://localhost:4545/index http VERB GET
router.get('/',function(req,res){
  res.render('index')
})

//URL: http://localhost:4545/contact http VERB GET
router.get('/contact',(req,res)=>{
  res.render('contact',{contact:{}});
});


//URL: http://localhost:4545/contact http VERB POST
router.post('/contact', (req,res)=>{
  res.render('contact', {contact: req.body});
})
//url http://localhost:4545/username HTTP:verb POST
router.post('/username',(req,res)=>{
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

module.exports = router;
