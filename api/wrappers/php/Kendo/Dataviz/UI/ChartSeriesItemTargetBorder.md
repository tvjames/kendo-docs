---
title: ChartSeriesItemTargetBorder
slug: php-dataviz-ui-chartseriesitemtargetborder
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemTargetBorder

A PHP class representing the border setting of ChartSeriesItemTarget.


## Methods

### color
The color of the border.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemTargetBorder`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemTargetBorder();
    $border->color('value');
    ?>

### dashType
The following dash types are supported:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemTargetBorder`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemTargetBorder();
    $border->dashType('value');
    ?>

### width
The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemTargetBorder`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemTargetBorder();
    $border->width(1);
    ?>

