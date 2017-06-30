// Question 1: Ruby Hashes
// Implement a Ruby like Hash in Javascript. You will be able to use Object as
// a base to get most of the behaviour.

// Name the class Hash.
// Its constructor will take an object as argument.
// It should add support for the following ruby Hash methods as prototype methods:
// .empty (name it .isEmpty in Javascript)
// .merge (merges both hashes into a new hash and returns it)
// .hasKey (checks if key is in hash)
// .invert (returns a new Hash with keys & their values and vice versa)
// .inspect(display the hash ruby style as a string)
// .keys (returns all hash keys in an array)
// .values (returns all hash values in an array)
// All methods that return a hash must return a new Hash object.
// Don't overthink this. Javascript Objects and Ruby Hashes are similar.
// Example usage:

class Hash {
  constructor(obj) {
    this.obj = obj;
  }

  isEmpty() {
    if(Object.keys(this.obj).length == 0){
      return false;
    }else{
      return true;
    }
  }

  merge(mergingObj) {
    return new Hash(Object.assign({}, this.obj, mergingObj.obj));
  }

  hasKey(key) {
    return this.obj.hasOwnProperty(key)
    // ? true : false;
  }

  invert() {
    let newHash = {};

    for (let prop in this.obj) {
      newHash[this.obj[prop] + ''] = prop;
      //  newHash[this.obj[prop].toString()] = prop;
      //  newHash[String(this.obj[prop])] = prop;
      //  which one is faster?
    }
    return newHash;
  }

  inspect() {
    let newObj = '{';
    let lastKey = this.keys().pop();

    for (let key in this.obj) {
      newObj += `'${key}' => ${this.obj[key]} ${key === lastKey ? '}' : ', '}`
    } // if the key is the last one of the object, it will add '}' instead of ', '
    return newObj;
  }

  keys() {
    return Object.keys(this.obj);

    /* with for loop
    let output = [];
    for(let prop in this.obj) {
      output.push(prop);
    }
    return output; */
  }
  values() {
    return Object.values(this.obj);

    /* with for loop
      let output = [];
      for(let value in this.obj) {
        output.push(this.obj[value]);
      }
      return output; */
  }
}



// Test
let emptyHash = new Hash({});
let hash = new Hash({
  a: 1,
  b: 2,
  c: 3
});

console.log(hash.isEmpty()) // returns false
console.log(emptyHash.isEmpty()) // returns true

let merged = hash.merge(new Hash({bob: 'yo', jane: 'ya'}));
console.log(merged);
// returns Hash {a: 1, b: 2, c: 3, bob: 'yo', jane: 'ya'}

console.log(hash.hasKey('a')); // returns true
console.log(hash.hasKey('bob')); // returns false
console.log(merged.hasKey('bob')); // returns true
// console.log(typeof merged); // returns true

console.log(hash.invert()); // returns Hash {'1':'a', '2':'b', '3':'c'}
console.log(hash.inspect()); // returns "{'a' => 1, 'b' => 2, 'c' => 3}"
console.log(hash.keys()); // returns ['a', 'b', 'c']
console.log(hash.values()); // returns [1, 2, 3]
