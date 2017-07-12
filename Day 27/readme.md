# DOM,   Day 27

<br>
#### What is the DOM?
The Document Object Model (DOM) is a programming interface for HTML and XML documents. It represents the page so that programs can change the document structure, style and content. The DOM represents the document as nodes and objects. That way, programming languages can connect to the page.
<hr>


`<any-Node>.getElementById` is a method that returns a node with a given id pass as argument. it"s the fastest of all the different selector methods.

```javascript
let toxicTim = document.getElementById(toxic-tim)
```

`<any-Node>.getElementByClassName` getElementByClassName is a method that return an array-like object containing all nodes that match the classes given as argument. It can be used on any node (including document) to search only the descendants of that node
```javascript
let doggos = document.getElementByClassName('doggo')
```
return all node with the doggo class
```javascript
let teamAquamarine = document.getElementByClassName('team aquamarine')
```
reutrn all team with aquamarine tag


`<any-Node>.querySelector` querySelector is method that returns the first node that matches a given css selection. You can use any CSS selector you know to find nodes.


```javascript
let lastDoggoOfTeamSalmon = document.querySelector('.team.salmon .doggo:last-child')

let teamKhaki = document.querySelector('.team.khaki')
```

`<any-Node>.querySelectorAll`  querySelectorAll is a method that returns all nodes that match a given CSS selection. You can use any CSS selector just like querySelector.

```javascript
doggos = document.querySelectorAll('.doggo')
let lastDoggosOfAllTeams = document.querySelectorAll('.team .doggo:last-of-type')
```



getElementById is that fastest after that comes getElementByClassName.
The slowest one is querySelector.

#### E X E R C I S E: Picking Doggos
```javascript
// 1. Select Knight Nicholas by id
document.querySelector('#knight-nicholas')
document.getElementById('knight-nicholas')
document.querySelectorAll('#knight-nicholas')[0]

// 2. Select Moneybags Michael & Larry The Lion
document.querySelectorAll('#moneybags-michael, #larry-the-lion')

// 3. Select all Team Khaki Doggos but the first
document.querySelectorAll('.team.khaki .doggo:not(:first-child)')

// 4. Select the  doggo in every team
document.querySelectorAll('.team .doggo:nth-child(2)')

```


<strong>NAVIGATING NODES</strong> With a node selected, we have access to several methods to access nodes that are siblings, parents or childen.

` .nextElementSibling & .previousElementSibling` nextElementSibling gets the next node that shares a the same parent of the current node and the reverse for previousElementSibling.

```javascript
let bumbleBertha = toxicTim.nextElementSibling
let ninaTheNinja = toxicTim.nextElementSibling.nextElementSibling

toxicTim.previousElementSibling // returns `null`, because it does wrap around
// .parentElement returns the parentNode of the current node
let roster = toxicTim.parentElement
let teamSalmon = roster.parentElement

```


`.children`returns an HTMLCollection of all nodes that are immediate children of the current node

```javascript
teamSalmon.children // returns its title and .roster
let teamSalmonDoggos = teamSalmon.children[0].children // returns all doggos of the team

```
`.matches` Returns a boolean based on whether a node matches the CSS query given

```javascript
toxicTim.matches('.doggo') // returns true
toxicTim.matches('div.fighter') // returns true
toxicTim.matches('a.doggo') // returns false
```


#### MANIPULATING NODES
Changing Inline Styles Nodes have a `style` property whici is an object that contains all inline styles. Changing these properties will be immediately reflected in the DOM.

```javascript
toxicTim.style.color = 'Aquamarine'
toxicTim.style.border = 'thick solid salmon'
toxicTim.style['border-radius'] = '5px'
// When using dot notation to refer to a CSS style, make sure to
// use camelCase instead of kebab-case.
```

<hr>

