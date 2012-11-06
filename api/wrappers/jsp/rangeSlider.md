---
title: rangeSlider
slug: jsp-rangeSlider
tags: api, java
publish: true
---

# \<kendo:rangeSlider\>
A JSP tag representing Kendo RangeSlider.


## Configuration Attributes


### largeStep `float`

The delta with which the value will change when the user presses the Page Up or Page Down key (the drag
handle must be focused). Note: The allied largeStep will also set large tick for every large step.

#### Example
    <kendo:rangeSlider largeStep="largeStep">
    </kendo:rangeSlider>



### max `float`

The maximum value of the

#### Example
    <kendo:rangeSlider max="max">
    </kendo:rangeSlider>



### min `float`

The minimum value of the

#### Example
    <kendo:rangeSlider min="min">
    </kendo:rangeSlider>



### orientation `String`

F
The orientation of a

#### Example
    <kendo:rangeSlider orientation="orientation">
    </kendo:rangeSlider>



### selectionEnd `float`

The selection end value of the

#### Example
    <kendo:rangeSlider selectionEnd="selectionEnd">
    </kendo:rangeSlider>



### selectionStart `float`

The selection start value of the

#### Example
    <kendo:rangeSlider selectionStart="selectionStart">
    </kendo:rangeSlider>



### smallStep `float`

The small step value of the

#### Example
    <kendo:rangeSlider smallStep="smallStep">
    </kendo:rangeSlider>



### tickPlacement `String`

Denotes the location of the tick marks in the

#### Example
    <kendo:rangeSlider tickPlacement="tickPlacement">
    </kendo:rangeSlider>



### change `String`

Fires when the rangeSlider value changes as a result of selecting a new value with one of the drag handles or the keyboard.

#### Example
    <kendo:rangeSlider change="handle_change">
    </kendo:rangeSlider>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### slide `String`

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:rangeSlider slide="handle_slide">
    </kendo:rangeSlider>
    <script>
        function handle_slide(e) {
            // Code to handle the slide event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the rangeSlider value changes as a result of selecting a new value with one of the drag handles or the keyboard.

#### Example
    <kendo:rangeSlider change="handle_change">
    </kendo:rangeSlider>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### slide `String`

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:rangeSlider slide="handle_slide">
    </kendo:rangeSlider>
    <script>
        function handle_slide(e) {
            // Code to handle the slide event.
        }
    </script>


## Event Tags
 

### kendo:rangeSlider-change

Fires when the rangeSlider value changes as a result of selecting a new value with one of the drag handles or the keyboard.

#### Example
    <kendo:rangeSlider>
        <kendo:rangeSlider-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:rangeSlider-change>
    </kendo:rangeSlider>

 

### kendo:rangeSlider-slide

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:rangeSlider>
        <kendo:rangeSlider-slide>
            <script>
                function(e) {
                    // Code to handle the slide event.
                }
            </script>
        </kendo:rangeSlider-slide>
    </kendo:rangeSlider>

 

## Child JSP Tags

### kendo:rangeSlider-tooltip

Configuration of the

More documentation is available at [kendo:rangeSlider-tooltip](/api/wrappers/jsp/rangeslider/tooltip).

#### Example

    <kendo:rangeSlider>
        <kendo:rangeSlider-tooltip></kendo:rangeSlider-tooltip>
    </kendo:rangeSlider>
   
