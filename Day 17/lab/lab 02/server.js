const net = require('net');

const server = net.createServer((socket)=>{
  socket.write('Connection Opened!')

  socket.on("data", (data)=>{
    let nameFromClient = data.toString().split("").reverse().join("");
    // console.log(`${nameFromClient}!!`);
    socket.write(` ${nameFromClient}`)

  })

  socket.on('close',()=>{
    console.log(`clinet is no longer listening`);
  })

})

server.listen(3000,"127.0.0.1")
console.log("Server is listening to port 3000");
