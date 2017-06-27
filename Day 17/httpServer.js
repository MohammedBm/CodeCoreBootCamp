const http = require('http');
const url = require('url');

const server = http.createServer((request,response)=>{
  //this line will read the GEt paramertrs that we recive as part of the url
  //it will give us back a Javasciprt object with key/value pairs of those
  //params. for instance, if the user enters: http://localhost:5000/?name=john&age=10
  //then params will be: {name:'john',age:'10'}
  //note that values will always be written as string even if they are numerical
  const params = url.parse(request.url, true).query;
  //writeHead with help us set the heder for the http response
  //200 is http response code for sucess
  //we set the `Content-Type` header to `text/html`to let the clinet know
  //that we are spending back and html page
  response.writeHead(200,{'Content-Type':'text/html'});
  response.write(`
                      <!DOCTYPE html>
                      <html>
                      <head>
                        <title>My first web server</title>
                      </head>
                      <body>
                        <h1>Hello ${params.name}!</h1>
                      </body>
                      </html>
                  `);
    response.end();
});


server.listen(5000)
console.log(`HTTP server listening on port 5000`);
