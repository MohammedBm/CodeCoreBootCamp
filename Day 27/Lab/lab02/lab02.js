// 1. Get the href attribute of the first link on the page.
document.querySelectorAll('a')
// 2. Get the number of links on this page.
document.querySelectorAll('a').length
// 3. Change the text for all links to be your name.
document.querySelectorAll('a').forEach(node => {node.innerHTML = 'Mohammed'});

// 4. Make Craigslist's logo link to http://www.google.com
document.querySelector('#logo > a').setAttribute('href','https://www.google.ca')
// 5. Make of all the text use the Papyrus font.
document.body.style.fontFamily = 'Papyrus'
