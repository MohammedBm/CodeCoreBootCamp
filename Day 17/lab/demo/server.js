const net = require('net');

const server = net.createServer((socket)=>{

  socket.on('data',(data)=>{
    let nameFromClinet = data.toString();
    let capName = nameFromClinet.charAt(0).toUpperCase()+nameFromClinet.slice(1);
    socket.write(`Hello ${capName}!`)
  })

  socket.on('close',()=>{
    console.log(`Clinet is no longer communicating`);
  })


});


console.log("Server is listening to port 3000");
server.listen(3000,"127.0.0.1")
