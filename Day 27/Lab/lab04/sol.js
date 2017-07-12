
function H (tag, attr,text){
let obj = document.createElement(tag)

obj.innerHTML = text

for (var key in attr){
  obj.setAttribute(key,attr[key])
}

return obj
}



H('span', {className: 'note'}, 'These are not the droids youre looking for.');// return <span classname=​"note">​These are not the droids youre looking for.​</span>​
