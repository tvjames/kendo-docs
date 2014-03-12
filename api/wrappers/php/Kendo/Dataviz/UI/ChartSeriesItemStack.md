---
title: ChartSeriesItemStack
slug: php-dataviz-ui-chartseriesitemstack
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemStack

A PHP class representing the stack setting of ChartSeriesItem.


## Methods

### group
Indicates that the series should be stacked in a group with the specified name.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\ChartSeriesItemStack();
    $stack->group('value');
    ?>

### type
The type of stack to plot. The following types are supported:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\ChartSeriesItemStack();
    $stack->type('value');
    ?>

