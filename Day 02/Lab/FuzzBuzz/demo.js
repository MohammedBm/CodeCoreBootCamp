let num1  =  parseInt(prompt("Enter your first Number between 1 and 100"));
let num2  =  parseInt(prompt("Enter your first Number between 1 and 100"));

for(i=1 ; i <100 ; i++){
  if(i % num1  == 0 && i % num2 ==0){
    console.log("FizzBuzz");
  }else if(i % num1 == 0){
    console.log("Fizz");
  }else if(i % num2 == 0){
    console.log("Buzz");
  } else {
    console.log(i);
  }
}
