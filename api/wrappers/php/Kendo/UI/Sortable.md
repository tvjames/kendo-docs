---
title: Sortable
---

# \Kendo\UI\Sortable

A PHP wrapper for Kendo UI [Sortable](/api/web/sortable).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Sortable in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Sortable

    <?php
    // Create a new instance of Sortable and specify its id
    $sortable = new \Kendo\UI\Sortable('Sortable');

    // Configure it
    $sortable->axis('value')

    // Output it

    echo $sortable->render();
    ?>


## Methods

### axis
Constrains the hint movement to either the horizontal (x) or vertical (y) axis. Can be set to either "x" or "y".

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->axis('value');
    ?>

### cancel
Fires when item sorting is canceled by pressing the Escape key.
For additional information check the [cancel](/api/web/sortable#events-cancel) event documentation.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->cancel('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCancel(e) {
            // handle the cancel event.
        }
    </script>
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->cancel('onCancel');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->cancel(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### change
Fires when item is sorted and the item's position is changed in the DOM.
For additional information check the [change](/api/web/sortable#events-change) event documentation.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### connectWith
Selector which determines if items from the current Sortable widget can be accepted from another Sortable container(s). The connectWith option describes one way relationship, if the developer wants a two way connection then the connectWith option should be set on both widgets.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->connectWith('value');
    ?>

### container
Selector that determines the container to which boundaries the hint movement will be constrained.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->container('value');
    ?>

### cursor
The cursor that will be shown while user drags sortable item.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->cursor('value');
    ?>

### cursorOffset

If set, specifies the offset of the hint relative to the mouse cursor/finger.
By default, the hint is initially positioned on top of the draggable source offset. The option accepts an object with two keys: top and left.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `\Kendo\UI\SortableCursorOffset|array`


#### Example - using [\Kendo\UI\SortableCursorOffset](/api/wrappers/php/Kendo/UI/SortableCursorOffset)
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $cursorOffset = new \Kendo\UI\SortableCursorOffset();
    $left = 1;
    $cursorOffset->left($left);
    $sortable->cursorOffset($cursorOffset);
    ?>

#### Example - using array

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $left = 1;
    $sortable->cursorOffset(array('left' => $left));
    ?>

### disabled
Selector that determines which items are disabled. Disabled items cannot be dragged but are valid sort targets.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->disabled('value');
    ?>

### end
Fires when item dragging ends but before the item's position is changed in the DOM. This event is suitable for preventing the sort action.
For additional information check the [end](/api/web/sortable#events-end) event documentation.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->end('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onEnd(e) {
            // handle the end event.
        }
    </script>
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->end('onEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->end(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### filter
Selector that determines which items are sortable. Filtered items cannot be dragged and are not valid sort targets.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->filter('value');
    ?>

### handler
Selector that determines which element will be used as a draggable handler. If a handler is defined, the user will be able to move the Sortable items only if the cursor/finger is positioned onto the handler element.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->handler('value');
    ?>

### hint
Provides a way for customization of the sortable item hint. If a function is supplied, it receives one argument - the draggable element's jQuery object.
If hint function is not provided the widget will clone dragged item and use it as a hint.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `\Kendo\JavaScriptFunction|string|`



#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->hint(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

#### Example  - using string
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->hint('value');
    ?>

### holdToDrag
Suitable for touch oriented user interface, in order to avoid collision with the touch scrolling gesture. When set to true, the item will be activated after the user taps and holds the finger on the element for a short amount of time.
The item will also be activated by pressing, holding and lifting the finger without any movement. Dragging it afterwards will initiate the drag immediately.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->holdToDrag(true);
    ?>

### ignore
Selector that determines which elements inside the sorted item's container will be ignored. Useful if the sortable item contains input elements.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->ignore('value');
    ?>

### move
Fires when Sortable's placeholder changes its position.
For additional information check the [move](/api/web/sortable#events-move) event documentation.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->move('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMove(e) {
            // handle the move event.
        }
    </script>
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->move('onMove');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->move(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### placeholder
Provides a way for customization of the sortable item placeholder. If a function is supplied, it receives one argument - the draggable element's jQuery object.
If placeholder function is not provided the widget will clone dragged item, remove its ID attribute, set its visibility to hidden and use it as a placeholder.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `\Kendo\JavaScriptFunction|string|`



#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->placeholder(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

#### Example  - using string
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->placeholder('value');
    ?>

### start
Fires when sortable item drag starts.
For additional information check the [start](/api/web/sortable#events-start) event documentation.

#### Returns
`\Kendo\UI\Sortable`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->start('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onStart(e) {
            // handle the start event.
        }
    </script>
    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->start('onStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $sortable = new \Kendo\UI\Sortable('Sortable');
    $sortable->start(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

