---
title: ChartYAxisItemMinorTicks
slug: php-dataviz-ui-chartyaxisitemminorticks
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks

A PHP class representing the minorTicks setting of ChartYAxisItem.


## Methods

### color
The color of the y axis minor ticks lines. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->color('value');
    ?>

### size
The length of the tick line in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->size(1);
    ?>

### skip
The skip of the y axis minor ticks.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->skip(1);
    ?>

### step
The step of the y axis minor ticks.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->step(1);
    ?>

### visible
If set to true the chart will display the y axis minor ticks. By default the y axis minor ticks are not visible.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->visible(true);
    ?>

### width
The width of the minor ticks in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartYAxisItemMinorTicks`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $minorTicks = new \Kendo\Dataviz\UI\ChartYAxisItemMinorTicks();
    $minorTicks->width(1);
    ?>

