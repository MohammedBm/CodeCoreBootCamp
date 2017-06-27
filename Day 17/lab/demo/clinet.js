const net = require('net');

const socket = new net.Socket();

let name = 'allain'
socket.on("data",(response)=>{
  console.log(` server says : ${response}`);
  process.exit();
})


socket.connect(3000,"127.0.0.1",()=>{
  socket.write(name)
})
