---
title: listView
slug: jsp-listView
tags: api, java
publish: true
---

# \<kendo:listView\>
A JSP tag representing Kendo ListView.


## Configuration Attributes


### autoBind `boolean`

Indicates whether the list view will call read on the DataSource initially.

#### Example
    <kendo:listView autoBind="autoBind">
    </kendo:listView>



### editTemplate `String`

Specifies ListView item template in edit mode.

#### Example
    <kendo:listView editTemplate="handle_editTemplate">
    </kendo:listView>
    <script>
        function handle_editTemplate(e) {
            // Code to handle the editTemplate event.
        }
    </script>



### navigatable `boolean`

Indicates whether keyboard navigation is enabled/disabled.

#### Example
    <kendo:listView navigatable="navigatable">
    </kendo:listView>



### selectable `String`

Indicates whether selection is enabled/disabled. Possible values:

#### Example
    <kendo:listView selectable="selectable">
    </kendo:listView>



### template `String`

Specifies ListView item template.

#### Example
    <kendo:listView template="handle_template">
    </kendo:listView>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>



### change `String`

Fires when the list view selection has changed.

#### Example
    <kendo:listView change="handle_change">
    </kendo:listView>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### dataBound `String`

Fires when the list view has received data from the data source.
and is about to render it.

#### Example
    <kendo:listView dataBound="handle_dataBound">
    </kendo:listView>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### edit `String`

Fires when the list view enters edit mode.

#### Example
    <kendo:listView edit="handle_edit">
    </kendo:listView>
    <script>
        function handle_edit(e) {
            // Code to handle the edit event.
        }
    </script>



### remove `String`

Fires before the list view item is removed.

#### Example
    <kendo:listView remove="handle_remove">
    </kendo:listView>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the list view selection has changed.

#### Example
    <kendo:listView change="handle_change">
    </kendo:listView>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### dataBound `String`

Fires when the list view has received data from the data source.
and is about to render it.

#### Example
    <kendo:listView dataBound="handle_dataBound">
    </kendo:listView>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### edit `String`

Fires when the list view enters edit mode.

#### Example
    <kendo:listView edit="handle_edit">
    </kendo:listView>
    <script>
        function handle_edit(e) {
            // Code to handle the edit event.
        }
    </script>



### remove `String`

Fires before the list view item is removed.

#### Example
    <kendo:listView remove="handle_remove">
    </kendo:listView>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>


## Event Tags


### kendo:listView-change

Fires when the list view selection has changed.

#### Example
    <kendo:listView>
        <kendo:listView-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:listView-change>
    </kendo:listView>

 

### kendo:listView-dataBound

Fires when the list view has received data from the data source.
and is about to render it.

#### Example
    <kendo:listView>
        <kendo:listView-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:listView-dataBound>
    </kendo:listView>

 

### kendo:listView-edit

Fires when the list view enters edit mode.

#### Example
    <kendo:listView>
        <kendo:listView-edit>
            <script>
                function(e) {
                    // Code to handle the edit event.
                }
            </script>
        </kendo:listView-edit>
    </kendo:listView>

 

### kendo:listView-remove

Fires before the list view item is removed.

#### Example
    <kendo:listView>
        <kendo:listView-remove>
            <script>
                function(e) {
                    // Code to handle the remove event.
                }
            </script>
        </kendo:listView-remove>
    </kendo:listView>

 

### kendo:listView-editTemplate

Specifies ListView item template in edit mode.

#### Example
    <kendo:listView>
        <kendo:listView-editTemplate>
            <script>
                function(e) {
                    // Code to handle the editTemplate event.
                }
            </script>
        </kendo:listView-editTemplate>
    </kendo:listView>

 

### kendo:listView-template

Specifies ListView item template.

#### Example
    <kendo:listView>
        <kendo:listView-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:listView-template>
    </kendo:listView>

 

## Child JSP Tags
      
