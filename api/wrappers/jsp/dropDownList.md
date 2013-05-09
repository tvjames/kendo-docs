---
title: dropDownList
slug: jsp-dropDownList
tags: api, java
publish: true
---

# \<kendo:dropDownList\>
A JSP wrapper for Kendo UI [DropDownList](/api/web/dropdownlist).

## Configuration Attributes

### autoBind `boolean`

Controls whether to bind the widget on initialization.

#### Example
    <kendo:dropDownList autoBind="autoBind">
    </kendo:dropDownList>

### cascadeFrom `String`

Use it to set the Id of the parent DropDownList.

#### Example
    <kendo:dropDownList cascadeFrom="cascadeFrom">
    </kendo:dropDownList>

### dataTextField `String`

Sets the field of the data item that provides the text content of the list items.

#### Example
    <kendo:dropDownList dataTextField="dataTextField">
    </kendo:dropDownList>

### dataValueField `String`

Sets the field of the data item that provides the value content of the list items.

#### Example
    <kendo:dropDownList dataValueField="dataValueField">
    </kendo:dropDownList>

### delay `float`

Specifies the delay in ms before the search text typed by the end user is cleared.

#### Example
    <kendo:dropDownList delay="delay">
    </kendo:dropDownList>

### enable `boolean`

Controls whether the DropDownList should be initially enabled.

#### Example
    <kendo:dropDownList enable="enable">
    </kendo:dropDownList>

### height `float`

Define the height of the drop-down list in pixels.

#### Example
    <kendo:dropDownList height="height">
    </kendo:dropDownList>

### ignoreCase `String`

Controls whether the search should be case sensitive.

#### Example
    <kendo:dropDownList ignoreCase="ignoreCase">
    </kendo:dropDownList>

### index `float`

Defines the initial selected item.

#### Example
    <kendo:dropDownList index="index">
    </kendo:dropDownList>

### optionLabel `Object`

Define the text of the default empty item. If the value is an object, then the widget will use it directly.
 Note that object should have atleast the dataValueField and dataTextField properties. Otherwise, widget will show undefined.

#### Example
    <kendo:dropDownList optionLabel="optionLabel">
    </kendo:dropDownList>

### template `String`

Template to be used for rendering the items in the list.

#### Example
    <kendo:dropDownList template="template">
    </kendo:dropDownList>

### text `String`

Define the text of the widget, when the autoBind is set to false.

#### Example
    <kendo:dropDownList text="text">
    </kendo:dropDownList>

### value `String`

Define the value of the widget

#### Example
    <kendo:dropDownList value="value">
    </kendo:dropDownList>


##  Configuration JSP Tags

### kendo:dropDownList-animation

Animations to be used for opening/closing the popup. Setting to false will turn of the animation.

More documentation is available at [kendo:dropDownList-animation](dropdownlist/animation).

#### Example

    <kendo:dropDownList>
        <kendo:dropDownList-animation></kendo:dropDownList-animation>
    </kendo:dropDownList>


## Event Attributes

### change `String`

Fires when the value has been changed.


For additional information check the [change](/api/web/dropdownlist#events-change) event documentation.

#### Example
    <kendo:dropDownList change="handle_change">
    </kendo:dropDownList>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### close `String`

Fires when the drop-down list is closed


For additional information check the [close](/api/web/dropdownlist#events-close) event documentation.

#### Example
    <kendo:dropDownList close="handle_close">
    </kendo:dropDownList>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>

### dataBound `String`

Fires when the drop-down list has received data from the data source.


For additional information check the [dataBound](/api/web/dropdownlist#events-dataBound) event documentation.

#### Example
    <kendo:dropDownList dataBound="handle_dataBound">
    </kendo:dropDownList>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>

### open `String`

Fires when the drop-down list is opened


For additional information check the [open](/api/web/dropdownlist#events-open) event documentation.

#### Example
    <kendo:dropDownList open="handle_open">
    </kendo:dropDownList>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>

### select `String`

Triggered when a Li element is selected.


For additional information check the [select](/api/web/dropdownlist#events-select) event documentation.

#### Example
    <kendo:dropDownList select="handle_select">
    </kendo:dropDownList>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

### cascade `String`

Triggered when value of the widget is changed via API or user interaction.


For additional information check the [cascade](/api/web/dropdownlist#events-cascade) event documentation.

#### Example
    <kendo:dropDownList cascade="handle_cascade">
    </kendo:dropDownList>
    <script>
        function handle_cascade(e) {
            // Code to handle the cascade event.
        }
    </script>

## Event Tags

### kendo:dropDownList-change

Fires when the value has been changed.


For additional information check the [change](/api/web/dropdownlist#events-change) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:dropDownList-change>
    </kendo:dropDownList>

### kendo:dropDownList-close

Fires when the drop-down list is closed


For additional information check the [close](/api/web/dropdownlist#events-close) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:dropDownList-close>
    </kendo:dropDownList>

### kendo:dropDownList-dataBound

Fires when the drop-down list has received data from the data source.


For additional information check the [dataBound](/api/web/dropdownlist#events-dataBound) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:dropDownList-dataBound>
    </kendo:dropDownList>

### kendo:dropDownList-open

Fires when the drop-down list is opened


For additional information check the [open](/api/web/dropdownlist#events-open) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:dropDownList-open>
    </kendo:dropDownList>

### kendo:dropDownList-select

Triggered when a Li element is selected.


For additional information check the [select](/api/web/dropdownlist#events-select) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:dropDownList-select>
    </kendo:dropDownList>

### kendo:dropDownList-cascade

Triggered when value of the widget is changed via API or user interaction.


For additional information check the [cascade](/api/web/dropdownlist#events-cascade) event documentation.

#### Example
    <kendo:dropDownList>
        <kendo:dropDownList-cascade>
            <script>
                function(e) {
                    // Code to handle the cascade event.
                }
            </script>
        </kendo:dropDownList-cascade>
    </kendo:dropDownList>

