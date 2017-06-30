// Question 3: Digit Product Sequence
// A digit product sequence is a type of sequence where the next number in
// the sequence is calculated by adding the product of each digit of the number
// and the number.
// 1,  2,  4,  8, 16, 22, 26, 38, 62
// The above are the first 9 numbers of the sequence.
// Write a function, digitProduct, that takes a number, n, as an argument and
// calculates the nth number in the sequence.
// For example:
// digitProduct(3) // returns 4
// digitProduct(6) // returns 22
// digitProduct(9) // returns 62

// 1,  2,  4,  8, 16, 22, 26, 38, 62

// 1. Implement it iteratively
function digitProduct(n) {
  let output = [1];
  // let outLength = output.length;
  // This loop doesn't work when I declare output.length here. ??

  while (output.length != n) {
    let lastElement = output[output.length - 1];

    if (lastElement < 10) {
      output.push(lastElement + lastElement);
    } else {
      let numToStr = lastElement.toString();
      let digit = numToStr.split('');
      let total = digit[0] * digit[1] + lastElement;
      output.push(total);
    }
  }
  return output[n - 1];
}

// 2. Implement it recursively
function recursiveDigitProduct(n, output = [1]) {
  let outLength = output.length;
  let lastElement = output[output.length - 1]; // 1

  if (outLength === n) {
    return output[n - 1];
  } else if (lastElement < 10) {
    output.push(lastElement + lastElement);
    return recursiveDigitProduct(n, output);
  } else {
    let numToStr = lastElement.toString();
    let digit = numToStr.split('');
    let total = digit[0] * digit[1] + lastElement;
    output.push(total);
    return recursiveDigitProduct(n, output);
  }
}

// 3. Benchmark the results
console.time("digitProduct");
for(let i = 0; i < 10000000; i++) {
  digitProduct(6);
}
console.timeEnd("digitProduct");

console.time("recursiveDigitProduct");
for(let i = 0; i < 10000000; i++) {
  recursiveDigitProduct(6);
}
console.timeEnd("recursiveDigitProduct");
