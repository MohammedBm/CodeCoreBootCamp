// Question 2: Stacks & Queues
// Implement a Stack and a Queue data structure in Javascript.
//
// Explain the difference between a stack and a queue.
// Write a Javascript constructor called Stack and another Javascript class
// called Queue.
// Each should have a prototype method, add, that adds an element to the stack
// or queue and returns it.
// Each should have a prototype method, remove, that removes an element from the
// stack or queue and returns it.
// Make sure that each constructor/class behaves properly as per definitions of


/* STACK */
function Stack() {
  this.array = [];
}

Object.assign(Stack.prototype,
  {
    add(element) {
      this.array.push(element);
      return this.array;
    },
    remove() {
      this.array.pop();
      return this.array;
    }
  }
)

// Test
const testingStack = new Stack();
console.log(testingStack.add("a")); // ['a']
console.log(testingStack.add("b")); // ['a', 'b']
console.log(testingStack.add(1));   // ['a', 'b', 1]

console.log(testingStack.remove()); // ['a', 'b']

/* QUEUE */

class Queue {
  constructor() {
    this.array = [];
  }
  add(element) {
    this.array.push(element);
    return this.array;
  }
  remove() {
    this.array.shift();
    return this.array;
  }
}

// Test
const testingQueue = new Queue;

console.log(testingQueue.add("a")); // ['a']
console.log(testingQueue.add("b")); // ['a', 'b']
console.log(testingQueue.add(1));   // ['a', 'b', 1 ]

console.log(testingQueue.remove()); // ['b', 1 ]
