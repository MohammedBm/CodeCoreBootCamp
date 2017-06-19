let a = '';
class Counter {
  constructor(count = 0,step = 1){
    this.count = count;
    this.step = step;
  }

  inc(){
    this.count += this.step;

  }
  show(){
    console.log(this.count);
  }

  dec(){
    this.count -= this.step;
  }

  set(num){
    this.count = num
  }


  setStep(num){
    this.step = num;
  }

}
// const sushiEatenCounter = new Counter(3, 1);
// sushiEatenCounter.inc() //returns 4
// sushiEatenCounter.inc() //returns 5
// sushiEatenCounter.inc() //returns 6
// sushiEatenCounter.show(); // returns 6

const bunnyCounter = new Counter();
bunnyCounter.show() // return 0
bunnyCounter.set(10);
bunnyCounter.setStep(10);
bunnyCounter.inc(); // return 20
bunnyCounter.inc(); // return 30
bunnyCounter.show()
