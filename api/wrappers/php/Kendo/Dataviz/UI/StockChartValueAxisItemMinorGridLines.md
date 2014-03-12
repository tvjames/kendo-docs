---
title: StockChartValueAxisItemMinorGridLines
slug: php-dataviz-ui-stockchartvalueaxisitemminorgridlines
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines

A PHP class representing the minorGridLines setting of StockChartValueAxisItem.


## Methods

### color
The color of the lines.Note that this has no effect if the visibility of the minor grid lines is not set to true.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->color('value');
    ?>

### dashType
The dash type of the minor grid lines.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->dashType('value');
    ?>

### skip
The skip of the value axis minor grid lines.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->skip(1);
    ?>

### step
The step of the value axis minor grid lines.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->step(1);
    ?>

### visible
The visibility of the lines.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->visible(true);
    ?>

### width
The width of the lines.Note that this settings has no effect if the visibility of the minor grid lines is not set to true.

#### Returns
`\Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorGridLines = new \Kendo\Dataviz\UI\StockChartValueAxisItemMinorGridLines();
    $minorGridLines->width(1);
    ?>

