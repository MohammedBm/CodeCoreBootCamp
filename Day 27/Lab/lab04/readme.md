
#Assignment: [Lab] Making a Simpler createElement

Typing `document.createElement` everytime to create a new node is a boooooore... 😒 Subsequently, adding every attribute individually is even more booooorish. You may have asked yourself "Why must it be this way!?!." We hear ya. That's why you'll create an easier to use function to create nodes.

Make sure that your function doesn't return strings that look like HTML. It should return Node objects. Use `document.createElement` as a base to build the function.

- Create a function, H, that takes a tagName as argument and returns a new node of tagName type.
```javascript
   H('div') // returns a div element (i.e. <div></div>)
   H('span') // returns a span element (i.e. <span></span>)
   H('a') // returns a a element (i.e. <a></a>)
```
- Add support for another argument to pass it html attributes as a plain old object like so:
```javascript
   H('div', {id: 'four-fists-phil', className: 'doggo fighter'})
   // returns a node like <div id="four-fists-phil" class="doggo fighter"></div>
   H('li', {id: 'product_42', 'data-url':'/product/42'})
   // returns a node like <li id="product_42" data-url="/product/42"></li>
   H('form', {action: '/', method: 'post'})
   // returns a node like <form action="/" method="post"></form>
```
- Add support for a third argument to add text content to the created node.
```javascript
  H('h1', null, 'Hi-Ho, neighbour!');
  // returns a node like <h1>Hi-Ho, neighbour!</h1>
  H('span', {className: 'note'}, 'These are not the droids youre looking for.');
  // returns a node like <h1 class="note">These are not the droids you're
  // looking for.</h1>
```
