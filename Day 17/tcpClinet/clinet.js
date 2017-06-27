const net = require('net');

const socket = net.Socket();

//this tells the clinet that every time we recive data back we log the data
//to the console
socket.on("data",(data)=>{
  console.log(`Data received from server ${data}`);
  process.exit();
  })

//we actually make the request in here
socket.connect(3000,"127.0.0.1",()=>{
  socket.write("hello from the clinet!")
})
