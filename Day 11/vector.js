//crate a class


//this is the oldschool way of creating the class
//this is the first method of creating an obejct from that class
function Vector(){} {
  this.x = 0;
  this.y = 0;
  // this.sum(){
  //   return this.x + this.y;
  // }
}

//this is a way to optimize our classes in the old school method, where the method will note be recreated for every instance, ratherit will refer to single prototype method to draw from
Vector.prototype.sum = function(){

}


// let numbers = new Array();
// let human = new Object();
//


let vector = new Vector();

//getter
vector.x;
vector.y;
//setter
vector.x = 10;
vector.y = 20;
console.log(vector.sum());


////++++++++++++++++++++++++++++++++++++++++++++++++++++++++
