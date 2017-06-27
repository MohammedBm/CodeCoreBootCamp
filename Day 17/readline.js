const readline = require('readline');

//We're defining an interface that makes it so we take input from the user using
//standred in (stdin) which what the user types in the terminal and output(stdout)
// which is what get printed in the temrinal

const interface = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});



//question is a special function from createInterface
//            v
interface.question("What is your name?\n",function(userInput){
  console.log(`Hello ${userInput}`);
  process.exit()
})
