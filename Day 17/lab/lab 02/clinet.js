const readline = require('readline');
const net = require('net');
const client = new net.Socket();


const interface = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


client.on("data",(response)=>{
  console.log(` server says : ${response}`);

  interface.question("What is your name?\n", function(userInput){
    client.write(userInput)
  })
})




client.connect(3000,"127.0.0.1")
