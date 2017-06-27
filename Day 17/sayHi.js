

function hi (name){
  return  `Hello ${name}`
}



//If you write a node.js module and you want ti share it with other filrs you
//will need to teel Node.js what to `share` by exporting that. You can exporting
//any type of construct in Node.js such as : function, objests, strings...etc
//they key thing is when `import` this module from aother file you have to know
//what is being exported so you use it correctly.
module.exports = hi;
