  // JavaScript Object Notation
  // JSON - is protocol for communication over the web


  let human = {
    eyeColour: "Brown",
    hairColour: "balck",
    height: 173,
    age: 21,
    weight: 120,
    hobby: ["Gaming", "Coding", "Read"],
    cat: {
      name: "Sugar"
    },
    books:[
      {name:"Stomlight archive"},
      {name:"Mistborn"}
    ],
    jump:function (height){ //<-- this is a method, a function inside an object
      console.log(`I am jumping ${height} feet!`);
      console.log(`what is this?${this}`);
    },
    run:running,

    // :function, get rid of it....it will be implied
    duck(){
      console.log("Duck!!!");
    }
  }


  function running (){
      console.log(`I am running....`);
      console.log(this);
  }

  let dog = {
    run:running, //pass by name
  }

  // testing - execute the method by adding ();
  human.jump(2);
  human.run();
  human.duck()
  dog.run(); //excute

//instance variables = are variables that belong to a specific instance of a class (ie. an Object)
