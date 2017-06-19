class Vector {
  constructor(x, y, z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  plus(vec) {
    let obj = {}
    let v1 = this
    Object.keys(this).map(function(a) {
      obj[a] = v1[a] + vec[a]
    })
    console.log(obj);
  }

  minus(vec) {
    let obj = {}
    let v1 = this
    Object.keys(this).map(function(a) {
      obj[a] = v1[a] - vec[a]
    })
    console.log(obj);
  }

  length() {
    let length = Math.sqrt(Math.pow(this.x, 2) + Math.pow(this.y, 2) + Math.pow(this.z, 2))

    console.log(length.toFixed(2));
  }

}

let v1 = new Vector(4, 4, 0);
let v2 = new Vector(1, 2, 2);

///tests
v1.plus(v2) // returns Vector {x: 5, y: 6, z: 2}
v2.plus(v1) // returns Vector {x: 5, y: 6, z: 2}

v1.minus(v2) // returns Vector {x: 3, y: 2, z: -2}
v2.minus(v1) // returns Vector {x: -3, y: -2, z: 2}

v1.length() // returns 5.656854249492381
v2.length() // returns 3



//sum of two objects
// obj = {}
// Object.keys(v1).map(function(a){
//   obj[a] = v1[a] +v2[a]
// })
// console.log(obj);
