# Assignment: [Lab] Create a prependChild Method

Create a function `prependChild(parentNode, childNode)` that takes two nodes as arguments: the first node, `parentNode`, will be the base node & the second node, `childNode`, will be inserted in the document as the <strong>first</strong> child of the first node. This behaves in a similar way to the `appendChild` method which adds nodes as the last child.

Given this HTML:
``` html
<div class="roster">
  <div id="toxic-tim"></div>
  <div id="larry-the-lion"></div>
  <div id="four-fists-phil"></div>
</div>
```
```javascript
const roster = document.querySelector('.roster');
const drillBitDarel = document.createElement('div');
drillBitDarel.id = 'drill-bit-darel';
prependChild(roster, drillBitDarel);
```

The above JavaScript would alter the DOM as follows:
```HTML
<div class="roster">
  <div id="drill-bit-darel"></div>
  <div id="toxic-tim"></div>
  <div id="larry-the-lion"></div>
  <div id="four-fists-phil"></div>
</div>
```
Make sure to cover the case where the parentNode has no children. prependChild will add the node by itself.

### Challenge
Make prependChild a method like appendChild. You will need to modify the prototype property of HTMLElement. In its new form, prependChild should assume that this is the parentNode. It will only need childNode argument.

It will be usable like this:
```javascript
roster.prependChild(drillBitDarel);
roster.prependChild(document.createElement('p'));
```
