---
title: sortable
slug: jsp-sortable
tags: api, java
publish: true
---

# \<kendo:sortable\>
A JSP wrapper for Kendo UI [Sortable](/kendo-ui/api/web/sortable).

## Configuration Attributes

### axis `java.lang.String`

Constrains the hint movement to either the horizontal (x) or vertical (y) axis. Can be set to either "x" or "y".

#### Example
    <kendo:sortable axis="axis">
    </kendo:sortable>

### connectWith `java.lang.String`

Selector which determines if items from the current Sortable widget can be accepted from another Sortable container(s). The connectWith option describes one way relationship, if the developer wants a two way connection then the connectWith option should be set on both widgets.

#### Example
    <kendo:sortable connectWith="connectWith">
    </kendo:sortable>

### container `java.lang.String`

Selector that determines the container to which boundaries the hint movement will be constrained.

#### Example
    <kendo:sortable container="container">
    </kendo:sortable>

### cursor `java.lang.String`

The cursor that will be shown while user drags sortable item.

#### Example
    <kendo:sortable cursor="cursor">
    </kendo:sortable>

### disabled `java.lang.String`

Selector that determines which items are disabled. Disabled items cannot be dragged but are valid sort targets.

#### Example
    <kendo:sortable disabled="disabled">
    </kendo:sortable>

### filter `java.lang.String`

Selector that determines which items are sortable. Filtered items cannot be dragged and are not valid sort targets.

#### Example
    <kendo:sortable filter="filter">
    </kendo:sortable>

### handler `java.lang.String`

Selector that determines which element will be used as a draggable handler. If a handler is defined, the user will be able to move the Sortable items only if the cursor/finger is positioned onto the handler element.

#### Example
    <kendo:sortable handler="handler">
    </kendo:sortable>

### hint `java.lang.String`

Provides a way for customization of the sortable item hint. If a function is supplied, it receives one argument - the draggable element's jQuery object.
If hint function is not provided the widget will clone dragged item and use it as a hint.

#### Example
    <kendo:sortable hint="hint">
    </kendo:sortable>

### holdToDrag `boolean`

Suitable for touch oriented user interface, in order to avoid collision with the touch scrolling gesture. When set to true, the item will be activated after the user taps and holds the finger on the element for a short amount of time.
The item will also be activated by pressing, holding and lifting the finger without any movement. Dragging it afterwards will initiate the drag immediately.

#### Example
    <kendo:sortable holdToDrag="holdToDrag">
    </kendo:sortable>

### placeholder `java.lang.String`

Provides a way for customization of the sortable item placeholder. If a function is supplied, it receives one argument - the draggable element's jQuery object.
If placeholder function is not provided the widget will clone dragged item, remove its ID attribute, set its visibility to hidden and use it as a placeholder.

#### Example
    <kendo:sortable placeholder="placeholder">
    </kendo:sortable>


##  Configuration JSP Tags

### kendo:sortable-cursorOffset

If set, specifies the offset of the hint relative to the mouse cursor/finger.
By default, the hint is initially positioned on top of the draggable source offset. The option accepts an object with two keys: top and left.

More documentation is available at [kendo:sortable-cursorOffset](/kendo-ui/api/wrappers/jsp/sortable/cursoroffset).

#### Example

    <kendo:sortable>
        <kendo:sortable-cursorOffset></kendo:sortable-cursorOffset>
    </kendo:sortable>


## Event Attributes

### start `String`

Fires when sortable item drag starts.


For additional information check the [start](/kendo-ui/api/web/sortable#events-start) event documentation.

#### Example
    <kendo:sortable start="handle_start">
    </kendo:sortable>
    <script>
        function handle_start(e) {
            // Code to handle the start event.
        }
    </script>

### move `String`

Fires when Sortable's placeholder changes its position.


For additional information check the [move](/kendo-ui/api/web/sortable#events-move) event documentation.

#### Example
    <kendo:sortable move="handle_move">
    </kendo:sortable>
    <script>
        function handle_move(e) {
            // Code to handle the move event.
        }
    </script>

### end `String`

Fires when item dragging ends but before the item's position is changed in the DOM. This event is suitable for preventing the sort action.


For additional information check the [end](/kendo-ui/api/web/sortable#events-end) event documentation.

#### Example
    <kendo:sortable end="handle_end">
    </kendo:sortable>
    <script>
        function handle_end(e) {
            // Code to handle the end event.
        }
    </script>

### change `String`

Fires when item is sorted and the item's position is changed in the DOM.


For additional information check the [change](/kendo-ui/api/web/sortable#events-change) event documentation.

#### Example
    <kendo:sortable change="handle_change">
    </kendo:sortable>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### cancel `String`

Fires when item sorting is canceled by pressing the Escape key.


For additional information check the [cancel](/kendo-ui/api/web/sortable#events-cancel) event documentation.

#### Example
    <kendo:sortable cancel="handle_cancel">
    </kendo:sortable>
    <script>
        function handle_cancel(e) {
            // Code to handle the cancel event.
        }
    </script>

## Event Tags

### kendo:sortable-start

Fires when sortable item drag starts.


For additional information check the [start](/kendo-ui/api/web/sortable#events-start) event documentation.

#### Example
    <kendo:sortable>
        <kendo:sortable-start>
            <script>
                function(e) {
                    // Code to handle the start event.
                }
            </script>
        </kendo:sortable-start>
    </kendo:sortable>

### kendo:sortable-move

Fires when Sortable's placeholder changes its position.


For additional information check the [move](/kendo-ui/api/web/sortable#events-move) event documentation.

#### Example
    <kendo:sortable>
        <kendo:sortable-move>
            <script>
                function(e) {
                    // Code to handle the move event.
                }
            </script>
        </kendo:sortable-move>
    </kendo:sortable>

### kendo:sortable-end

Fires when item dragging ends but before the item's position is changed in the DOM. This event is suitable for preventing the sort action.


For additional information check the [end](/kendo-ui/api/web/sortable#events-end) event documentation.

#### Example
    <kendo:sortable>
        <kendo:sortable-end>
            <script>
                function(e) {
                    // Code to handle the end event.
                }
            </script>
        </kendo:sortable-end>
    </kendo:sortable>

### kendo:sortable-change

Fires when item is sorted and the item's position is changed in the DOM.


For additional information check the [change](/kendo-ui/api/web/sortable#events-change) event documentation.

#### Example
    <kendo:sortable>
        <kendo:sortable-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:sortable-change>
    </kendo:sortable>

### kendo:sortable-cancel

Fires when item sorting is canceled by pressing the Escape key.


For additional information check the [cancel](/kendo-ui/api/web/sortable#events-cancel) event documentation.

#### Example
    <kendo:sortable>
        <kendo:sortable-cancel>
            <script>
                function(e) {
                    // Code to handle the cancel event.
                }
            </script>
        </kendo:sortable-cancel>
    </kendo:sortable>

