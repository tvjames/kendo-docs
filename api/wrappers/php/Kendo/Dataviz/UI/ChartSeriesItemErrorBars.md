---
title: ChartSeriesItemErrorBars
slug: php-dataviz-ui-chartseriesitemerrorbars
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\ChartSeriesItemErrorBars

A PHP class representing the errorBars setting of ChartSeriesItem.


## Methods

### color
The color of the error bars. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->color('value');
    ?>

### endCaps
If set to false, the error bars caps will not be displayed. By default the caps are visible.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->endCaps(true);
    ?>

### line

The error bars line options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemErrorBarsLine|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemErrorBarsLine](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemErrorBarsLine)
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $line = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBarsLine();
    $dashType = 'value';
    $line->dashType($dashType);
    $errorBars->line($line);
    ?>

#### Example - using array

    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $dashType = 'value';
    $errorBars->line(array('dashType' => $dashType));
    ?>

### value
The error bars value.The following value types are supported:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `string|float|array|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->value('value');
    ?>

#### Example  - using float
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->value(1);
    ?>

#### Example  - using array
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->value(new array());
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->value(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### xValue
The xAxis error bars value. See the series.errorBars.value option for a list of the supported value types.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `string|float|array|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->xValue('value');
    ?>

#### Example  - using float
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->xValue(1);
    ?>

#### Example  - using array
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->xValue(new array());
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->xValue(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### yValue
The yAxis error bars value. See the series.errorBars.value option for a list of the supported value types.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItemErrorBars`

#### Parameters

##### $value `string|float|array|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->yValue('value');
    ?>

#### Example  - using float
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->yValue(1);
    ?>

#### Example  - using array
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->yValue(new array());
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $errorBars->yValue(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