To get all calculated styles, those that are default, declared in a stylesheet or even inline, use getComputedStyle
```javascript
let toxicTimsStyles = getComputedStyle(toxicTim)
toxicTimsStyles.top
toxicTimsStyles.bottom
toxicTimsStyles.borderRadius

```
Modifying the contents of node

```javascript
// .innerHTML
// When read, returns the HTML inside of a node
toxicTim.innerHTML // returns `<h1>Toxic Tim</h1>`
// When written to, replaces the innerHTML with a string
toxicTim.innerHTML = '<h1>Conny Coneface</h1>'
```


`.outerHTML` works nearly the same way as innerHTML except that it includes the node itself. This means that it can be used to completely the node and its contents.

##### Manipulating HTML attributes
For non-custom HTML attributes, you can refer to them by name except for class Use className or, better yet, classList


```javascript
/*
toxicTim.id // returns Toxic Tim's id `toxic-tim`
toxicTim.id = 'bumble-bertha' // replaces Toxic Tim's id
*/

// For classes, it is recommended that you use the classList properties.
// In returns an array-like object with several utility methods:

toxicTim.classList
toxicTim.classList.add('labourer')
toxicTim.classList.add('injured', 'cancer')
toxicTim.classList.remove('fighter')
toxicTim.classList.contains('cancer')
// returns true if toxicTim has the class `cancer`
toxicTim.classList.toggle('cancer') // turns on and off the class
toxicTim.classList.toggle('cancer')
```


There are more general methods to manipulate attributes on a node `.setAttribute` can be used to add an attribute. it takes
name f the attribute as the first argument and its value as the second argument.
```javascript
toxicTim.setAttribute('data-date', '2019-01-01')
// adds custom attribute `data-date` to Toxic Tim. this can be used for any kind of attribute
toxicTim.getAttribute('data-date') //returns the value of the attribute `data-date`
toxicTim.hasAttribute('data-date') //returns true if the
toxicTim.removeAttribute('data-date')

```
#### E X E R C I S E: Vandalise the Arena
```javascript

// 1. Change the color of all teams to fuschia
/*
document.querySelectorAll('.team').style.backgroundColor = 'fuschia'
// BAD! querySelectorAll doesn't a return a node, but a collection of nodes
*/

/*
document.querySelectorAll('.team').forEach(node => {
  node.style.backgroundColor = 'fuchsia';
});
*/

for (let node of document.querySelectorAll('.team')) {
  node.style.backgroundColor = 'fuchsia';
}

// 2. Rename all doggos to Rob The Slob

for (let node of document.querySelectorAll('.doggo')) {
  node.innerHTML = '<h1>Rob The Slob</h1>';
}

// 3. Change all doggo pictures to that of a cat from the internet
for (let node of document.querySelectorAll('.fighter')) {
  node.style.backgroundImage = 'url(http://www.petmd.com/sites/default/files/4-meow-conversational-cat.gif)';
}
```


<hr>


### Creating Nodes

`document.createElement` returns a new node that isn't attached to the DOM. It takes a tag name as string for argument.

```javascript
let drillBitDarel = document.createElement('div');

drillBitDarel.id = 'drill-bit-darel'
drillBitDarel.classList.add('doggo', 'fighter')
drillBitDarel.innerHTML = '<h1>Drill Bit Darel</h1>'
drillBitDarel.style.backgroundImage = `url(./images/drill_bit_darel.jpg)`

```
##### Adding nodes to the DOM
`<any-Node>.appendChild` call .appendChild on a node to add a node passed argument as its last child/
```javascript
teamSalmon.querySelector('.roster').appendChild(drillBitDarel)
//adds the newly created node , drillBitDarel, as child of, `.team.salmon > .roster` node

```

`<any-Node>.insertBefore` call `.insertBefore` on a node to add a node passed as the first argument in the front of a child (of <any-Node)passed as second argument

```javascript
teamSalmonRoster.insertBefore(
  drillBitDarel,
  teamSalmonRoster.firstElementChild
)
```
