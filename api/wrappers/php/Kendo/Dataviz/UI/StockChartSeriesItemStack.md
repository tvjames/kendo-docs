---
title: StockChartSeriesItemStack
slug: php-dataviz-ui-stockchartseriesitemstack
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\StockChartSeriesItemStack

A PHP class representing the stack setting of StockChartSeriesItem.


## Methods

### group
Indicates that the series should be stacked in a group with the specified name.

#### Returns
`\Kendo\Dataviz\UI\StockChartSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\StockChartSeriesItemStack();
    $stack->group('value');
    ?>

### type
The type of stack to plot. The following types are supported:

#### Returns
`\Kendo\Dataviz\UI\StockChartSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\StockChartSeriesItemStack();
    $stack->type('value');
    ?>

