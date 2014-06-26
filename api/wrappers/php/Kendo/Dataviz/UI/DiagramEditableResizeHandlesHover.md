---
title: DiagramEditableResizeHandlesHover
---

# \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover

A PHP class representing the hover setting of DiagramEditableResizeHandles.


## Methods

### background
Set the handles backgorund.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover();
    $hover->background('value');
    ?>

### stroke

Specifies the handles stroke styles.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHoverStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableResizeHandlesHoverStroke](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableResizeHandlesHoverStroke)
    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover();
    $stroke = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHoverStroke();
    $color = 'value';
    $stroke->color($color);
    $hover->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramEditableResizeHandlesHover();
    $color = 'value';
    $hover->stroke(array('color' => $color));
    ?>

