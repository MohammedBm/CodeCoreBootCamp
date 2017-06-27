const readline = require('readline');

let randomNumber = Math.round(Math.random()*10);
let lives = 5;


let client = readline.createInterface({
  input:process.stdin,
  output: process.stdout
});

client.setPrompt("Guess the nubmer! (0-10): ")
client.prompt();
client.on('line',(answer)=>{
  let answerNum = parseInt(answer);

  if(answerNum > randomNumber){
    console.log(`Too High!`);
    console.log(`You have ${lives} lives left`);
  }else if (answerNum<randomNumber) {
    console.log('Too Low!!!');
    console.log(`You have ${lives} lives left`);
  }else if(answerNum===randomNumber){
    console.log('WINNNNNERRRRR!!!!!!');
    console.log(`You lost only ${6 - lives} lives`);
    process.exit();
  }else {
    console.log("That wasn't a number i recognise");
    console.log(`You have ${lives} lives `);
  }
  lives--;
  if(lives==0){
    console.log('GAMEEOVEERRRRR!!!!!');
    process.exit();
  }

  client.prompt();
})


client.on('close', function() {
  console.log('C H I C K E N :P')
  process.exit(1);
});
