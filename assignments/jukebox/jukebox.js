function parseNote(note){
//take
  let spreatedNote = note.match(/[a-zA-Z-#]+|[0-9]+/g);
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


function parseSong(song){

  let arrayNote = song.split(" ")

  for(let i = 0 ; i < arrayNote.length ; i++){
    let singleNote = arrayNote[i];
  }

  songPlayed = {

  }
  songPlayed.pitch = singleNote[0]
  if(singleNote[1] > NaN ){
    songPlayed.beats = 1;
  }else{
    songPlayed.beats = singleNote[1];
  }

}



console.log(notePlayed);
}
