const net = require('net');

const server = net.createServer((socket)=>{

  socket.on('data',(data)=>{
    let numbers = data.toString().split(',').map((num)=>{
      return parseInt(num)
    });

    let max = Math.max(...numbers)
    socket.write(`The largest number is ${max}`)
  })

  socket.on('close',function(){
    console.log(`clinet is no longer listening`);
  })


})



console.log("Server is listening to port 3000");
server.listen(3000,"127.0.0.1")
