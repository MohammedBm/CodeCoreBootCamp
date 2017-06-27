const http = require('http');
const url = require('url');

const server = http.createServer((request,response)=>{



  const params = url.parse(request.url, true).query;

  function roundToTwo(num) {
      return +(Math.round(num + "e+2")  + "e-2");
  }


  function toCelsius(f) {
      return roundToTwo((5/9) * (f-32));
  }



  response.writeHead(200,{'Content-Type':'text/html'});
  response.write(`
                      <!DOCTYPE html>
                      <html>
                      <head>
                        <title>My first web server</title>
                      </head>
                      <body>
                        <h1>Hello ${toCelsius(params.temp)}!</h1>
                      </body>
                      </html>
                  `);
    response.end();
});


server.listen(5000)
console.log(`HTTP server listening on port 5000`);
