---
title: grid
slug: jsp-grid
tags: api, java
publish: true
---

# \<kendo:grid\>
A JSP tag representing Kendo Grid.


## Configuration Attributes


### altRowTemplate `String`

Template to be used for rendering the alternate rows in the grid.

#### Example
    <kendo:grid altRowTemplate="handle_altRowTemplate">
    </kendo:grid>
    <script>
        function handle_altRowTemplate(e) {
            // Code to handle the altRowTemplate event.
        }
    </script>



### autoBind `boolean`

Indicates whether the grid will call read on the DataSource initially.

#### Example
    <kendo:grid autoBind="autoBind">
    </kendo:grid>



### detailTemplate `String`

Template to be used for rendering the detail rows in the grid.
See the

#### Example
    <kendo:grid detailTemplate="handle_detailTemplate">
    </kendo:grid>
    <script>
        function handle_detailTemplate(e) {
            // Code to handle the detailTemplate event.
        }
    </script>



### editable `boolean`

Indicates whether editing is enabled/disabled. Further configuration is available via [kendo:grid-editable](#kendo-grid-editable). 

#### Example
    <kendo:grid editable="editable">
    </kendo:grid>



### filterable `boolean`

Indicates whether filtering is enabled/disabled.

#### Example
    <kendo:grid filterable="filterable">
    </kendo:grid>



### groupable `boolean`

Indicates whether grouping is enabled/disabled. Further configuration is available via [kendo:grid-groupable](#kendo-grid-groupable). 

#### Example
    <kendo:grid groupable="groupable">
    </kendo:grid>



### height `float`

Sets the height of the grid.

#### Example
    <kendo:grid height="height">
    </kendo:grid>



### navigatable `boolean`

Indicates whether keyboard navigation is enabled/disabled.

#### Example
    <kendo:grid navigatable="navigatable">
    </kendo:grid>



### pageable `boolean`

Indicates whether paging is enabled/disabled. Further configuration is available via [kendo:grid-pageable](#kendo-grid-pageable). 

#### Example
    <kendo:grid pageable="pageable">
    </kendo:grid>



### rowTemplate `String`

Template to be used for rendering the rows in the grid.

#### Example
    <kendo:grid rowTemplate="handle_rowTemplate">
    </kendo:grid>
    <script>
        function handle_rowTemplate(e) {
            // Code to handle the rowTemplate event.
        }
    </script>



### scrollable `boolean`

Enable/disable grid scrolling. Further configuration is available via [kendo:grid-scrollable](#kendo-grid-scrollable). 

#### Example
    <kendo:grid scrollable="scrollable">
    </kendo:grid>



### selectable `String`

Indicates whether selection is enabled/disabled. Possible values:

#### Example
    <kendo:grid selectable="selectable">
    </kendo:grid>



### sortable `boolean`

Defines whether grid columns are sortable. Further configuration is available via [kendo:grid-sortable](#kendo-grid-sortable). 

#### Example
    <kendo:grid sortable="sortable">
    </kendo:grid>



### change `String`

Fires when the grid selection has changed.

#### Example
    <kendo:grid change="handle_change">
    </kendo:grid>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### columnResize `String`

Fires when the user resizes a column.

#### Example
    <kendo:grid columnResize="handle_columnResize">
    </kendo:grid>
    <script>
        function handle_columnResize(e) {
            // Code to handle the columnResize event.
        }
    </script>



### dataBound `String`

Fires when the grid has received data from the data source.

#### Example
    <kendo:grid dataBound="handle_dataBound">
    </kendo:grid>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### detailCollapse `String`

Fires when the grid detail row is collapsed.

#### Example
    <kendo:grid detailCollapse="handle_detailCollapse">
    </kendo:grid>
    <script>
        function handle_detailCollapse(e) {
            // Code to handle the detailCollapse event.
        }
    </script>



### detailExpand `String`

Fires when the grid detail row is expanded.

#### Example
    <kendo:grid detailExpand="handle_detailExpand">
    </kendo:grid>
    <script>
        function handle_detailExpand(e) {
            // Code to handle the detailExpand event.
        }
    </script>



### detailInit `String`

Fires when the grid detail is initialized.

#### Example
    <kendo:grid detailInit="handle_detailInit">
    </kendo:grid>
    <script>
        function handle_detailInit(e) {
            // Code to handle the detailInit event.
        }
    </script>



### edit `String`

Fires when the grid enters edit mode.

#### Example
    <kendo:grid edit="handle_edit">
    </kendo:grid>
    <script>
        function handle_edit(e) {
            // Code to handle the edit event.
        }
    </script>



### remove `String`

Fires before the grid item is removed.

#### Example
    <kendo:grid remove="handle_remove">
    </kendo:grid>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>



### save `String`

Fires before the grid item is changed.

#### Example
    <kendo:grid save="handle_save">
    </kendo:grid>
    <script>
        function handle_save(e) {
            // Code to handle the save event.
        }
    </script>



### saveChanges `String`

Fires before the grid calls DataSource sync.

#### Example
    <kendo:grid saveChanges="handle_saveChanges">
    </kendo:grid>
    <script>
        function handle_saveChanges(e) {
            // Code to handle the saveChanges event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the grid selection has changed.

#### Example
    <kendo:grid change="handle_change">
    </kendo:grid>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### columnResize `String`

Fires when the user resizes a column.

#### Example
    <kendo:grid columnResize="handle_columnResize">
    </kendo:grid>
    <script>
        function handle_columnResize(e) {
            // Code to handle the columnResize event.
        }
    </script>



### dataBound `String`

Fires when the grid has received data from the data source.

#### Example
    <kendo:grid dataBound="handle_dataBound">
    </kendo:grid>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### detailCollapse `String`

Fires when the grid detail row is collapsed.

#### Example
    <kendo:grid detailCollapse="handle_detailCollapse">
    </kendo:grid>
    <script>
        function handle_detailCollapse(e) {
            // Code to handle the detailCollapse event.
        }
    </script>



### detailExpand `String`

Fires when the grid detail row is expanded.

#### Example
    <kendo:grid detailExpand="handle_detailExpand">
    </kendo:grid>
    <script>
        function handle_detailExpand(e) {
            // Code to handle the detailExpand event.
        }
    </script>



### detailInit `String`

Fires when the grid detail is initialized.

#### Example
    <kendo:grid detailInit="handle_detailInit">
    </kendo:grid>
    <script>
        function handle_detailInit(e) {
            // Code to handle the detailInit event.
        }
    </script>



### edit `String`

Fires when the grid enters edit mode.

#### Example
    <kendo:grid edit="handle_edit">
    </kendo:grid>
    <script>
        function handle_edit(e) {
            // Code to handle the edit event.
        }
    </script>



### remove `String`

Fires before the grid item is removed.

#### Example
    <kendo:grid remove="handle_remove">
    </kendo:grid>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>



### save `String`

Fires before the grid item is changed.

#### Example
    <kendo:grid save="handle_save">
    </kendo:grid>
    <script>
        function handle_save(e) {
            // Code to handle the save event.
        }
    </script>



### saveChanges `String`

Fires before the grid calls DataSource sync.

#### Example
    <kendo:grid saveChanges="handle_saveChanges">
    </kendo:grid>
    <script>
        function handle_saveChanges(e) {
            // Code to handle the saveChanges event.
        }
    </script>


## Event Tags
       

### kendo:grid-change

Fires when the grid selection has changed.

#### Example
    <kendo:grid>
        <kendo:grid-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:grid-change>
    </kendo:grid>

 

### kendo:grid-columnResize

Fires when the user resizes a column.

#### Example
    <kendo:grid>
        <kendo:grid-columnResize>
            <script>
                function(e) {
                    // Code to handle the columnResize event.
                }
            </script>
        </kendo:grid-columnResize>
    </kendo:grid>

 

### kendo:grid-dataBound

Fires when the grid has received data from the data source.

#### Example
    <kendo:grid>
        <kendo:grid-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:grid-dataBound>
    </kendo:grid>

 

### kendo:grid-detailCollapse

Fires when the grid detail row is collapsed.

#### Example
    <kendo:grid>
        <kendo:grid-detailCollapse>
            <script>
                function(e) {
                    // Code to handle the detailCollapse event.
                }
            </script>
        </kendo:grid-detailCollapse>
    </kendo:grid>

 

### kendo:grid-detailExpand

Fires when the grid detail row is expanded.

#### Example
    <kendo:grid>
        <kendo:grid-detailExpand>
            <script>
                function(e) {
                    // Code to handle the detailExpand event.
                }
            </script>
        </kendo:grid-detailExpand>
    </kendo:grid>

 

### kendo:grid-detailInit

Fires when the grid detail is initialized.

#### Example
    <kendo:grid>
        <kendo:grid-detailInit>
            <script>
                function(e) {
                    // Code to handle the detailInit event.
                }
            </script>
        </kendo:grid-detailInit>
    </kendo:grid>

 

### kendo:grid-edit

Fires when the grid enters edit mode.

#### Example
    <kendo:grid>
        <kendo:grid-edit>
            <script>
                function(e) {
                    // Code to handle the edit event.
                }
            </script>
        </kendo:grid-edit>
    </kendo:grid>

 

### kendo:grid-remove

Fires before the grid item is removed.

#### Example
    <kendo:grid>
        <kendo:grid-remove>
            <script>
                function(e) {
                    // Code to handle the remove event.
                }
            </script>
        </kendo:grid-remove>
    </kendo:grid>

 

### kendo:grid-save

Fires before the grid item is changed.

#### Example
    <kendo:grid>
        <kendo:grid-save>
            <script>
                function(e) {
                    // Code to handle the save event.
                }
            </script>
        </kendo:grid-save>
    </kendo:grid>

 

### kendo:grid-saveChanges

Fires before the grid calls DataSource sync.

#### Example
    <kendo:grid>
        <kendo:grid-saveChanges>
            <script>
                function(e) {
                    // Code to handle the saveChanges event.
                }
            </script>
        </kendo:grid-saveChanges>
    </kendo:grid>

 

### kendo:grid-altRowTemplate

Template to be used for rendering the alternate rows in the grid.

#### Example
    <kendo:grid>
        <kendo:grid-altRowTemplate>
            <script>
                function(e) {
                    // Code to handle the altRowTemplate event.
                }
            </script>
        </kendo:grid-altRowTemplate>
    </kendo:grid>

 

### kendo:grid-detailTemplate

Template to be used for rendering the detail rows in the grid.
See the

#### Example
    <kendo:grid>
        <kendo:grid-detailTemplate>
            <script>
                function(e) {
                    // Code to handle the detailTemplate event.
                }
            </script>
        </kendo:grid-detailTemplate>
    </kendo:grid>

 

### kendo:grid-rowTemplate

Template to be used for rendering the rows in the grid.

#### Example
    <kendo:grid>
        <kendo:grid-rowTemplate>
            <script>
                function(e) {
                    // Code to handle the rowTemplate event.
                }
            </script>
        </kendo:grid-rowTemplate>
    </kendo:grid>

 

## Child JSP Tags

### kendo:grid-columns

A collection of column objects or collection of strings that represents the name of the fields.

More documentation is available at [kendo:grid-columns](/api/wrappers/jsp/grid/columns).

#### Example

    <kendo:grid>
        <kendo:grid-columns></kendo:grid-columns>
    </kendo:grid>
 
### kendo:grid-editable

Indicates whether editing is enabled/disabled.

More documentation is available at [kendo:grid-editable](/api/wrappers/jsp/grid/editable).

#### Example

    <kendo:grid>
        <kendo:grid-editable></kendo:grid-editable>
    </kendo:grid>
 
### kendo:grid-groupable

Indicates whether grouping is enabled/disabled.

More documentation is available at [kendo:grid-groupable](/api/wrappers/jsp/grid/groupable).

#### Example

    <kendo:grid>
        <kendo:grid-groupable></kendo:grid-groupable>
    </kendo:grid>
 
### kendo:grid-pageable

Indicates whether paging is enabled/disabled.

More documentation is available at [kendo:grid-pageable](/api/wrappers/jsp/grid/pageable).

#### Example

    <kendo:grid>
        <kendo:grid-pageable></kendo:grid-pageable>
    </kendo:grid>
 
### kendo:grid-scrollable

Enable/disable grid scrolling.

More documentation is available at [kendo:grid-scrollable](/api/wrappers/jsp/grid/scrollable).

#### Example

    <kendo:grid>
        <kendo:grid-scrollable></kendo:grid-scrollable>
    </kendo:grid>
 
### kendo:grid-sortable

Defines whether grid columns are sortable.

More documentation is available at [kendo:grid-sortable](/api/wrappers/jsp/grid/sortable).

#### Example

    <kendo:grid>
        <kendo:grid-sortable></kendo:grid-sortable>
    </kendo:grid>
 
### kendo:grid-toolbar

This is a list of commands for which the corresponding buttons will be rendered.
The supported built-in commands are: "create", "cancel", "save", "destroy".
Or template to be used for rendering the toolbar content.

More documentation is available at [kendo:grid-toolbar](/api/wrappers/jsp/grid/toolbar).

#### Example

    <kendo:grid>
        <kendo:grid-toolbar></kendo:grid-toolbar>
    </kendo:grid>
              
