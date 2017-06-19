//objects - fundamental building blocks of code.
let human = new Object();
human = {
  eyeColour: "Brown" ,
  hairColour: "balck",
  height: 173,
  age: 21,
  weight: 120,
  hobby: "Gaming"
};

console.log(human.hobby)


//dot operater to add properties
human.skill = "javascript"; //setter, add a new property
human.skill ;//getter


human["weight"]; //get a specific property, search
human["weight"] = 135; //set a specific property


human.speed = 38
//prompt them for property
let newProperty = "speed";
human[newProperty] = 15;
// human["speed"]; //behind the sence




let numbers = [3.14, 42, 24123]
//what is the sum of all those number
let total = 0;
for (let number of numbers){
  console.log(number); //this will give each elemnt of the array and print it
  total += number; //this will give the total value of the array
}



//this will loop throgh the object
for (let property of human){
  console.log(property);
  human[property]//the value associated with a property
}
