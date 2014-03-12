---
title: DiagramShapeStroke
slug: php-dataviz-ui-diagramshapestroke
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramShapeStroke

A PHP class representing the stroke setting of DiagramShape.


## Methods

### color
Defines the color of the shape's stroke.

#### Returns
`\Kendo\Dataviz\UI\DiagramShapeStroke`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stroke = new \Kendo\Dataviz\UI\DiagramShapeStroke();
    $stroke->color('value');
    ?>

### dashType
The dash type of the shape.The following dash types are supported:

#### Returns
`\Kendo\Dataviz\UI\DiagramShapeStroke`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stroke = new \Kendo\Dataviz\UI\DiagramShapeStroke();
    $stroke->dashType('value');
    ?>

### width
Defines the thickness or width of the shape's stroke.

#### Returns
`\Kendo\Dataviz\UI\DiagramShapeStroke`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $stroke = new \Kendo\Dataviz\UI\DiagramShapeStroke();
    $stroke->width(1);
    ?>

