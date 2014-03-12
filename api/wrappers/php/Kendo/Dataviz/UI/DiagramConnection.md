---
title: DiagramConnection
slug: php-dataviz-ui-diagramconnection
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramConnection

A PHP class representing the connection setting of DiagramConnections.


## Methods

### endCap
The start cap (arrow, head or decoration) of the connection:Note that you can also use the "ArrowStart" for the endCap but its direction will be inversed. Much like the startCap example above, you can define custom caps (markers) for the endpoint of the connection.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnection`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $connection->endCap('value');
    ?>

### hover

Defines the hover configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnection`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionHover|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionHover](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionHover)
    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionHover();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionHoverStroke();
    $hover->stroke($stroke);
    $connection->hover($hover);
    ?>

#### Example - using array

    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionHoverStroke();
    $connection->hover(array('stroke' => $stroke));
    ?>

### addPoint

Adds one or more DiagramConnectionPoint to the DiagramConnection.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnection`

#### Parameters

##### $value[, $value2, ...] `\Kendo\Dataviz\UI\DiagramConnectionPoint|array`

#### Example - using \Kendo\Dataviz\UI\DiagramConnectionPoint

    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $point = new \Kendo\Dataviz\UI\DiagramConnectionPoint();
    $x = 1;
    $point->x($x);
    $connection->addPoint($point);
    ?>

#### Example - using array

    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $x = 1;
    $connection->addPoint(array('x' => $x));
    ?>

#### Example - adding more than one DiagramConnectionPoint

    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $first  = new \Kendo\Dataviz\UI\DiagramConnectionPoint();
    $second = new \Kendo\Dataviz\UI\DiagramConnectionPoint();
    $connection->addPoint($first, $second);
    ?>

### startCap
The start cap (arrow, head or decoration) of the connection:

#### Returns
`\Kendo\Dataviz\UI\DiagramConnection`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $connection->startCap('value');
    ?>

### stroke

Defines the stroke configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnection`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionStroke](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionStroke)
    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionStroke();
    $color = 'value';
    $stroke->color($color);
    $connection->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $connection = new \Kendo\Dataviz\UI\DiagramConnection();
    $color = 'value';
    $connection->stroke(array('color' => $color));
    ?>

