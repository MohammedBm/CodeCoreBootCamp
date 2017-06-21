



function fibonacci(num){
  let n1 = 0;
  let n2 = 1;
  let  input = Array.from({length:num+1},(v,i) => i)
  let result = 0;
  for(let i = 0; i < input.length ; i++){
    if(i == 1 ){
      result =  input[i +n1]
    }else if (i==2) {
      result =  input[i + n2+1]
      for(let j = 1; j < n2;j++){
        n2++;
      }
    }else{
      result = input[i+n1] + input[i+n2]
    }
  console.log(result);
  }
}





//
//
// fib = function(numMax){
//     for(var fibArray = [0,1], i=0,j=1,k=0; k<numMax;i=j,j=x,k++ ){
//         x=i+j;
//         fibArray.push(x);
//     }
//     console.log(fibArray);
// }




  console.time('min iterative');
  fibonacci(10)
  console.timeEnd('min iterative');


function fibonacci(num) {
  if (num <= 1) return 1;
  return fibonacci(num - 1) + fibonacci(num - 2)
}
//
// var fibonacci = function (n)
// {
//   if (n===1)
//   {
//     return [0, 1];
//   }
//   else
//   {
//     var s = fibonacci(n - 1);
//     s.push(s[s.length - 1] + s[s.length - 2]);
//     return s;
//   }
// };

console.time('min Recursion');
  console.log(fibonacci(10));
console.timeEnd('min Recursion');
