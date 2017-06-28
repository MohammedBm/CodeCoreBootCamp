const express = require('express');

//calling the express function will create an instance of
//a express web server
const app = express();

//mkaing a part of the relate url begin with:, will make that matched section
//available as data in request.params under property named after the word that
//folows-> :.


//URL: http://localhost:4545/hello/:name hhtp VERB: GET
app.get('/hello/:name',function( req, res) {
  //this function is named middleware
  //it's passed the arguments in order: request,response & navbar-text
  // - request or req is an object that contains the entire message from
  //client. This means http headers, any data its sending, etc.
  // - response or res is an object that contains the message our server will reply
  //with to the clinet. It also contains http headers, our own data, etc .
  const name =  req.params.name || 'World'
  res.send(`Hello, ${name}!!`);
});


//PORT is uppercased because we inted to be a constant.
//it shouldm't be changed after it's declared
const PORT = 4545;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
}
)
