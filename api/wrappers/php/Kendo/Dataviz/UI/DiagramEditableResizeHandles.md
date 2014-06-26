---
title: DiagramEditableResizeHandles
---

# \Kendo\Dataviz\UI\DiagramEditableResizeHandles

A PHP class representing the handles setting of DiagramEditableResize.


## Methods

### background
Set the handles backgorund.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandles`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $handles->background('value');
    ?>

### height
The hangles height.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandles`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $handles->height(1);
    ?>

### hover

Set the handles hover styles.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandles`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableResizeHandlesHover)
    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $hover = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover();
    $background = 'value';
    $hover->background($background);
    $handles->hover($hover);
    ?>

#### Example - using array

    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $background = 'value';
    $handles->hover(array('background' => $background));
    ?>

### stroke

Specifies the handles stroke styles.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandles`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramEditableResizeHandlesStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableResizeHandlesStroke](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableResizeHandlesStroke)
    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $stroke = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesStroke();
    $color = 'value';
    $stroke->color($color);
    $handles->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $color = 'value';
    $handles->stroke(array('color' => $color));
    ?>

### width
The hangles width.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandles`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $handles->width(1);
    ?>

