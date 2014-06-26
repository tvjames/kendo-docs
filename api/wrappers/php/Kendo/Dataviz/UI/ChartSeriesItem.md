---
title: ChartSeriesItem
---

# \Kendo\Dataviz\UI\ChartSeriesItem

A PHP class representing the seriesItem setting of ChartSeries.


## Methods

### aggregate
The aggregate function to apply for date series.This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.The supported values are:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->aggregate('value');
    ?>

### axis
The name of the value axis to use.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->axis('value');
    ?>

### border

The border of the chart series.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemBorder|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemBorder](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemBorder)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $border = new \Kendo\Dataviz\UI\ChartSeriesItemBorder();
    $color = 'value';
    $border->color($color);
    $seriesItem->border($border);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->border(array('color' => $color));
    ?>

### categoryField
The data item field which contains the category name or date.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->categoryField('value');
    ?>

### closeField
The data field containing the close value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->closeField('value');
    ?>

### color
The series base color. The supported values are:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->color('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->color(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### colorField
The data item field which contains the series color.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->colorField('value');
    ?>

### connectors

The label connectors options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemConnectors|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemConnectors](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemConnectors)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $connectors = new \Kendo\Dataviz\UI\ChartSeriesItemConnectors();
    $color = 'value';
    $connectors->color($color);
    $seriesItem->connectors($connectors);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->connectors(array('color' => $color));
    ?>

### currentField
The data item field containing the current value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->currentField('value');
    ?>

### dashType
The dash type of line chart.The following dash types are supported:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->dashType('value');
    ?>

### data
The array of data items which represent the series data.Can be set to :

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->data(new array());
    ?>

### downColor
The series color when the open value is greater than the close value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->downColor('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->downColor(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### downColorField
The data field containing the color applied when the open value is greater than the close value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->downColorField('value');
    ?>

### dynamicHeight
When set to false all segments become with the same height, otherwise the height of each segment is based on its value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->dynamicHeight(true);
    ?>

### dynamicSlope
When set to true the ratio of the bases of each segment is calculated based on the ratio of currentDataItem.value/nextDataItem.value
The last element is always created like a rectangle since there is no following element.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->dynamicSlope(true);
    ?>

### errorBars

The error bars of the chart series.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemErrorBars|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemErrorBars](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemErrorBars)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $errorBars = new \Kendo\Dataviz\UI\ChartSeriesItemErrorBars();
    $color = 'value';
    $errorBars->color($color);
    $seriesItem->errorBars($errorBars);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->errorBars(array('color' => $color));
    ?>

### errorHighField
The data item field which contains the series.errorBars high value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->errorHighField('value');
    ?>

### errorLowField
The data item field which contains the series.errorBars low value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->errorLowField('value');
    ?>

### explodeField
The data item field which contains a boolean value indicating whether the sector is exploded.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->explodeField('value');
    ?>

### extremes

The chart series extremes configuration.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemExtremes|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemExtremes](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemExtremes)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $extremes = new \Kendo\Dataviz\UI\ChartSeriesItemExtremes();
    $background = 'value';
    $extremes->background($background);
    $seriesItem->extremes($extremes);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $background = 'value';
    $seriesItem->extremes(array('background' => $background));
    ?>

### field
The data item field which contains the series value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->field('value');
    ?>

### fromField
The data item field which contains the series from value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->fromField('value');
    ?>

### gap
The distance between the category clusters.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->gap(1);
    ?>

### highField
The data field containing the high value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->highField('value');
    ?>

### highlight

The chart series highlighting configuration options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemHighlight|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemHighlight](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemHighlight)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $highlight = new \Kendo\Dataviz\UI\ChartSeriesItemHighlight();
    $color = 'value';
    $highlight->color($color);
    $seriesItem->highlight($highlight);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->highlight(array('color' => $color));
    ?>

### holeSize
The diameter of the donut hole in pixels.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->holeSize(1);
    ?>

### labels

The chart series label configuration.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemLabels|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemLabels](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemLabels)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $labels = new \Kendo\Dataviz\UI\ChartSeriesItemLabels();
    $align = 'value';
    $labels->align($align);
    $seriesItem->labels($labels);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $align = 'value';
    $seriesItem->labels(array('align' => $align));
    ?>

