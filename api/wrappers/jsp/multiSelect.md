---
title: multiSelect
slug: jsp-multiSelect
tags: api, java
publish: true
---

# \<kendo:multiSelect\>
A JSP wrapper for Kendo UI [MultiSelect](/api/web/multiselect).

## Configuration Attributes

### autoBind `boolean`

Controls whether to bind the widget to the DataSource on initialization.

#### Example
    <kendo:multiSelect autoBind="autoBind">
    </kendo:multiSelect>

### dataTextField `String`

Sets the field of the data item that provides the text content of the list items.

#### Example
    <kendo:multiSelect dataTextField="dataTextField">
    </kendo:multiSelect>

### dataValueField `String`

Sets the field of the data item that provides the value content of the list items.

#### Example
    <kendo:multiSelect dataValueField="dataValueField">
    </kendo:multiSelect>

### delay `float`

Specifies the delay in ms after which the multiselect will start filtering dataSource.

#### Example
    <kendo:multiSelect delay="delay">
    </kendo:multiSelect>

### enable `boolean`

Controls whether the multiselect should be initially enabled.

#### Example
    <kendo:multiSelect enable="enable">
    </kendo:multiSelect>

### filter `String`

Defines the type of filtration.

#### Example
    <kendo:multiSelect filter="filter">
    </kendo:multiSelect>

### height `float`

Define the height of the drop-down list in pixels.

#### Example
    <kendo:multiSelect height="height">
    </kendo:multiSelect>

### highlightFirst `boolean`

Controls whether the first item will be automatically highlighted.

#### Example
    <kendo:multiSelect highlightFirst="highlightFirst">
    </kendo:multiSelect>

### ignoreCase `String`

Defines whether the filtration should be case sensitive.

#### Example
    <kendo:multiSelect ignoreCase="ignoreCase">
    </kendo:multiSelect>

### itemTemplate `String`

Template to be used for rendering the items in the list.

#### Example
    <kendo:multiSelect itemTemplate="itemTemplate">
    </kendo:multiSelect>

### maxSelectedItems `float`

Defines the limit of the selected items. If set to null widget will not limit number of the selected items.

#### Example
    <kendo:multiSelect maxSelectedItems="maxSelectedItems">
    </kendo:multiSelect>

### minLength `float`

Specifies the minimum characters that should be typed before the multiselect activates

#### Example
    <kendo:multiSelect minLength="minLength">
    </kendo:multiSelect>

### placeholder `String`

A string that appears in the textbox when the multiselect has no value.

#### Example
    <kendo:multiSelect placeholder="placeholder">
    </kendo:multiSelect>

### tagTemplate `String`

Template to be used for rendering the tags of the selected items.

#### Example
    <kendo:multiSelect tagTemplate="tagTemplate">
    </kendo:multiSelect>

### value `Object`

Define the value of the widget

#### Example
    <kendo:multiSelect value="value">
    </kendo:multiSelect>


##  Configuration JSP Tags

### kendo:multiSelect-animation

Animations to be used for opening/closing the popup. Setting to false will turn off the animation.

More documentation is available at [kendo:multiSelect-animation](multiselect/animation).

#### Example

    <kendo:multiSelect>
        <kendo:multiSelect-animation></kendo:multiSelect-animation>
    </kendo:multiSelect>


## Event Attributes

### change `String`

Fires when the value has been changed.


For additional information check the [change](/api/web/multiselect#events-change) event documentation.

#### Example
    <kendo:multiSelect change="handle_change">
    </kendo:multiSelect>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### close `String`

Fires when the drop-down list is closed


For additional information check the [close](/api/web/multiselect#events-close) event documentation.

#### Example
    <kendo:multiSelect close="handle_close">
    </kendo:multiSelect>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>

### dataBound `String`

Fires when the multiselect has received data from the data source.


For additional information check the [dataBound](/api/web/multiselect#events-dataBound) event documentation.

#### Example
    <kendo:multiSelect dataBound="handle_dataBound">
    </kendo:multiSelect>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>

### open `String`

Fires when the drop-down list is opened


For additional information check the [open](/api/web/multiselect#events-open) event documentation.

#### Example
    <kendo:multiSelect open="handle_open">
    </kendo:multiSelect>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>

### select `String`

Triggered when a Li element is selected.


For additional information check the [select](/api/web/multiselect#events-select) event documentation.

#### Example
    <kendo:multiSelect select="handle_select">
    </kendo:multiSelect>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

## Event Tags

### kendo:multiSelect-change

Fires when the value has been changed.


For additional information check the [change](/api/web/multiselect#events-change) event documentation.

#### Example
    <kendo:multiSelect>
        <kendo:multiSelect-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:multiSelect-change>
    </kendo:multiSelect>

### kendo:multiSelect-close

Fires when the drop-down list is closed


For additional information check the [close](/api/web/multiselect#events-close) event documentation.

#### Example
    <kendo:multiSelect>
        <kendo:multiSelect-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:multiSelect-close>
    </kendo:multiSelect>

### kendo:multiSelect-dataBound

Fires when the multiselect has received data from the data source.


For additional information check the [dataBound](/api/web/multiselect#events-dataBound) event documentation.

#### Example
    <kendo:multiSelect>
        <kendo:multiSelect-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:multiSelect-dataBound>
    </kendo:multiSelect>

### kendo:multiSelect-open

Fires when the drop-down list is opened


For additional information check the [open](/api/web/multiselect#events-open) event documentation.

#### Example
    <kendo:multiSelect>
        <kendo:multiSelect-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:multiSelect-open>
    </kendo:multiSelect>

### kendo:multiSelect-select

Triggered when a Li element is selected.


For additional information check the [select](/api/web/multiselect#events-select) event documentation.

#### Example
    <kendo:multiSelect>
        <kendo:multiSelect-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:multiSelect-select>
    </kendo:multiSelect>

