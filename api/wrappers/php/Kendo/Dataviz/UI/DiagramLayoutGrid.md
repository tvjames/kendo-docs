---
title: DiagramLayoutGrid
slug: php-dataviz-ui-diagramlayoutgrid
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramLayoutGrid

A PHP class representing the grid setting of DiagramLayout.


## Methods

### componentSpacingX
defines the horizontal spacing between each component. The default is 50.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayoutGrid`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $grid->componentSpacingX(1);
    ?>

### componentSpacingY
defines the vertical spacing between each component. The default is 50.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayoutGrid`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $grid->componentSpacingY(1);
    ?>

### offsetX
defines the left offset of the grid layout. The default is 50.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayoutGrid`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $grid->offsetX(1);
    ?>

### offsetY
defines the top offset of the grid layout. The default is 50.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayoutGrid`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $grid->offsetY(1);
    ?>

### width
defines the width of the grid. The bigger this parameter the more components will be organized in an horizontal row. How many components really depends on your diagram and they type of layout applied to each component. The default is set to 800.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayoutGrid`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $grid->width(1);
    ?>