### line

The chart line configuration options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string|\Kendo\Dataviz\UI\ChartSeriesItemLine|array`




#### Example  - using string
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->line('value');
    ?>


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemLine](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemLine)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $line = new \Kendo\Dataviz\UI\ChartSeriesItemLine();
    $color = 'value';
    $line->color($color);
    $seriesItem->line($line);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->line(array('color' => $color));
    ?>

### lowField
The data field containing the low value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->lowField('value');
    ?>

### lowerField
The data item field which contains the series lower value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->lowerField('value');
    ?>

### margin

The margin around each donut series (ring). A numeric value will set all margins.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float|\Kendo\Dataviz\UI\ChartSeriesItemMargin|array`




#### Example  - using float
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->margin(1);
    ?>


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemMargin](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemMargin)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $margin = new \Kendo\Dataviz\UI\ChartSeriesItemMargin();
    $bottom = 1;
    $margin->bottom($bottom);
    $seriesItem->margin($margin);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $bottom = 1;
    $seriesItem->margin(array('bottom' => $bottom));
    ?>

### markers

The chart series marker configuration.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemMarkers|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemMarkers](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemMarkers)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $markers = new \Kendo\Dataviz\UI\ChartSeriesItemMarkers();
    $background = 'value';
    $markers->background($background);
    $seriesItem->markers($markers);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $background = 'value';
    $seriesItem->markers(array('background' => $background));
    ?>

### maxSize
The maximum size of the chart bubble series marker.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->maxSize(1);
    ?>

### meanField
The data item field which contains the series mean value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->meanField('value');
    ?>

### medianField
The data item field which contains the series median value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->medianField('value');
    ?>

### minSize
The minimum size of the chart bubble series marker.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->minSize(1);
    ?>

### missingValues
The behavior for handling missing values. The supported values are:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->missingValues('value');
    ?>

### name
The name of the chart series which is visible in the legend.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->name('value');
    ?>

### neckRatio
specifies the ratio top-base/bottom-base of the whole chart. neckRatio set to three means the top base is three times smaller than the bottom base.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->neckRatio(1);
    ?>

### negativeColor
The color to use for bar, column or waterfall series with negative values. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->negativeColor('value');
    ?>

### negativeValues

The options for displaying the chart negative bubble values.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemNegativeValues|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemNegativeValues](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemNegativeValues)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $negativeValues = new \Kendo\Dataviz\UI\ChartSeriesItemNegativeValues();
    $color = 'value';
    $negativeValues->color($color);
    $seriesItem->negativeValues($negativeValues);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->negativeValues(array('color' => $color));
    ?>

### noteTextField
The data item field which contains the series note text.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->noteTextField('value');
    ?>

### notes

The series notes configuration.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemNotes|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemNotes](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemNotes)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $notes = new \Kendo\Dataviz\UI\ChartSeriesItemNotes();
    $position = 'value';
    $notes->position($position);
    $seriesItem->notes($notes);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $position = 'value';
    $seriesItem->notes(array('position' => $position));
    ?>

### opacity
The series opacity. By default the series are opaque.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->opacity(1);
    ?>

### openField
The data field containing the open value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->openField('value');
    ?>

### outliers

The chart series outliers configuration.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemOutliers|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemOutliers](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemOutliers)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $outliers = new \Kendo\Dataviz\UI\ChartSeriesItemOutliers();
    $background = 'value';
    $outliers->background($background);
    $seriesItem->outliers($outliers);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $background = 'value';
    $seriesItem->outliers(array('background' => $background));
    ?>

### outliersField
The data item field which contains the series outliers value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->outliersField('value');
    ?>

### overlay

The chart series overlay options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemOverlay|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemOverlay](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemOverlay)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $overlay = new \Kendo\Dataviz\UI\ChartSeriesItemOverlay();
    $gradient = 'value';
    $overlay->gradient($gradient);
    $seriesItem->overlay($overlay);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $gradient = 'value';
    $seriesItem->overlay(array('gradient' => $gradient));
    ?>

