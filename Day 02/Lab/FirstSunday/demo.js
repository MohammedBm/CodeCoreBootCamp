for( let year = 2014; year < 2050; year++ ){
  let sunday = new Date(year, 0 , 1);
if(sunday.getDay() === 0){
  console.log(`January first is a Sunday on ${year}` );
}
}
