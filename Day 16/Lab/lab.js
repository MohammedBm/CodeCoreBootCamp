//ex.1

function numberSeq(begin=0, step=1){
  let counter = begin - step;
  return ()=>{return counter += step;};
}
//method2
function numberSeq(begin = 0, step = 1) {
  let counter = begin - step;
  return () => counter += step;
}

//ex.2
const filter = function([first, ...rest], callbackFunction) {
  if (!first) {
    return []
  } else if(callbackFunction(first)) {
    return [first, ...filter(rest, callbackFunction)]
  } else {
    return filter(rest, callbackFunction)
  }
}

// ex.3

const reduce = function(arr, callbackFunc) {
 let sum = arr[0];
for (let i = 1; i < arr.length; i++) {
   sum = callbackFunc(sum, arr[i], i);
 }
return sum;
}

//ex,4
function reduce([first, ...rest], fn){
  if (rest.length === 0) {
    return first;
  }
  else {
    return fn(first, reduce(rest, fn));
  }
}
1 Comment