### padding
The padding around the chart (equal on all sides).

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->padding(1);
    ?>

### q1Field
The data item field which contains the series q1 value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->q1Field('value');
    ?>

### q3Field
The data item field which contains the series q3 value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->q3Field('value');
    ?>

### segmentSpacing
The space in pixels between the different segments of the funnel chart.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->segmentSpacing(1);
    ?>

### size
The or radius of the chart donut series in pixels. If not set, the available space is split evenly between the series.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->size(1);
    ?>

### sizeField
The data field containing the bubble size value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->sizeField('value');
    ?>

### spacing
The space between the chart series as proportion of the series width.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->spacing(1);
    ?>

### stack

A boolean value indicating if the series should be stacked.
A string value is interpreted as series.stack.group.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `boolean|string|\Kendo\Dataviz\UI\ChartSeriesItemStack|array`




#### Example  - using boolean
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->stack(true);
    ?>

#### Example  - using string
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->stack('value');
    ?>


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemStack](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemStack)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $stack = new \Kendo\Dataviz\UI\ChartSeriesItemStack();
    $group = 'value';
    $stack->group($group);
    $seriesItem->stack($stack);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $group = 'value';
    $seriesItem->stack(array('group' => $group));
    ?>

### startAngle
The start angle (degrees) of the first donut or pie segment.Angles increase clockwise and zero is to the left. Negative values are acceptable.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->startAngle(1);
    ?>

### style
The supported values are:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->style('value');
    ?>

### summaryField
The data item field which contains the summary type for waterfall series.
Summary columns are optional and can be one of two types:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->summaryField('value');
    ?>

### target

The configuration options of the target

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemTarget|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemTarget](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemTarget)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $target = new \Kendo\Dataviz\UI\ChartSeriesItemTarget();
    $color = 'value';
    $target->color($color);
    $seriesItem->target($target);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $color = 'value';
    $seriesItem->target(array('color' => $color));
    ?>

### targetField
The data item field containing the target value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->targetField('value');
    ?>

### toField
The data item field which contains the series to value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->toField('value');
    ?>

### tooltip

The chart series tooltip configuration options.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `\Kendo\Dataviz\UI\ChartSeriesItemTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\ChartSeriesItemTooltip](/api/wrappers/php/Kendo/Dataviz/UI/ChartSeriesItemTooltip)
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $tooltip = new \Kendo\Dataviz\UI\ChartSeriesItemTooltip();
    $background = 'value';
    $tooltip->background($background);
    $seriesItem->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $background = 'value';
    $seriesItem->tooltip(array('background' => $background));
    ?>

### type
The type of the series.The supported values are:

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->type('value');
    ?>

### upperField
The data item field which contains the series upper value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->upperField('value');
    ?>

### visibleInLegend
A value indicating whether to show the point category name (for bubble, donut and pie series)
or series name (for other available series types) in the legend.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->visibleInLegend(true);
    ?>

### visibleInLegendField
The data item field which indicates whether to show the point category name in the legend.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->visibleInLegendField('value');
    ?>

### width
The line width.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->width(1);
    ?>

### xAxis
The name of the X axis to use.For polar series the xAxis range is expressed in degrees.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->xAxis('value');
    ?>

### xErrorHighField
The data item field which contains the series.errorBars xAxis high value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->xErrorHighField('value');
    ?>

### xErrorLowField
The data item field which contains the series.errorBars xAxis low value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->xErrorLowField('value');
    ?>

### xField
The data item field containing the X value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->xField('value');
    ?>

### yAxis
The name of the Y axis to use.** Available for bubble, scatter, scatterLine and polar series. **

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->yAxis('value');
    ?>

### yErrorHighField
The data item field which contains the series.errorBars yAxis high value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->yErrorHighField('value');
    ?>

### yErrorLowField
The data item field which contains the series.errorBars yAxis low value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->yErrorLowField('value');
    ?>

### yField
The data item field containing the Y value.

#### Returns
`\Kendo\Dataviz\UI\ChartSeriesItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $seriesItem = new \Kendo\Dataviz\UI\ChartSeriesItem();
    $seriesItem->yField('value');
    ?>

