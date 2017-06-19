//make a class for car
//that has a year, make, model
//info method that will tell me more informaiton about the characters
class Car{
  constructor(year,make,model){
    this.year = year;
    this.make = make;
    this.model = model
  }
  info(){
    console.log(`This car is  ${this.year} ${this.make} ${this.model}`);
  }
}

let toy = new Car(1996,"Honda","Civic")
toy.info()
