---
title: diagram
slug: jsp-diagram
tags: api, java
publish: true
---

# \<kendo:diagram\>
A JSP wrapper for Kendo UI [Diagram](/kendo-ui/api/dataviz/diagram).

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

### resizable `boolean`

This defines whether the shapes can be resized. If set to false the adorner will not show the resizing thumbs, as can be seen below;

#### Example
    <kendo:diagram resizable="resizable">
    </kendo:diagram>

### rotatable `boolean`

This defines whether the shapes can be rotated. If set to false the adorner will not show the rotating thumb, as can be seen below;

#### Example
    <kendo:diagram rotatable="rotatable">
    </kendo:diagram>

### template `java.lang.String`

The template which renders the content of the shape when bound to a dataSource. The names you can use in the template correspond to the properties used in the dataSource. See the dataSource topic below for a concrete example.

#### Example
    <kendo:diagram template="template">
    </kendo:diagram>

### zoomRate `float`

The scaling factor or the zoom when using the mouse-wheel to zoom in or out.
If zoomRate is less than 1, zooming will be reversed.

#### Example
    <kendo:diagram zoomRate="zoomRate">
    </kendo:diagram>


##  Configuration JSP Tags

### kendo:diagram-connectionDefaults

Defines the connections configuration.

More documentation is available at [kendo:diagram-connectionDefaults](/kendo-ui/api/wrappers/jsp/diagram/connectiondefaults).

#### Example

    <kendo:diagram>
        <kendo:diagram-connectionDefaults></kendo:diagram-connectionDefaults>
    </kendo:diagram>

### kendo:diagram-connections

Defines the connections configuration.

More documentation is available at [kendo:diagram-connections](/kendo-ui/api/wrappers/jsp/diagram/connections).

#### Example

    <kendo:diagram>
        <kendo:diagram-connections></kendo:diagram-connections>
    </kendo:diagram>

### kendo:diagram-layout

The layout of a diagram consists in arranging the shapes (sometimes also the connections) in some fashion in order to achieve an aesthetically pleasing experience to the user. It aims at giving a more direct insight in the information contained within the diagram and its relational structure.On a technical level, layout consists of a multitude of algorithms and optimizations:and various ad-hoc calculations which depend on the type of layout. The criteria on which an algorithm is based vary but the common denominator is:Kendo diagram includes three of the most used layout algorithms which should cover most of your layout needs - tree layout, force-directed layout and layered layout. Please, check the type property for more details regarding each type.The generic way to apply a layout is by calling the layout() method on the diagram. The method has a single parameter options. It is an object, which can contain parameters which are specific to the layout as well as parameters customizing the global grid layout. Parameters which apply to other layout algorithms can be included but are overlooked if not applicable to the chose layout type. This means that you can define a set of parameters which cover all possible layout types and simply pass it in the method whatever the layout define in the first parameter.

More documentation is available at [kendo:diagram-layout](/kendo-ui/api/wrappers/jsp/diagram/layout).

#### Example

    <kendo:diagram>
        <kendo:diagram-layout></kendo:diagram-layout>
    </kendo:diagram>

### kendo:diagram-shapeDefaults

Defines the shape options.

More documentation is available at [kendo:diagram-shapeDefaults](/kendo-ui/api/wrappers/jsp/diagram/shapedefaults).

#### Example

    <kendo:diagram>
        <kendo:diagram-shapeDefaults></kendo:diagram-shapeDefaults>
    </kendo:diagram>

### kendo:diagram-shapes

Defines the shape options.

More documentation is available at [kendo:diagram-shapes](/kendo-ui/api/wrappers/jsp/diagram/shapes).

#### Example

    <kendo:diagram>
        <kendo:diagram-shapes></kendo:diagram-shapes>
    </kendo:diagram>


## Event Attributes

### change `String`

Fired when an item is added or removed to/from the diagram.


For additional information check the [change](/kendo-ui/api/dataviz/diagram#events-change) event documentation.

#### Example
    <kendo:diagram change="handle_change">
    </kendo:diagram>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### itemBoundsChange `String`

Fired when the bounds of an item are changed.


For additional information check the [itemBoundsChange](/kendo-ui/api/dataviz/diagram#events-itemBoundsChange) event documentation.

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


For additional information check the [itemRotate](/kendo-ui/api/dataviz/diagram#events-itemRotate) event documentation.

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


For additional information check the [pan](/kendo-ui/api/dataviz/diagram#events-pan) event documentation.

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


For additional information check the [select](/kendo-ui/api/dataviz/diagram#events-select) event documentation.

#### Example
    <kendo:diagram select="handle_select">
    </kendo:diagram>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

### zoom `String`

Fired when the user changes the diagram zoom level.


For additional information check the [zoom](/kendo-ui/api/dataviz/diagram#events-zoom) event documentation.

#### Example
    <kendo:diagram zoom="handle_zoom">
    </kendo:diagram>
    <script>
        function handle_zoom(e) {
            // Code to handle the zoom event.
        }
    </script>

## Event Tags

### kendo:diagram-change

Fired when an item is added or removed to/from the diagram.


For additional information check the [change](/kendo-ui/api/dataviz/diagram#events-change) event documentation.

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

Fired when the bounds of an item are changed.


For additional information check the [itemBoundsChange](/kendo-ui/api/dataviz/diagram#events-itemBoundsChange) event documentation.

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


For additional information check the [itemRotate](/kendo-ui/api/dataviz/diagram#events-itemRotate) event documentation.

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


For additional information check the [pan](/kendo-ui/api/dataviz/diagram#events-pan) event documentation.

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


For additional information check the [select](/kendo-ui/api/dataviz/diagram#events-select) event documentation.

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

### kendo:diagram-zoom

Fired when the user changes the diagram zoom level.


For additional information check the [zoom](/kendo-ui/api/dataviz/diagram#events-zoom) event documentation.

#### Example
    <kendo:diagram>
        <kendo:diagram-zoom>
            <script>
                function(e) {
                    // Code to handle the zoom event.
                }
            </script>
        </kendo:diagram-zoom>
    </kendo:diagram>

