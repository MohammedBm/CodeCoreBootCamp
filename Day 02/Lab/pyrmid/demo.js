let rows = parseInt(prompt("Enter the number of Rows"))
let k;
for(let i = 1; i <= rows;i++){
  for(let space = 1; space<= rows -i; space++){
    document.write(" ")
  }
  while(k != 2*i-1){
    document.write("*")
  }
  break;
}

for(let i = 0 ; i <5 ; i++){
  for(let c = 0 ; c<9;c++){
    if(Math.abs(4-c) <= i){
      document.write("*")
    }else{
      document.write(" ");
    }
  }
  document.write("<br />")
}

let space = "";
let star = "";
let n = 4
let n1 = n-1;
for(let x = 1; x<=n;x++){
  for(let y =n1 ; y>= 1; y-- ){
    space = space +(" ")
  }
  n1--;
  for(let k = 1; k <= x *2-1; k++){
    star = star + "#"
  }
  console.log(space+star);
  space = '';
  star = "";
}


//
// for(let i = 1; i<= 5 ;i++){
//   for(let j = 4 ; j>= i ; j--){
//       document.write(" ");
//   }
//   for(let k = 1; k<=(2*i-1);k++){
//     document.write(`*`);
//   }
//   document.write('<br/>')
// }
