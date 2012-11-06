---
title: treeView
slug: jsp-treeView
tags: api, java
publish: true
---

# \<kendo:treeView\>
A JSP tag representing Kendo TreeView.


## Configuration Attributes


### checkboxes `boolean`

If Further configuration is available via [kendo:treeView-checkboxes](#kendo-treeView-checkboxes). 

#### Example
    <kendo:treeView checkboxes="checkboxes">
    </kendo:treeView>



### dataImageUrlField `String`

Sets the field of the data item that provides
the image URL of the treeview nodes.

#### Example
    <kendo:treeView dataImageUrlField="dataImageUrlField">
    </kendo:treeView>



### dataSpriteCssClassField `String`

Sets the field of the data item that provides
the sprite CSS class of the treeview nodes.

#### Example
    <kendo:treeView dataSpriteCssClassField="dataSpriteCssClassField">
    </kendo:treeView>



### dataTextField `String`

Sets the field of the data item that provides
the text content of the treeview nodes.

#### Example
    <kendo:treeView dataTextField="dataTextField">
    </kendo:treeView>



### dataUrlField `String`

Sets the field of the data item that provides
the link URL of the treeview nodes.

#### Example
    <kendo:treeView dataUrlField="dataUrlField">
    </kendo:treeView>



### dragAndDrop `boolean`

Disables (

#### Example
    <kendo:treeView dragAndDrop="dragAndDrop">
    </kendo:treeView>



### loadOnDemand `boolean`

Indicates whether the child datasources should be fetched
lazily, when parent groups get expanded. Setting this to false causes all child dataSources to
be loaded at initialization time. Note: when initializing a TreeView from array (rather than from a
HierarchicalDataSource instance), the default value of this option is false.

#### Example
    <kendo:treeView loadOnDemand="loadOnDemand">
    </kendo:treeView>



### template `String`

Template for rendering of the nodes of the treeview.

#### Example
    <kendo:treeView template="template">
    </kendo:treeView>



### collapse `String`

Triggered before a subgroup gets collapsed.

#### Example
    <kendo:treeView collapse="handle_collapse">
    </kendo:treeView>
    <script>
        function handle_collapse(e) {
            // Code to handle the collapse event.
        }
    </script>



### dataBound `String`

Triggered after the dataSource change event has been processed (adding/removing items);

#### Example
    <kendo:treeView dataBound="handle_dataBound">
    </kendo:treeView>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### drag `String`

Triggered while a node is being dragged.

#### Example
    <kendo:treeView drag="handle_drag">
    </kendo:treeView>
    <script>
        function handle_drag(e) {
            // Code to handle the drag event.
        }
    </script>



### dragend `String`

Triggered after a node has been dropped.

#### Example
    <kendo:treeView dragend="handle_dragend">
    </kendo:treeView>
    <script>
        function handle_dragend(e) {
            // Code to handle the dragend event.
        }
    </script>



### dragstart `String`

Triggered before the dragging of a node starts.

#### Example
    <kendo:treeView dragstart="handle_dragstart">
    </kendo:treeView>
    <script>
        function handle_dragstart(e) {
            // Code to handle the dragstart event.
        }
    </script>



### drop `String`

Triggered when a node is being dropped.

#### Example
    <kendo:treeView drop="handle_drop">
    </kendo:treeView>
    <script>
        function handle_drop(e) {
            // Code to handle the drop event.
        }
    </script>



### expand `String`

Triggered before a subgroup gets expanded.

#### Example
    <kendo:treeView expand="handle_expand">
    </kendo:treeView>
    <script>
        function handle_expand(e) {
            // Code to handle the expand event.
        }
    </script>



### select `String`

Triggered when a node gets selected.

#### Example
    <kendo:treeView select="handle_select">
    </kendo:treeView>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### collapse `String`

Triggered before a subgroup gets collapsed.

#### Example
    <kendo:treeView collapse="handle_collapse">
    </kendo:treeView>
    <script>
        function handle_collapse(e) {
            // Code to handle the collapse event.
        }
    </script>



### dataBound `String`

Triggered after the dataSource change event has been processed (adding/removing items);

#### Example
    <kendo:treeView dataBound="handle_dataBound">
    </kendo:treeView>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### drag `String`

Triggered while a node is being dragged.

#### Example
    <kendo:treeView drag="handle_drag">
    </kendo:treeView>
    <script>
        function handle_drag(e) {
            // Code to handle the drag event.
        }
    </script>



### dragend `String`

Triggered after a node has been dropped.

#### Example
    <kendo:treeView dragend="handle_dragend">
    </kendo:treeView>
    <script>
        function handle_dragend(e) {
            // Code to handle the dragend event.
        }
    </script>



### dragstart `String`

Triggered before the dragging of a node starts.

#### Example
    <kendo:treeView dragstart="handle_dragstart">
    </kendo:treeView>
    <script>
        function handle_dragstart(e) {
            // Code to handle the dragstart event.
        }
    </script>



### drop `String`

Triggered when a node is being dropped.

#### Example
    <kendo:treeView drop="handle_drop">
    </kendo:treeView>
    <script>
        function handle_drop(e) {
            // Code to handle the drop event.
        }
    </script>



### expand `String`

Triggered before a subgroup gets expanded.

#### Example
    <kendo:treeView expand="handle_expand">
    </kendo:treeView>
    <script>
        function handle_expand(e) {
            // Code to handle the expand event.
        }
    </script>



### select `String`

Triggered when a node gets selected.

#### Example
    <kendo:treeView select="handle_select">
    </kendo:treeView>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>


## Event Tags
   

### kendo:treeView-collapse

Triggered before a subgroup gets collapsed.

#### Example
    <kendo:treeView>
        <kendo:treeView-collapse>
            <script>
                function(e) {
                    // Code to handle the collapse event.
                }
            </script>
        </kendo:treeView-collapse>
    </kendo:treeView>

 

### kendo:treeView-dataBound

Triggered after the dataSource change event has been processed (adding/removing items);

#### Example
    <kendo:treeView>
        <kendo:treeView-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:treeView-dataBound>
    </kendo:treeView>

 

### kendo:treeView-drag

Triggered while a node is being dragged.

#### Example
    <kendo:treeView>
        <kendo:treeView-drag>
            <script>
                function(e) {
                    // Code to handle the drag event.
                }
            </script>
        </kendo:treeView-drag>
    </kendo:treeView>

 

### kendo:treeView-dragend

Triggered after a node has been dropped.

#### Example
    <kendo:treeView>
        <kendo:treeView-dragend>
            <script>
                function(e) {
                    // Code to handle the dragend event.
                }
            </script>
        </kendo:treeView-dragend>
    </kendo:treeView>

 

### kendo:treeView-dragstart

Triggered before the dragging of a node starts.

#### Example
    <kendo:treeView>
        <kendo:treeView-dragstart>
            <script>
                function(e) {
                    // Code to handle the dragstart event.
                }
            </script>
        </kendo:treeView-dragstart>
    </kendo:treeView>

 

### kendo:treeView-drop

Triggered when a node is being dropped.

#### Example
    <kendo:treeView>
        <kendo:treeView-drop>
            <script>
                function(e) {
                    // Code to handle the drop event.
                }
            </script>
        </kendo:treeView-drop>
    </kendo:treeView>

 

### kendo:treeView-expand

Triggered before a subgroup gets expanded.

#### Example
    <kendo:treeView>
        <kendo:treeView-expand>
            <script>
                function(e) {
                    // Code to handle the expand event.
                }
            </script>
        </kendo:treeView-expand>
    </kendo:treeView>

 

### kendo:treeView-select

Triggered when a node gets selected.

#### Example
    <kendo:treeView>
        <kendo:treeView-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:treeView-select>
    </kendo:treeView>

 

## Child JSP Tags

### kendo:treeView-animation

A collection of visual animations used when items are expanded or collapsed through user interaction.
Setting this option to

More documentation is available at [kendo:treeView-animation](/api/wrappers/jsp/treeview/animation).

#### Example

    <kendo:treeView>
        <kendo:treeView-animation></kendo:treeView-animation>
    </kendo:treeView>
 
### kendo:treeView-checkboxes

If

More documentation is available at [kendo:treeView-checkboxes](/api/wrappers/jsp/treeview/checkboxes).

#### Example

    <kendo:treeView>
        <kendo:treeView-checkboxes></kendo:treeView-checkboxes>
    </kendo:treeView>
 
### kendo:treeView-items

Contains items of TreeView

More documentation is available at [kendo:treeView-items](/api/wrappers/jsp/treeview/items).

#### Example

    <kendo:treeView>
        <kendo:treeView-items></kendo:treeView-items>
    </kendo:treeView>
         
