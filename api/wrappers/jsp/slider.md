---
title: slider
slug: jsp-slider
tags: api, java
publish: true
---

# \<kendo:slider\>
A JSP tag representing Kendo Slider.


## Configuration Attributes


### decreaseButtonTitle `String`

The title of the decrease button of the

#### Example
    <kendo:slider decreaseButtonTitle="decreaseButtonTitle">
    </kendo:slider>



### increaseButtonTitle `String`

The title of the increase button of the

#### Example
    <kendo:slider increaseButtonTitle="increaseButtonTitle">
    </kendo:slider>



### largeStep `float`

The delta with which the value will change when the user presses the Page Up or Page Down key (the drag
handle must be focused). Note: The allied largeStep will also set large tick for every large step.

#### Example
    <kendo:slider largeStep="largeStep">
    </kendo:slider>



### max `float`

The maximum value of the

#### Example
    <kendo:slider max="max">
    </kendo:slider>



### min `float`

The minimum value of the

#### Example
    <kendo:slider min="min">
    </kendo:slider>



### orientation `String`

The orientation of a

#### Example
    <kendo:slider orientation="orientation">
    </kendo:slider>



### showButtons `boolean`

Can be used to show (

#### Example
    <kendo:slider showButtons="showButtons">
    </kendo:slider>



### smallStep `float`

The small step value of the

#### Example
    <kendo:slider smallStep="smallStep">
    </kendo:slider>



### tickPlacement `String`

Denotes the location of the tick marks in the

#### Example
    <kendo:slider tickPlacement="tickPlacement">
    </kendo:slider>



### value `float`

The underlying value of the

#### Example
    <kendo:slider value="value">
    </kendo:slider>



### change `String`

Fires when the slider value changes as a result of selecting a new value with the drag handle, buttons or keyboard.

#### Example
    <kendo:slider change="handle_change">
    </kendo:slider>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### slide `String`

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:slider slide="handle_slide">
    </kendo:slider>
    <script>
        function handle_slide(e) {
            // Code to handle the slide event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the slider value changes as a result of selecting a new value with the drag handle, buttons or keyboard.

#### Example
    <kendo:slider change="handle_change">
    </kendo:slider>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### slide `String`

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:slider slide="handle_slide">
    </kendo:slider>
    <script>
        function handle_slide(e) {
            // Code to handle the slide event.
        }
    </script>


## Event Tags
 

### kendo:slider-change

Fires when the slider value changes as a result of selecting a new value with the drag handle, buttons or keyboard.

#### Example
    <kendo:slider>
        <kendo:slider-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:slider-change>
    </kendo:slider>

 

### kendo:slider-slide

Fires when the user drags the drag handle to a new position.

#### Example
    <kendo:slider>
        <kendo:slider-slide>
            <script>
                function(e) {
                    // Code to handle the slide event.
                }
            </script>
        </kendo:slider-slide>
    </kendo:slider>

 

## Child JSP Tags

### kendo:slider-tooltip

Configuration of the

More documentation is available at [kendo:slider-tooltip](/api/wrappers/jsp/slider/tooltip).

#### Example

    <kendo:slider>
        <kendo:slider-tooltip></kendo:slider-tooltip>
    </kendo:slider>
   
