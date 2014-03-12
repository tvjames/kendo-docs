---
title: ChartSeriesItemExtremes
slug: php-dataviz-ui-chartseriesitemextremes
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemExtremes

A PHP class representing the extremes setting of ChartSeriesItem.


## Methods

### background
The background color of the series outliers.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemExtremes`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->background('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->background(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### border

The border of the extremes.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemExtremes`

#### Parameters

##### $value `\Kendo\JavaScriptFunction|\Kendo\Dataviz\UI\ChartSeriesItemExtremesBorder|array`




#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->border(new \Kendo\JavaScriptFunction('function() { }'));
    ?>


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemExtremesBorder](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemExtremesBorder)
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemExtremesBorder();
    $color = 'value';
    $border->color($color);
    $extremes->border($border);
    ?>

#### Example - using array

    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $color = 'value';
    $extremes->border(array('color' => $color));
    ?>

### rotation
The rotation angle of the extremes.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemExtremes`

#### Parameters

##### $value `float|\Kendo\JavaScriptFunction`



#### Example  - using float
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->rotation(1);
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->rotation(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### size
The extremes size in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemExtremes`

#### Parameters

##### $value `float|\Kendo\JavaScriptFunction`



#### Example  - using float
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->size(1);
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->size(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### type
The extremes shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemExtremes`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->type('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $extremes->type(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

