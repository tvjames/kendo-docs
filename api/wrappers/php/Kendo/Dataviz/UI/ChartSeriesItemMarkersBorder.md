---
title: ChartSeriesItemMarkersBorder
slug: php-dataviz-ui-chartseriesitemmarkersborder
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemMarkersBorder

A PHP class representing the border setting of ChartSeriesItemMarkers.


## Methods

### color
The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemMarkersBorder`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemMarkersBorder();
    $border->color('value');
    ?>

### width
The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemMarkersBorder`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemMarkersBorder();
    $border->width(1);
    ?>

