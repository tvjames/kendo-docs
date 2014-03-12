---
title: SparklineSeriesItemStack
slug: php-dataviz-ui-sparklineseriesitemstack
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\SparklineSeriesItemStack

A PHP class representing the stack setting of SparklineSeriesItem.


## Methods

### group
Indicates that the series should be stacked in a group with the specified name.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\SparklineSeriesItemStack();
    $stack->group('value');
    ?>

### type
The type of stack to plot. The following types are supported:

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesItemStack`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $stack = new \Kendo\Dataviz\UI\SparklineSeriesItemStack();
    $stack->type('value');
    ?>

