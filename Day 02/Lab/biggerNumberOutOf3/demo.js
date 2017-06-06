let num1 = parseInt(prompt("Enter your First number"));
let num2 = parseInt(prompt("Enter your Second number"));
let num3 = parseInt(prompt("Enter your Third number"));
// console.log(`The biggeest number is ${Math.max(num1,num2,num3)}`);

max = 0
if((num1 >= num2) && (num1 >= num3)){
    max = num1;
    console.log(`The highest number is the First ${max}`);
}
else if((num2 >= num1) && (num2 >= num3)){
    max = num2;
    console.log(`The highest number is the Second ${max}  }`);
}
else{
  console.log(`The highest number is the Third ${max}`);
}
