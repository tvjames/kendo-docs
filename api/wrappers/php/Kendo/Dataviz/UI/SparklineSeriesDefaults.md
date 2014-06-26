---
title: SparklineSeriesDefaults
---

# \Kendo\Dataviz\UI\SparklineSeriesDefaults

A PHP class representing the seriesDefaults setting of Sparkline.


## Methods

### area
The area configuration options.
The default options for all area series. For more details see the series options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### bar
The default options for all bar series. For more details see the series options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### border

The border of the series.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\SparklineSeriesDefaultsBorder|array`


#### Example - using [\Kendo\Dataviz\UI\SparklineSeriesDefaultsBorder](/api/wrappers/php/Kendo/Dataviz/UI/SparklineSeriesDefaultsBorder)
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $border = new \Kendo\Dataviz\UI\SparklineSeriesDefaultsBorder();
    $color = 'value';
    $border->color($color);
    $seriesDefaults->border($border);
    ?>

#### Example - using array

    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $color = 'value';
    $seriesDefaults->border(array('color' => $color));
    ?>

### column
The column configuration options.
The default options for all column series. For more details see the series options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### gap
The distance between category clusters.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $seriesDefaults->gap(1);
    ?>

### labels

Configures the series data labels.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\SparklineSeriesDefaultsLabels|array`


#### Example - using [\Kendo\Dataviz\UI\SparklineSeriesDefaultsLabels](/api/wrappers/php/Kendo/Dataviz/UI/SparklineSeriesDefaultsLabels)
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $labels = new \Kendo\Dataviz\UI\SparklineSeriesDefaultsLabels();
    $background = 'value';
    $labels->background($background);
    $seriesDefaults->labels($labels);
    ?>

#### Example - using array

    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $background = 'value';
    $seriesDefaults->labels(array('background' => $background));
    ?>

### line
The line configuration options.
The default options for all line series. For more details see the series options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### overlay
The effects overlay.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### pie
The pie configuration options.
The default options for all pie series. For more details see the series options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value ``



### spacing
Space between bars.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $seriesDefaults->spacing(1);
    ?>

### stack

A boolean value indicating if the series should be stacked.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `boolean|\Kendo\Dataviz\UI\SparklineSeriesDefaultsStack|array`




#### Example  - using boolean
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $seriesDefaults->stack(true);
    ?>


#### Example - using [\Kendo\Dataviz\UI\SparklineSeriesDefaultsStack](/api/wrappers/php/Kendo/Dataviz/UI/SparklineSeriesDefaultsStack)
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $stack = new \Kendo\Dataviz\UI\SparklineSeriesDefaultsStack();
    $type = 'value';
    $stack->type($type);
    $seriesDefaults->stack($stack);
    ?>

#### Example - using array

    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $type = 'value';
    $seriesDefaults->stack(array('type' => $type));
    ?>

### tooltip

The data point tooltip configuration options.

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\SparklineSeriesDefaultsTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\SparklineSeriesDefaultsTooltip](/api/wrappers/php/Kendo/Dataviz/UI/SparklineSeriesDefaultsTooltip)
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $tooltip = new \Kendo\Dataviz\UI\SparklineSeriesDefaultsTooltip();
    $background = 'value';
    $tooltip->background($background);
    $seriesDefaults->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $background = 'value';
    $seriesDefaults->tooltip(array('background' => $background));
    ?>

### type
The type of the series. Available types:

#### Returns
`\Kendo\Dataviz\UI\SparklineSeriesDefaults`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesDefaults = new \Kendo\Dataviz\UI\SparklineSeriesDefaults();
    $seriesDefaults->type('value');
    ?>

