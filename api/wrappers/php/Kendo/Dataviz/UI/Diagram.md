---
title: Diagram
---

# \Kendo\Dataviz\UI\Diagram

A PHP wrapper for Kendo UI [Diagram](/api/dataviz/diagram).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Diagram in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Diagram

    <?php
    // Create a new instance of Diagram and specify its id
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');

    // Configure it
    $diagram->autoBind(true)

    // Output it

    echo $diagram->render();
    ?>


## Methods

### autoBind
If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->autoBind(true);
    ?>

### change
Fired when an item is added or removed to/from the diagram.
For additional information check the [change](/api/dataviz/diagram#events-change) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### click
Fired when the user clicks on a shape or a connection.
For additional information check the [click](/api/dataviz/diagram#events-click) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->click('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClick(e) {
            // handle the click event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->click('onClick');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->click(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### connectionDefaults

Defines the connections configuration.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionDefaults|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionDefaults](/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionDefaults)
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $endCap = 'value';
    $connectionDefaults->endCap($endCap);
    $diagram->connectionDefaults($connectionDefaults);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $endCap = 'value';
    $diagram->connectionDefaults(array('endCap' => $endCap));
    ?>

### addConnection

Adds one or more DiagramConnection to the Diagram.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value[, $value2, ...] `\Kendo\Dataviz\UI\DiagramConnection|array`

#### Example - using \Kendo\Dataviz\UI\DiagramConnection

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $endCap = 'value';
    $connection->endCap($endCap);
    $diagram->addConnection($connection);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $endCap = 'value';
    $diagram->addConnection(array('endCap' => $endCap));
    ?>

#### Example - adding more than one DiagramConnection

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $first  = new \Kendo\Dataviz\UI\DiagramConnection();
    $second = new \Kendo\Dataviz\UI\DiagramConnection();
    $diagram->addConnection($first, $second);
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $dataSource = new \Kendo\Data\DataSource();
    $diagram->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $schema = new \Kendo\Data\DataSourceSchema();
    $diagram->dataSource(array('schema' => $schema));
    ?>

### draggable
Defines whether items can be dropped on the diagram.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->draggable(true);
    ?>

### editable

Specifies the shape editable.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `boolean|\Kendo\Dataviz\UI\DiagramEditable|array`




#### Example  - using boolean
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->editable(true);
    ?>


#### Example - using [\Kendo\Dataviz\UI\DiagramEditable](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditable)
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $resize = true;
    $editable->resize($resize);
    $diagram->editable($editable);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $resize = true;
    $diagram->editable(array('resize' => $resize));
    ?>

### itemBoundsChange
Fired when the location or size of an item are changed.
For additional information check the [itemBoundsChange](/api/dataviz/diagram#events-itemBoundsChange) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemBoundsChange('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onItemBoundsChange(e) {
            // handle the itemBoundsChange event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemBoundsChange('onItemBoundsChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemBoundsChange(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### itemRotate
Fired when an item is rotated.
For additional information check the [itemRotate](/api/dataviz/diagram#events-itemRotate) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemRotate('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onItemRotate(e) {
            // handle the itemRotate event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemRotate('onItemRotate');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->itemRotate(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### layout

The layout of a diagram consists in arranging the shapes (sometimes also the connections) in some fashion in order to achieve an aesthetically pleasing experience to the user. It aims at giving a more direct insight in the information contained within the diagram and its relational structure.On a technical level, layout consists of a multitude of algorithms and optimizations:and various ad-hoc calculations which depend on the type of layout. The criteria on which an algorithm is based vary but the common denominator is:Kendo diagram includes three of the most used layout algorithms which should cover most of your layout needs - tree layout, force-directed layout and layered layout. Please, check the type property for more details regarding each type.The generic way to apply a layout is by calling the layout() method on the diagram. The method has a single parameter options. It is an object, which can contain parameters which are specific to the layout as well as parameters customizing the global grid layout. Parameters which apply to other layout algorithms can be included but are overlooked if not applicable to the chose layout type. This means that you can define a set of parameters which cover all possible layout types and simply pass it in the method whatever the layout define in the first parameter.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramLayout|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramLayout](/api/wrappers/php/Kendo/Dataviz/UI/DiagramLayout)
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $endRadialAngle = 1;
    $layout->endRadialAngle($endRadialAngle);
    $diagram->layout($layout);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $endRadialAngle = 1;
    $diagram->layout(array('endRadialAngle' => $endRadialAngle));
    ?>

### pan
Fired when the user pans the diagram.
For additional information check the [pan](/api/dataviz/diagram#events-pan) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->pan('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onPan(e) {
            // handle the pan event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->pan('onPan');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->pan(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### select
Fired when the user selects one or more items.
For additional information check the [select](/api/dataviz/diagram#events-select) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### shapeDefaults

Defines the shape options.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramShapeDefaults|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramShapeDefaults](/api/wrappers/php/Kendo/Dataviz/UI/DiagramShapeDefaults)
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $shapeDefaults = new \Kendo\Dataviz\UI\DiagramShapeDefaults();
    $background = 'value';
    $shapeDefaults->background($background);
    $diagram->shapeDefaults($shapeDefaults);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $background = 'value';
    $diagram->shapeDefaults(array('background' => $background));
    ?>

### addShape

Adds one or more DiagramShape to the Diagram.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value[, $value2, ...] `\Kendo\Dataviz\UI\DiagramShape|array`

#### Example - using \Kendo\Dataviz\UI\DiagramShape

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $shape = new \Kendo\Dataviz\UI\DiagramShape();
    $background = 'value';
    $shape->background($background);
    $diagram->addShape($shape);
    ?>

#### Example - using array

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $background = 'value';
    $diagram->addShape(array('background' => $background));
    ?>

#### Example - adding more than one DiagramShape

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $first  = new \Kendo\Dataviz\UI\DiagramShape();
    $second = new \Kendo\Dataviz\UI\DiagramShape();
    $diagram->addShape($first, $second);
    ?>

### template
The template which renders the content of the shape when bound to a dataSource. The names you can use in the template correspond to the properties used in the dataSource. See the dataSource topic below for a concrete example.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->template('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->template(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### zoom
The zoom level in percentages.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoom(1);
    ?>

### zoomEnd
Fired when the user changes the diagram zoom level.
For additional information check the [zoomEnd](/api/dataviz/diagram#events-zoomEnd) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomEnd('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onZoomEnd(e) {
            // handle the zoomEnd event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomEnd('onZoomEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomEnd(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### zoomMax
The zoom max level in percentages.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomMax(1);
    ?>

### zoomMin
The zoom min level in percentages.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomMin(1);
    ?>

### zoomRate
The zoom step when using the mouse-wheel to zoom in or out.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomRate(1);
    ?>

### zoomStart
Fired when the user starts changing the diagram zoom level.
For additional information check the [zoomStart](/api/dataviz/diagram#events-zoomStart) event documentation.

#### Returns
`\Kendo\Dataviz\UI\Diagram`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomStart('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onZoomStart(e) {
            // handle the zoomStart event.
        }
    </script>
    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomStart('onZoomStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $diagram = new \Kendo\Dataviz\UI\Diagram('Diagram');
    $diagram->zoomStart(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

