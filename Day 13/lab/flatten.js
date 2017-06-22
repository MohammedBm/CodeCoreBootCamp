wlet array = ([ 1, 2, [3, [4, 5] ] ,[2,[3,[4]]]])
let result = flatten(array)

//original method---not working

// function flatten(array) {
//     let flat = [];
//     if(array !== undefined){
//         console.log('worked');
//       for (var i = 0; i < flat.length; i++) {
//         console.log('entered for loop');
//             if (flat.isArray([i])) {
//               flat = flat.concat(flatten.apply(null, flat[i]));
//             } else {
//               flat.push(flat[i]);
//             }
//           }
//       }
//     return flat;
// }



// edited from original
function flatten(array) {
    let flat = [];
      for (let i = 0; i < array.length; i++) {
            if (Array.isArray(array[i])) {
              flat = flat.concat(flatten(array[i]))
            } else {
              flat.push(array[i]);
            }
          }
    return flat;
}


// Jeason
// function flatten(array) {
//   let result = []
//
//   for (let i = 0; i < array.length; i++) {
//     if (Array.isArray(array[i])) {
//       result = result.concat(flatten(array[i]));
//     } else {
//       result.push(array[i])
//     }
//   }
//   return result
// }


//jeason second method
// function flatten([beginning, ...remaining]) {
//   if (beginning === undefined) {
//     return [];
//   }
//   else if (Array.isArray(beginning)) {
//     return [...flatten(beginning), ...flatten(remaining)];
//   }
//   else {
//     return [beginning, ...flatten(remaining)];
//   }
// }


//stack
// function flatten(array) {
//     if(array !== undefined){
//     var flat = [];
//     for (var i = 0; i < arguments.length; i++) {
//           if (arguments[i] instanceof Array) {
//             flat = flat.concat(flatten.apply(null, arguments[i]));
//           } else {
//             flat.push(arguments[i]);
//           }
//         }
//       }
//     return flat;
// }


console.time('min iterative');
  console.log(result);
console.timeEnd('min iterative');

let array1 = ([ 1, 2, [3, [4, 5] ] ,[2,[3,[4]]]])
let result1 = flatten1(array1)

function flatten1(first,...rest) {
  const flat = [];

  first.forEach(function(rest)  {
    if (Array.isArray(rest)) {
      flat.push(...flatten1(rest));
    } else {
      flat.push(rest);
    }
  });

  return flat;
}

console.time('min Recursion');
  console.log(result1);
console.timeEnd('min Recursion');
