
//My soultion,,,,
setCount = parseInt(prompt("enter your count"))
step = parseInt(prompt("enter the value you want do incrase or decrease by"))
const counter = {
  count: setCount,
  set(){this.count = 4},
  stepInc(){this.count += step},
  stepDec(){this.count = step},
  inc() {this.count+= 1},
  dec(){this.count -= 1},
  now() {return this.count}
};



//method to access counts
// counter.count;
// counter["count"]
// let property = "counter";
// counter[property]
//
//
//
// counter.count = 1;
// counter.["count"] = 1;
// counter.count += 1;
// counter.count++;


counter.stepInc(); //this will give the current value of count
counter.stepInc(); //this will give the current value of count
counter.stepInc(); //this will give the current value of count
counter.now();



// to add a dec method, decrease by one
// add a set method, that can set the counter to any specified number



//create a away to dynamically set the step, the amount we inc or dec by....


// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//Jacob soultion...
const counter = {
  count: 0,
  step: 1,
  inc() { this.count += step },
  dec() { this.count -= step },
  set(n) { this.count = n },
  setStep(n) { this.step = n },
  now() { return this.count },
  reset(){this.count = 0, this.step = 1}

};

// counter.count;
// counter["count"];
// let property = "count";
// counter[property];
//
// counter.count = 1;
// counter["count"] = 1;
// counter.count += 1;
// counter.count++;

counter.now(); // will give the current value of count
counter.inc();
counter.inc();
counter.inc();
counter.inc();
counter.now(); // 4
counter.setStep(2);
counter.inc();//6
counter.dec();
counter.reset();
counter.now();


// to add a dec method, decrease by one
// add a set method, that can set the counter to any specified number

// create a way to dynamically set the step, the amount we inc or dec by....




//
