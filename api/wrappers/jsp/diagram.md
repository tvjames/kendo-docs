---
title: diagram
---

# \<kendo:diagram\>
A JSP wrapper for Kendo UI [Diagram](/api/dataviz/diagram).

## Configuration Attributes

### autoBind `boolean`

If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Example
    <kendo:diagram autoBind="autoBind">
    </kendo:diagram>

### draggable `boolean`

Defines whether items can be dropped on the diagram.

#### Example
    <kendo:diagram draggable="draggable">
    </kendo:diagram>

### editable `boolean`

Specifies the shape editable. Further configuration is available via [kendo:diagram-editable](#kendo-diagram-editable). 

#### Example
    <kendo:diagram editable="editable">
    </kendo:diagram>

### template `java.lang.String`

The template which renders the content of the shape when bound to a dataSource. The names you can use in the template correspond to the properties used in the dataSource. See the dataSource topic below for a concrete example.

#### Example
    <kendo:diagram template="template">
    </kendo:diagram>

### zoom `float`

The zoom level in percentages.

#### Example
    <kendo:diagram zoom="zoom">
    </kendo:diagram>

### zoomMax `float`

The zoom max level in percentages.

#### Example
    <kendo:diagram zoomMax="zoomMax">
    </kendo:diagram>

### zoomMin `float`

The zoom min level in percentages.

#### Example
    <kendo:diagram zoomMin="zoomMin">
    </kendo:diagram>

### zoomRate `float`

The zoom step when using the mouse-wheel to zoom in or out.

#### Example
    <kendo:diagram zoomRate="zoomRate">
    </kendo:diagram>


##  Configuration JSP Tags

### kendo:diagram-connectionDefaults

Defines the connections configuration.

More documentation is available at [kendo:diagram-connectionDefaults](/api/wrappers/jsp/diagram/connectiondefaults).

#### Example

    <kendo:diagram>
        <kendo:diagram-connectionDefaults></kendo:diagram-connectionDefaults>
    </kendo:diagram>

### kendo:diagram-connections

Defines the connections configuration.

More documentation is available at [kendo:diagram-connections](/api/wrappers/jsp/diagram/connections).

#### Example

    <kendo:diagram>
        <kendo:diagram-connections></kendo:diagram-connections>
    </kendo:diagram>

### kendo:diagram-editable

Specifies the shape editable.

More documentation is available at [kendo:diagram-editable](/api/wrappers/jsp/diagram/editable).

#### Example

    <kendo:diagram>
        <kendo:diagram-editable></kendo:diagram-editable>
    </kendo:diagram>

### kendo:diagram-layout

The layout of a diagram consists in arranging the shapes (sometimes also the connections) in some fashion in order to achieve an aesthetically pleasing experience to the user. It aims at giving a more direct insight in the information contained within the diagram and its relational structure.On a technical level, layout consists of a multitude of algorithms and optimizations:and various ad-hoc calculations which depend on the type of layout. The criteria on which an algorithm is based vary but the common denominator is:Kendo diagram includes three of the most used layout algorithms which should cover most of your layout needs - tree layout, force-directed layout and layered layout. Please, check the type property for more details regarding each type.The generic way to apply a layout is by calling the layout() method on the diagram. The method has a single parameter options. It is an object, which can contain parameters which are specific to the layout as well as parameters customizing the global grid layout. Parameters which apply to other layout algorithms can be included but are overlooked if not applicable to the chose layout type. This means that you can define a set of parameters which cover all possible layout types and simply pass it in the method whatever the layout define in the first parameter.

More documentation is available at [kendo:diagram-layout](/api/wrappers/jsp/diagram/layout).

#### Example

    <kendo:diagram>
        <kendo:diagram-layout></kendo:diagram-layout>
    </kendo:diagram>

### kendo:diagram-shapeDefaults

Defines the shape options.

More documentation is available at [kendo:diagram-shapeDefaults](/api/wrappers/jsp/diagram/shapedefaults).

#### Example

    <kendo:diagram>
        <kendo:diagram-shapeDefaults></kendo:diagram-shapeDefaults>
    </kendo:diagram>

### kendo:diagram-shapes

Defines the shape options.

More documentation is available at [kendo:diagram-shapes](/api/wrappers/jsp/diagram/shapes).

#### Example

    <kendo:diagram>
        <kendo:diagram-shapes></kendo:diagram-shapes>
    </kendo:diagram>


## Event Attributes

### change `String`

Fired when an item is added or removed to/from the diagram.


For additional information check the [change](/api/dataviz/diagram#events-change) event documentation.

#### Example
    <kendo:diagram change="handle_change">
    </kendo:diagram>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### itemBoundsChange `String`

Fired when the location or size of an item are changed.


For additional information check the [itemBoundsChange](/api/dataviz/diagram#events-itemBoundsChange) event documentation.

#### Example
    <kendo:diagram itemBoundsChange="handle_itemBoundsChange">
    </kendo:diagram>
    <script>
        function handle_itemBoundsChange(e) {
            // Code to handle the itemBoundsChange event.
        }
    </script>

### itemRotate `String`

Fired when an item is rotated.


For additional information check the [itemRotate](/api/dataviz/diagram#events-itemRotate) event documentation.

#### Example
    <kendo:diagram itemRotate="handle_itemRotate">
    </kendo:diagram>
    <script>
        function handle_itemRotate(e) {
            // Code to handle the itemRotate event.
        }
    </script>

### pan `String`

Fired when the user pans the diagram.


For additional information check the [pan](/api/dataviz/diagram#events-pan) event documentation.

#### Example
    <kendo:diagram pan="handle_pan">
    </kendo:diagram>
    <script>
        function handle_pan(e) {
            // Code to handle the pan event.
        }
    </script>

### select `String`

Fired when the user selects one or more items.


For additional information check the [select](/api/dataviz/diagram#events-select) event documentation.

#### Example
    <kendo:diagram select="handle_select">
    </kendo:diagram>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

### zoomStart `String`

Fired when the user starts changing the diagram zoom level.


For additional information check the [zoomStart](/api/dataviz/diagram#events-zoomStart) event documentation.

#### Example
    <kendo:diagram zoomStart="handle_zoomStart">
    </kendo:diagram>
    <script>
        function handle_zoomStart(e) {
            // Code to handle the zoomStart event.
        }
    </script>

### zoomEnd `String`

Fired when the user changes the diagram zoom level.


For additional information check the [zoomEnd](/api/dataviz/diagram#events-zoomEnd) event documentation.

#### Example
    <kendo:diagram zoomEnd="handle_zoomEnd">
    </kendo:diagram>
    <script>
        function handle_zoomEnd(e) {
            // Code to handle the zoomEnd event.
        }
    </script>

### click `String`

Fired when the user clicks on a shape or a connection.


For additional information check the [click](/api/dataviz/diagram#events-click) event documentation.

#### Example
    <kendo:diagram click="handle_click">
    </kendo:diagram>
    <script>
        function handle_click(e) {
            // Code to handle the click event.
        }
    </script>

## Event Tags

### kendo:diagram-change

Fired when an item is added or removed to/from the diagram.


For additional information check the [change](/api/dataviz/diagram#events-change) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:diagram-change>
    </kendo:diagram>

### kendo:diagram-itemBoundsChange

Fired when the location or size of an item are changed.


For additional information check the [itemBoundsChange](/api/dataviz/diagram#events-itemBoundsChange) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-itemBoundsChange>
            <script>
                function(e) {
                    // Code to handle the itemBoundsChange event.
                }
            </script>
        </kendo:diagram-itemBoundsChange>
    </kendo:diagram>

### kendo:diagram-itemRotate

Fired when an item is rotated.


For additional information check the [itemRotate](/api/dataviz/diagram#events-itemRotate) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-itemRotate>
            <script>
                function(e) {
                    // Code to handle the itemRotate event.
                }
            </script>
        </kendo:diagram-itemRotate>
    </kendo:diagram>

### kendo:diagram-pan

Fired when the user pans the diagram.


For additional information check the [pan](/api/dataviz/diagram#events-pan) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-pan>
            <script>
                function(e) {
                    // Code to handle the pan event.
                }
            </script>
        </kendo:diagram-pan>
    </kendo:diagram>

### kendo:diagram-select

Fired when the user selects one or more items.


For additional information check the [select](/api/dataviz/diagram#events-select) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:diagram-select>
    </kendo:diagram>

### kendo:diagram-zoomStart

Fired when the user starts changing the diagram zoom level.


For additional information check the [zoomStart](/api/dataviz/diagram#events-zoomStart) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-zoomStart>
            <script>
                function(e) {
                    // Code to handle the zoomStart event.
                }
            </script>
        </kendo:diagram-zoomStart>
    </kendo:diagram>

### kendo:diagram-zoomEnd

Fired when the user changes the diagram zoom level.


For additional information check the [zoomEnd](/api/dataviz/diagram#events-zoomEnd) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-zoomEnd>
            <script>
                function(e) {
                    // Code to handle the zoomEnd event.
                }
            </script>
        </kendo:diagram-zoomEnd>
    </kendo:diagram>

### kendo:diagram-click

Fired when the user clicks on a shape or a connection.


For additional information check the [click](/api/dataviz/diagram#events-click) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-click>
            <script>
                function(e) {
                    // Code to handle the click event.
                }
            </script>
        </kendo:diagram-click>
    </kendo:diagram>

