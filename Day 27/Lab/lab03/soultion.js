function prependChild(parentNode, childNode){
  parentNode.insertBefore(childNode, parentNode.firstChild)
}


const roster = document.querySelector('.roster');
const drillBitDarel = document.createElement('div');
drillBitDarel.id = 'drill-bit-darel';



drillBitDarel.id = 'drill-bit-darel'
drillBitDarel.classList.add('doggo', 'fighter')
drillBitDarel.innerHTML = '<h1>Drill Bit Darel</h1>'
drillBitDarel.style.backgroundImage = `url(./images/drill_bit_darel.jpg)`
