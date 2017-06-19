let a = 'you'


let StringExtras = {

  repeat(str,num){
    console.log(`${str.repeat(num)}`)
  },
  leftPad(str,num){
    console.log(`${" ".repeat(num)}${str}`);
  },
  rightPad(str,num){
    console.log(`${str}${" ".repeat(num)}`);
  },
  pad(str,num){
    console.log(`${" ".repeat(num)}${str}${" ".repeat(num)}`);
  },
  capitalize(a){
    cap = a.charAt(0).toUpperCase() + a.slice(1);
    console.log(`${cap}`);
  }
}

// StringExtras.repeat(a, 3);
StringExtras.repeat(' ', 6);
StringExtras.leftPad(a, 20);
StringExtras.rightPad(a, 20) + 'me';
// StringExtras.pad(a, 20);
// StringExtras.capitalize(a);




/* All methods of StringExtras are added to String */
Object.assign(String.prototype, StringExtras)

/* leftPad and friends can now be used as if it was a core library method,
 * like so: */


'bob'.leftPad(5);
'rob'.pad(3);
'rob'.capitalize();
