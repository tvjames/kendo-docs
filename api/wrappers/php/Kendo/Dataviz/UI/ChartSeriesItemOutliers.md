---
title: ChartSeriesItemOutliers
slug: php-dataviz-ui-chartseriesitemoutliers
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemOutliers

A PHP class representing the outliers setting of ChartSeriesItem.


## Methods

### background
The background color of the series outliers.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemOutliers`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->background('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->background(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### border

The border of the outliers.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemOutliers`

#### Parameters

##### $value `\Kendo\JavaScriptFunction|\Kendo\Dataviz\UI\ChartSeriesItemOutliersBorder|array`




#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->border(new \Kendo\JavaScriptFunction('function() { }'));
    ?>


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemOutliersBorder](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemOutliersBorder)
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemOutliersBorder();
    $color = 'value';
    $border->color($color);
    $outliers->border($border);
    ?>

#### Example - using array

    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $color = 'value';
    $outliers->border(array('color' => $color));
    ?>

### rotation
The rotation angle of the outliers.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemOutliers`

#### Parameters

##### $value `float|\Kendo\JavaScriptFunction`



#### Example  - using float
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->rotation(1);
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->rotation(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### size
The marker size in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemOutliers`

#### Parameters

##### $value `float|\Kendo\JavaScriptFunction`



#### Example  - using float
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->size(1);
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->size(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### type
The outliers shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemOutliers`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->type('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $outliers->type(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

