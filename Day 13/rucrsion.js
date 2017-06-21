// function reverse([first, ...rest]){
//   if (rest.length === 0){
//     return first;
//   }
//   return rest.reverse().join("") + first;
//   }
//
//
// console.log(reverse("hello"));

// let arr = []
// function times([first, ...rest]){
//   if (rest.length === 0){
//     arr.push(first*first)
//     return arr;
//   }
//   arr.push(first*first)
//   return times(rest)
//
// }

// console.log(times([1,2,3,4]))

// function powMap([first,...rest]){
//   if(rest.length ===0) return[first*first];
//
//   return[first*first,...powMap(rest)];
// }
//
// console.time(powMap([1,2,3,4]));

//
// function fac(n) {
//   if (n === 0) {
//     return 1;
//   }else{
//     //Recursion!!
//     return n * fac(n - 1);
//   }
// }
//
//
// function factorial(num){
//     let total = 1;
//     while (num >= 1 ){
//     total = total + num
//     num -= 1
//     }
//     return total;
// }
//


function factorial(number){
  if (number === 0){
    return 1;
  }
  return number * factorial(number - 1);
}

function factorialIter(number){
  let total = 1;
  while (number >= 1){
    total = total * number;
    number -= 1;
  }
  return total;
}

console.time('min recursive');

for (let i; i <10000; i++){
  factorial(10000);
}

console.timeEnd('min recursive');

console.time('min iterative');
for (let i = 1; i< 10000;i++){
factorialIter(10000);
}
console.timeEnd('min iterative');
