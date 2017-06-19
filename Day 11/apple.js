class Apple {

  constructor(name, colour){
    this.name = name;
    this.colour = colour;
  }
  bite(){
    console.log("Bitinggg.....")
  }
  size(){
    console.log(`It's a big apple with color of ${colour}`);
  }

}


let gala= new Apple("gala","red")
gala.bite();
gala.size();

gala.name;
gala.colour;
