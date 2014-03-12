---
title: StockChartNavigatorSeriesItemStack
slug: php-dataviz-ui-stockchartnavigatorseriesitemstack
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\StockChartNavigatorSeriesItemStack

A PHP class representing the stack setting of StockChartNavigatorSeriesItem.


## Methods

### group
Indicates that the series should be stacked in a group with the specified name.

#### Returns
`\Kendo\Dataviz\UI\StockChartNavigatorSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\StockChartNavigatorSeriesItemStack();
    $stack->group('value');
    ?>

### type
The type of stack to plot. The following types are supported:

#### Returns
`\Kendo\Dataviz\UI\StockChartNavigatorSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\StockChartNavigatorSeriesItemStack();
    $stack->type('value');
    ?>

