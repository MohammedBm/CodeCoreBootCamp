const db = require('./index');


db.query(`
  CREATE TABLE posts (
    id SERIAL,
    content TEXT,
  )
`)
  .then(()=>{
    console.log(" 🛠 created table psots" );
    //process 👇 is a global object provided by node (only) that gives
    //acess to the running program. we can ues it to exit the
    //program amongst other things
    process.exit();
  })

  .catch(err=>{
    console.log(err);
    process.exit();
  })
