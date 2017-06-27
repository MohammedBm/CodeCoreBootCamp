const net = require('net');

const clinet = new net.Socket();

const numbers = '1,23,49,12,120,0,43,5'

clinet.on("data",(response)=>{
  console.log(` server says : ${response}`);
  process.exit();
})


clinet.connect(3000,"127.0.0.1",()=>{
  clinet.write(numbers)
})
