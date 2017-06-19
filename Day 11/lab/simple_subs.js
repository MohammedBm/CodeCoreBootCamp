class SubstitutionCipher{
  constructor(str1 = '', str2 = ''){
    this.str1 = str1;
    this.str2 = str2;
    if(str1.length > str2.length){
      pad = str1.length - str2.length;
      str2 = str2 + str1.slice(str1.length - pad, pad);
    }else if(str2.length > str1.length){
      pad = str2.length - str1.length;
      str1 = str1 + str2.slice(str2.length - pad, pad);
    }
  }
  encode(code){
    let out = '';
    let i = 0;
    for(i=0;i<code.length;i++){
      out += this.str2[this.str1.indexOf(code[i])];
    }
    console.log(out);
  }
  decode(code){
    let out = '';
    let i = 0;
    for(i=0;i<code.length;i++){
      out += this.str1[this.str2.indexOf(code[i])];
    }
    console.log(out);
  }
}
//test
let abc1 = "abcdefghijklmnopqrstuvwxyz";
let abc2 = "etaoinshrdlucmfwypvbgkjqxz";
const sub = new SubstitutionCipher(abc1, abc2);
sub.encode("abc") // => "eta"
sub.encode("xyz") // => "qxz"
sub.encode("aeiou") // => "eirfg"
sub.decode("eta") // => "abc"
sub.decode("qxz") // => "xyz"
sub.decode("eirfg") // => "aeiou"
