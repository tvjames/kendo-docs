---
title: autoComplete
slug: jsp-autoComplete
tags: api, java
publish: true
---

# \<kendo:autoComplete\>
A JSP tag representing Kendo AutoComplete.


## Configuration Attributes


### dataTextField `String`

Sets the field of the data item that provides the text content of the list items.

#### Example
    <kendo:autoComplete dataTextField="dataTextField">
    </kendo:autoComplete>



### delay `float`

Specifies the delay in ms after which the AutoComplete will start filtering the dataSource.

#### Example
    <kendo:autoComplete delay="delay">
    </kendo:autoComplete>



### enable `boolean`

Controls whether the AutoComplete should be initially enabled.

#### Example
    <kendo:autoComplete enable="enable">
    </kendo:autoComplete>



### filter `String`

Defines the type of filtration. This value is handled by the remote data source.

#### Example
    <kendo:autoComplete filter="filter">
    </kendo:autoComplete>



### height `float`

Sets the height of the drop-down list in pixels.

#### Example
    <kendo:autoComplete height="height">
    </kendo:autoComplete>



### highlightFirst `boolean`

Controls whether the first item will be automatically highlighted.

#### Example
    <kendo:autoComplete highlightFirst="highlightFirst">
    </kendo:autoComplete>



### ignoreCase `boolean`

Defines whether the filtration should be case sensitive.

#### Example
    <kendo:autoComplete ignoreCase="ignoreCase">
    </kendo:autoComplete>



### minLength `float`

Specifies the minimum number of characters that should be typed before the AutoComplete queries
the dataSource.

#### Example
    <kendo:autoComplete minLength="minLength">
    </kendo:autoComplete>



### placeholder `String`

A string that appears in the textbox when it has no value.

#### Example
    <kendo:autoComplete placeholder="placeholder">
    </kendo:autoComplete>



### separator `String`

Sets the separator for completion. Empty by default, allowing for only one completion.

#### Example
    <kendo:autoComplete separator="separator">
    </kendo:autoComplete>



### suggest `boolean`

Controls whether the AutoComplete should automatically auto-type the rest of text.

#### Example
    <kendo:autoComplete suggest="suggest">
    </kendo:autoComplete>



### template `String`

Template to be used for rendering the items in the list.

#### Example
    <kendo:autoComplete template="template">
    </kendo:autoComplete>



### change `String`

Fires when the value has been changed.

#### Example
    <kendo:autoComplete change="handle_change">
    </kendo:autoComplete>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### close `String`

Fires when the drop-down list is closed

#### Example
    <kendo:autoComplete close="handle_close">
    </kendo:autoComplete>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### dataBound `String`

Fires when the AutoComplete has received data from the data source.

#### Example
    <kendo:autoComplete dataBound="handle_dataBound">
    </kendo:autoComplete>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### open `String`

Fires when the drop-down list is opened

#### Example
    <kendo:autoComplete open="handle_open">
    </kendo:autoComplete>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### select `String`

Triggered when a Li element is selected.

#### Example
    <kendo:autoComplete select="handle_select">
    </kendo:autoComplete>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the value has been changed.

#### Example
    <kendo:autoComplete change="handle_change">
    </kendo:autoComplete>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### close `String`

Fires when the drop-down list is closed

#### Example
    <kendo:autoComplete close="handle_close">
    </kendo:autoComplete>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### dataBound `String`

Fires when the AutoComplete has received data from the data source.

#### Example
    <kendo:autoComplete dataBound="handle_dataBound">
    </kendo:autoComplete>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### open `String`

Fires when the drop-down list is opened

#### Example
    <kendo:autoComplete open="handle_open">
    </kendo:autoComplete>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### select `String`

Triggered when a Li element is selected.

#### Example
    <kendo:autoComplete select="handle_select">
    </kendo:autoComplete>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>


## Event Tags
 

### kendo:autoComplete-change

Fires when the value has been changed.

#### Example
    <kendo:autoComplete>
        <kendo:autoComplete-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:autoComplete-change>
    </kendo:autoComplete>

 

### kendo:autoComplete-close

Fires when the drop-down list is closed

#### Example
    <kendo:autoComplete>
        <kendo:autoComplete-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:autoComplete-close>
    </kendo:autoComplete>

 

### kendo:autoComplete-dataBound

Fires when the AutoComplete has received data from the data source.

#### Example
    <kendo:autoComplete>
        <kendo:autoComplete-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:autoComplete-dataBound>
    </kendo:autoComplete>

 

### kendo:autoComplete-open

Fires when the drop-down list is opened

#### Example
    <kendo:autoComplete>
        <kendo:autoComplete-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:autoComplete-open>
    </kendo:autoComplete>

 

### kendo:autoComplete-select

Triggered when a Li element is selected.

#### Example
    <kendo:autoComplete>
        <kendo:autoComplete-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:autoComplete-select>
    </kendo:autoComplete>

 

## Child JSP Tags

### kendo:autoComplete-animation

Animations to be used for opening/closing the popup. Setting to false will turn of the animation.

More documentation is available at [kendo:autoComplete-animation](/api/wrappers/jsp/autocomplete/animation).

#### Example

    <kendo:autoComplete>
        <kendo:autoComplete-animation></kendo:autoComplete-animation>
    </kendo:autoComplete>
      
