---
title: DiagramConnectionDefaults
---

# \Kendo\Dataviz\UI\DiagramConnectionDefaults

A PHP class representing the connectionDefaults setting of Diagram.


## Methods

### endCap
The start cap (arrow, head or decoration) of the connection:Note that you can also use the "ArrowStart" for the endCap but its direction will be inversed.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionDefaults`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $connectionDefaults->endCap('value');
    ?>

### hover

Defines the hover configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionDefaultsHover|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionDefaultsHover](/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionDefaultsHover)
    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHover();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHoverStroke();
    $hover->stroke($stroke);
    $connectionDefaults->hover($hover);
    ?>

#### Example - using array

    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHoverStroke();
    $connectionDefaults->hover(array('stroke' => $stroke));
    ?>

### startCap
The start cap (arrow, head or decoration) of the connection:

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionDefaults`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $connectionDefaults->startCap('value');
    ?>

### stroke

Defines the stroke configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionDefaultsStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionDefaultsStroke](/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionDefaultsStroke)
    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsStroke();
    $color = 'value';
    $stroke->color($color);
    $connectionDefaults->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $connectionDefaults = new \Kendo\Dataviz\UI\DiagramConnectionDefaults();
    $color = 'value';
    $connectionDefaults->stroke(array('color' => $color));
    ?>

