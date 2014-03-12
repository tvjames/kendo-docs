---
title: StockChartLegendLabels
slug: php-dataviz-ui-stockchartlegendlabels
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\StockChartLegendLabels

A PHP class representing the labels setting of StockChartLegend.


## Methods

### color
The color of the labels.
Any valid CSS color string will work here, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\StockChartLegendLabels`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $labels = new \Kendo\Dataviz\UI\StockChartLegendLabels();
    $labels->color('value');
    ?>

### font
The font style of the labels.

#### Returns
`\Kendo\Dataviz\UI\StockChartLegendLabels`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $labels = new \Kendo\Dataviz\UI\StockChartLegendLabels();
    $labels->font('value');
    ?>

### template
The template which renders the labels.The fields which can be used in the template are:

#### Returns
`\Kendo\Dataviz\UI\StockChartLegendLabels`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $labels = new \Kendo\Dataviz\UI\StockChartLegendLabels();
    $labels->template('value');
    ?>

