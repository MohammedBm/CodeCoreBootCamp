# Introduction to Javascript - Part 2

## Functions
You can define a function in Javascript using the `function` keyword as in:
```js
// Define a function
const doubleIt = function(a) {
  console.log(a * 2);
};

// Call a function
doubleIt(5);
```
Note from the example about that you can assign a function to a variable and pass it around. This is one reason to say that functions are first class citizens in Javascript. You can also define a function as in:
```js
function doubleIt(a) {
  console.log(a * 2);
};

// Call a function
doubleIt(5);
```

### Returning a Value from Functions
In Javascript you have to be explicit about returning a value from a function by using the `return` keyword. Otherwise, you will get `undefined` back from the function:
```js
const doubleIt = function(a) {
  return a * 2;
}
```
## Scope
Scope is part of a program where a variable can be used
```js
let tmp = "I'm global";
function func() {
  let tmp = "I'm local"; // same name as global
  console.log (tmp);     
}
func();   // output: "I'm local"
console.log(tmp);     // output: "I'm global"
```

This scoping behavior is called lexical scope.  `let` & `const` are scoped to its surrounding block while `var` is scoped to its surrounding function.

```js
function func() {
  if (true) {
    const a = 123; // Declared with const
    let b = 456; // Declared with let
  }
  console.log(a);
  // ReferenceError: a is not defined
  console.log(b);
  // ReferenceError: b is not defined
}
```
`const` & `let` were declared inside the `if` block. A block being delimited by both `{ }`.  Because they are block scoped, we can only use them inside the `if` block.

```js
function func() {
  if (true) {
    var a = 123; // Declared with var
  }
  console.log(a); // 123
}
```

`var` is function scope. Even though it’s been declared inside the `if` block, it’s actually accessible to the entire surround function.

```js
function func() {
  const foo = 5;
  if (···) {
    const foo = 10; // shadows outer `foo`
    console.log(foo); // 10
  }
  console.log(foo); // 5
}
```

## Arrays
Arrays are ordered list of elements. Arrays in Javascript can include any type of values or objects in it. You can create an array using square brackets as in:
```js
let myArray = [1,2,3, "Hello world", false];
```
### .length
You can use the `length` property to get the number of elements in the array:
```js
let myArray = [1,2,3];
myArray.length; // this returns 3
```
Notice that `length` is a property and not a method. Also note that if you have `undefined` as elements in the array, they are still treated as elements. For example:
```js
let myArray = [1,2,3];
myArray[6] = 100; // myArray now looks like: [1,2,3, undefined, undefined, undefined, 7]
myArray.length // this returns 7
```

### `.push` and `.pop`
You can use `.push` to add an element to the end of the array. You can use `.pop` to fetch and remove an element from the end of the array as in:
```js
let myArray = [1,2,3];
myArray.push(4); // this returns 4 (new array size) and myArray is now: [1,2,3,4]
myArray.pop(); // this returns 4 and myArray now is [1,2,3]
```

### `.shift` and  `.unshift`
You can use `.unshift` to add an element to the beginning of an array and you can use `.shift` to remove an element from the beginning of an array as in:
```js
let myArray = [1,2,3];
myArray.unshift(0); // this returns 4 (new array size) and myArray is now: [0,1,2,3]
myArray.shift(); // this returns 0 and myArray is now: [1,2,3]
```

### `.slice`
You can use the `.slice` method to generate a subarray from your array. For example:
```js
let myArray = [1,2,3,4,5,6,7];
myArray.slice(2,4); // this returns: [3, 4]
myArray.slice(3); // this returns: [4, 5, 6, 7]
```

### `.split` and `.join`
You can use the `.split` method on strings to get an array of characters or words as in:
```js
let sentence = "Hello World";
sentence.split(" "); // This returns: ["Hello", "World"]
sentence.split("");  // This returns: ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"]
```
You can use `.join` method to generate a string from an array as in:
```js
let words = ["Hello", "World"];
words.join(" "); // this returns "Hello World"
```
### Looping Through an Array
You can loop through an array using a for loop as in:
```js
let myArray = [1,2,3];
for(let i = 0; i < myArray.length; i++) {
  console.log(myArray[i]);
}
```
This is the most compatible way to loop through an array. You can use `forEach` and other methods to iterate through an array but they may not work in all browsers.

In addition, there is the `for .. of` syntax: `for(let element of myArray)`   

For example, if we wanted to iterate over an array of letters:

```js
let letters = ['a', 'b', 'c', 'd']
for (let letter of letters) {
  console.log(letter);
}
```

## Objects
Javascript objects are data structures that enables you to store key/value pairs:
```js
const myObject = {
  a: 5,
  b: 6,
  c: 7
};
```
You can access the object in two ways, using the dot `.` operator:
```js
const myObject = {
  a: 5,
  b: 6,
  c: 7
};
console.log(myObject.a);
```
You can also access a value in the object using square brackets notation:
```js
const myObject = {
  a: 5,
  b: 6,
  c: 7
};
console.log(myObject["a"]);
```
Note that all keys for Javascript objects must be strings.

### Object-ception
Object value can be any type of Javascript values or objects including arrays and objects:
```js
const obj = {
  a: [1, 2, 3],
  b: { c: 6 }
};

console.log(obj.a[2] + obj.b.c);
```

### `delete` function
You can remove an element from a Javascript object using the `delete` function as in:
```js
const myObject = {
  a: 5,
  b: 6,
  c: 7
};
delete(myObject.a); // myObject is now: {b: 6, c: 7};
```

### Looping through an Object
You can loop through an object using a `for` loop as in:
```js
for (let key in object) {
  console.log("key " + key + ", value " + object[key]);
}
```
