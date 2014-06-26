---
title: DiagramEditable
---

# \Kendo\Dataviz\UI\DiagramEditable

A PHP class representing the editable setting of Diagram.


## Methods

### resize

Specifies the shape resizing.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditable`

#### Parameters

##### $value `boolean|\Kendo\Dataviz\UI\DiagramEditableResize|array`




#### Example  - using boolean
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $editable->resize(true);
    ?>


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableResize](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableResize)
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $resize = new \Kendo\Dataviz\UI\DiagramEditableResize();
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $resize->handles($handles);
    $editable->resize($resize);
    ?>

#### Example - using array

    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $handles = new \Kendo\Dataviz\UI\DiagramEditableResizeHandles();
    $editable->resize(array('handles' => $handles));
    ?>

### rotate

Specifyes the rotate style.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditable`

#### Parameters

##### $value `boolean|\Kendo\Dataviz\UI\DiagramEditableRotate|array`




#### Example  - using boolean
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $editable->rotate(true);
    ?>


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableRotate](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableRotate)
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $rotate = new \Kendo\Dataviz\UI\DiagramEditableRotate();
    $thumb = new \Kendo\Dataviz\UI\DiagramEditableRotateThumb();
    $rotate->thumb($thumb);
    $editable->rotate($rotate);
    ?>

#### Example - using array

    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $thumb = new \Kendo\Dataviz\UI\DiagramEditableRotateThumb();
    $editable->rotate(array('thumb' => $thumb));
    ?>

### select

Specifyes the select style.

#### Returns
`\Kendo\Dataviz\UI\DiagramEditable`

#### Parameters

##### $value `boolean|\Kendo\Dataviz\UI\DiagramEditableSelect|array`




#### Example  - using boolean
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $editable->select(true);
    ?>


#### Example - using [\Kendo\Dataviz\UI\DiagramEditableSelect](/api/wrappers/php/Kendo/Dataviz/UI/DiagramEditableSelect)
    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $select = new \Kendo\Dataviz\UI\DiagramEditableSelect();
    $background = 'value';
    $select->background($background);
    $editable->select($select);
    ?>

#### Example - using array

    <?php
    $editable = new \Kendo\Dataviz\UI\DiagramEditable();
    $background = 'value';
    $editable->select(array('background' => $background));
    ?>

