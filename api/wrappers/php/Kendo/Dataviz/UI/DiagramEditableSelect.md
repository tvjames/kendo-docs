---
title: DiagramEditableSelect
---

# \Kendo\Dataviz\UI\DiagramEditableSelect

A PHP class representing the select setting of DiagramEditable.


## Methods

### background
Set the thumb backgorund.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $select = new \Kendo\Dataviz\UI\DiagramEditableSelect();
    $select->background('value');
    ?>

### stroke

Specifies the select stroke styles.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditableSelect`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramEditableSelectStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableSelectStroke](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableSelectStroke)
    <?php
    $select = new \Kendo\Dataviz\UI\DiagramEditableSelect();
    $stroke = new \Kendo\Dataviz\UI\DiagramEditableSelectStroke();
    $color = 'value';
    $stroke->color($color);
    $select->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $select = new \Kendo\Dataviz\UI\DiagramEditableSelect();
    $color = 'value';
    $select->stroke(array('color' => $color));
    ?>

