
function max(array) {
  var largest = array[0];

  for (var i = 0; i < array.length; i++) {
    if (largest < array[i]) {
      largest = array[i];
    }
  }
  return largest;
}




console.time('min iterative');
console.log(max([2,4,5,64,45,123,2,1]));
console.timeEnd('min iterative');



function max2(array) {
    function max (a, ...r) {
        if (!r.length) return a;
        if (a > r[0]) r[0] = a;
        return max(...r);
    }
    return max(...array);
}

console.time('min Recursion');
console.log(max2([2,4,5,64,45,222,2,1]));
console.timeEnd('min Recursion');
