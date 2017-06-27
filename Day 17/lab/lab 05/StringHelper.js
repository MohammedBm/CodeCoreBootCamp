
let StringHelpers = {
  capitalize: function(str){

    str = str.charAt(0).toUpperCase()+str.slice(1);

    return str;
  },
  titleize:function (s){
    return s.toLowerCase().replace( /\b((m)(a?c))?(\w)/g,
            function($1, $2, $3, $4, $5) { if($2){return $3.toUpperCase()+$4+$5.toUpperCase();} return $1.toUpperCase(); });
  }


}




module.exports = StringHelpers;
