---
title: ChartXAxisItemMinorTicks
slug: php-dataviz-ui-chartxaxisitemminorticks
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks

A PHP class representing the minorTicks setting of ChartXAxisItem.


## Methods

### color
The color of the x axis minor ticks lines. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->color('value');
    ?>

### size
The length of the tick line in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->size(1);
    ?>

### skip
The skip of the x axis minor ticks.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->skip(1);
    ?>

### step
The step of the x axis minor ticks.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->step(1);
    ?>

### visible
If set to true the chart will display the x axis minor ticks. By default the x axis minor ticks are not visible.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->visible(true);
    ?>

### width
The width of the minor ticks in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartXAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartXAxisItemMinorTicks();
    $minorTicks->width(1);
    ?>

