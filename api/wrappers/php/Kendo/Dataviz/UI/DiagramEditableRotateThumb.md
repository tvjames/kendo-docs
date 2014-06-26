---
title: DiagramEditableRotateThumb
---

# \Kendo\Dataviz\UI\DiagramEditableRotateThumb

A PHP class representing the thumb setting of DiagramEditableRotate.


## Methods

### background
Set the thumb backgorund.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableRotateThumb`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $thumb = new \Kendo\Dataviz\UI\DiagramEditableRotateThumb();
    $thumb->background('value');
    ?>

### stroke

Specifies the thumb stroke styles.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableRotateThumb`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramEditableRotateThumbStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableRotateThumbStroke](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableRotateThumbStroke)
    <?php
    $thumb = new \Kendo\Dataviz\UI\DiagramEditableRotateThumb();
    $stroke = new \Kendo\Dataviz\UI\DiagramEditableRotateThumbStroke();
    $color = 'value';
    $stroke->color($color);
    $thumb->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $thumb = new \Kendo\Dataviz\UI\DiagramEditableRotateThumb();
    $color = 'value';
    $thumb->stroke(array('color' => $color));
    ?>

