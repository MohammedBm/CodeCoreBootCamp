function parseNote(note){
//take
  spreatedNote = note.match(/[a-zA-Z-#]+|[0-9]+/g);
  //sperate charchters and push them to object with proprtiy pitch
  let notePlayed = {

  }
  notePlayed.pitch = spreatedNote[0];

  if(spreatedNote[1] > NaN ){
    notePlayed.beats = 1;
  }else{
    notePlayed.beats = spreatedNote[1];
  }
//numbers spreate and push them to object with proprity of beats

console.log(notePlayed);
}
