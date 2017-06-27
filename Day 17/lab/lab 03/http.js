const http = require('http');
const url = require('url');

const server = http.createServer((request,response)=>{



  const params = url.parse(request.url, true).query;


  function grade(str){
    if(str >= 85){
      return "A"
    }else if ( str >= 75){
      return "B"
    } else if (str >= 65 ){
      return "C"
    }else if (str >= 50){
      return "D"
    }else if (str <= 49) {
      return "F"
    }
  }


  response.writeHead(200,{'Content-Type':'text/html'});
  response.write(`
                      <!DOCTYPE html>
                      <html>
                      <head>
                        <title>My first web server</title>
                      </head>
                      <body>
                        <h1>Hello ${grade(params.name)}!</h1>
                      </body>
                      </html>
                  `);
    response.end();
});


server.listen(5000)
console.log(`HTTP server listening on port 5000`);
