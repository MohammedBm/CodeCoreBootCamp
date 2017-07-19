# DOM MANIPULATION II


### EVENTS


#### Creating our first event listener

The `.addEventListener` is a method usable on any DOM Node instance

It takes at least two argument:
 - A string named after an event that exists (e.g. `click`, `submit`,`input`, `mouseenter`,`mouseleave`, etc)

When the node Toxic Tim clicked, `Toxic Tim was clicked` will be logged to the console !!

```javascript
tocixTim.addEventListener('click' ()=>{
  console.log('Toxic Tim Was Clicked!!!!');
})
```
To check if an Object is an instance of a Node (or, any other prototype) use the `instanceof` operater.

```javascript
document instanceof Node // return  true
'bob' instanceof Node //flase


document.querySelectorAll('div') instanceof Node //flase
document.querySelectorAll('div') instanceof NodeList //true
document.querySelectorAll('div')[0] instanceof Node //true

```
You can only `.addEventListener` on Nodes or the majority of the methods we saw during DOM Manipulation I. `instanceof` is a great to test if an object is a node




Event Object


The callback passed to `.addEventListener` is called with an even Object that contains all sorts of information about the state of the program t the time the event was triggered. This include:

  - The `target` node that originally triggered on the event.
  - The `currentTarget` node which is the node that has the `.addEventListener`
  - The time at which the event was triggered
  - For mouse events, the coordinates of the cursor at the time the events was triggered.
  - For keyboard events, the key that was pressed
  - And many, many more



```javascript

document.body.addEventListener('click', function(event){
  debugger;
  console.log(event);
})

```

The `this` inside the callback is assigned `event.currentTarget`. If you want to make use of it, make sure to define your callback as a regular function. Do not use an arrow function, because the `this` of n arrow function can not be changed.

```javascript
//BAD
document.body.addEventListener('click',()=>{} )

```
### MOUSE EVENTS
```javascript
//this peace of code will change the style of the doggo fighters depending on the mouse
document.querySelectorAll('.doggo').forEach(node => {

  //this addEventListener will invert the color when double clicked on a target in a page
  node.addEventListener('dblclick', event => {
    const {currentTarget, target} = event;
    // const currentTarget = event.currentTarget;
    // const target = event.target;
    console.log('target:', target);
    console.log('currentTarget:', currentTarget);
    // BAD!
    /*
    if (currentTarget.style.filter.indexOf('invert') !== -1) {
      currentTarget.style.filter = '';
    } else {
      currentTarget.style.filter = 'invert()';
    }
    */
    currentTarget.classList.toggle('invert');
  });

  //this addEventListener will rotate the target slightly
  node.addEventListener('mousedown', event=>{
      const {currentTarget} = event;
      currentTarget.classList.add('slight-rotation')
  })
  node.addEventListener('mouseup',function(){
    this.classList.remove('slight-rotation')
  })


  //the addEventListener will change the font family when novered over
  node.addEventListener('mouseover',function(){
    const {currentTarget} = event;
    currentTarget.classList.add('mono')
  })
  node.addEventListener('mouseleave',function(){
    this.classList.remove('mono')
  })

});




let random = n =>Math.ceil(Math.random()*n)
const playKey = () => new Audio(`sounds/vintage-keyboard-${random(5)}.wav`);


document.querySelectorAll('#application-form input').forEach(node=>{
  node.addEventListener('input',event =>{
    const {currentTarget} = event;
    console.log(currentTarget.value);
    // playKey().play();
  })
})




document.querySelector('#application-form').addEventListener('submit', event => {
  const {currentTarget} = event;
  // prevent the submit from causing a web request as submitted forms
  // normally do
  event.preventDefault();
  new Audio('sounds/dog-bark-1.wav').play();
})

```


## Event Propagation

Events propagate beginning from the document node and trickle down its descendants until it reaches the source of the event, the target. This is called the CAPTURE phase.

Once an event reaches its source node, it is in an in-between phase, AT TARGET. Then, the event will bubble up parent to parent recursively until it reaches the document node. This is the BUBBLE phase.

`.addEventListener` can be made to trigger during the CAPTURE phase by passing it a third argument with the value ` true`. this effectively reverse the order in which `addEventListener` are triggered. By default, it always uses the BUBBLE phase. In other words, events trigger at the target first then its ancestors in order.
