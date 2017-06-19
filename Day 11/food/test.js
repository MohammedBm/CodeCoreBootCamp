//test code
'use strict';

const Cookie = require('./cookie.js')
const Oreo = require('./oreo.js')



//test code
let cookie = new Cookie(10,20)
console.log(`Cookie sugar amount: ${cookie.sugar}`);
console.log(`Cookie flour amount: ${cookie.flour}`);
//
// // Cookie sugar amount: 10
// // Cookie flour amount: 20

let oreo = new Oreo(10,20)
console.log(`Oreo sugar amount: ${oreo.sugar}`);
console.log(`Oreo flour amount: ${oreo.flour}`);
// Oreo sugar amount 10
// Oreo flour amount 20
