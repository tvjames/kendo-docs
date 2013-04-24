---
title: chart-seriesItem
slug: jsp-chart-seriesItem
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem\>

The configuration of the chart series.The series type is determined by the value of the type field.
If a type value is missing, the type is assumed to be the one specified in seriesDefaults.

#### Example
    <kendo:chart-series>
        <kendo:chart-seriesItem></kendo:chart-seriesItem>
    </kendo:chart-series>

## Configuration Attributes

### aggregate `String`

The aggregate function to apply for date series.This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.The supported values are:

#### Example
    <kendo:chart-seriesItem aggregate="aggregate">
    </kendo:chart-seriesItem>

### axis `String`

The name of the value axis to use.

#### Example
    <kendo:chart-seriesItem axis="axis">
    </kendo:chart-seriesItem>

### categoryField `String`

The data item field which contains category name.

#### Example
    <kendo:chart-seriesItem categoryField="categoryField">
    </kendo:chart-seriesItem>

### closeField `String`

The data field containing the close value.

#### Example
    <kendo:chart-seriesItem closeField="closeField">
    </kendo:chart-seriesItem>

### color `String`

The series base color. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem color="color">
    </kendo:chart-seriesItem>

### colorField `String`

The data item field which contains the series color.

#### Example
    <kendo:chart-seriesItem colorField="colorField">
    </kendo:chart-seriesItem>

### currentField `String`

The data item field containing the current value.

#### Example
    <kendo:chart-seriesItem currentField="currentField">
    </kendo:chart-seriesItem>

### dashType `String`

The dash type of line chart.The following dash types are supported:

#### Example
    <kendo:chart-seriesItem dashType="dashType">
    </kendo:chart-seriesItem>

### data `Object`

The array of data items which represent the series data.Can be set to :

#### Example
    <kendo:chart-seriesItem data="data">
    </kendo:chart-seriesItem>

### downColor `String`

The series color when the open value is greater than the close value.

#### Example
    <kendo:chart-seriesItem downColor="downColor">
    </kendo:chart-seriesItem>

### downColorField `String`

The data field containing the color applied when the open value is greater than the close value.

#### Example
    <kendo:chart-seriesItem downColorField="downColorField">
    </kendo:chart-seriesItem>

### explodeField `String`

The data item field which contains a boolean value indicating whether the sector is exploded.

#### Example
    <kendo:chart-seriesItem explodeField="explodeField">
    </kendo:chart-seriesItem>

### field `String`

The data item field which contains the series value.

#### Example
    <kendo:chart-seriesItem field="field">
    </kendo:chart-seriesItem>

### gap `float`

The distance between the category clusters.

#### Example
    <kendo:chart-seriesItem gap="gap">
    </kendo:chart-seriesItem>

### groupNameTemplate `String`

The template which sets the name of the series when bound to grouped data source.The fields which can be used in the template are:

#### Example
    <kendo:chart-seriesItem groupNameTemplate="groupNameTemplate">
    </kendo:chart-seriesItem>

### highField `String`

The data field containing the high value.

#### Example
    <kendo:chart-seriesItem highField="highField">
    </kendo:chart-seriesItem>

### holeSize `float`

The diameter of the donut hole in pixels.

#### Example
    <kendo:chart-seriesItem holeSize="holeSize">
    </kendo:chart-seriesItem>

### line `String`

The chart line configuration options. Further configuration is available via [kendo:chart-seriesItem-line](#kendo-chart-seriesItem-line). 

#### Example
    <kendo:chart-seriesItem line="line">
    </kendo:chart-seriesItem>

### lowField `String`

The data field containing the low value.

#### Example
    <kendo:chart-seriesItem lowField="lowField">
    </kendo:chart-seriesItem>

### margin `float`

The margin around each donut series (ring). A numeric value will set all margins. Further configuration is available via [kendo:chart-seriesItem-margin](#kendo-chart-seriesItem-margin). 

#### Example
    <kendo:chart-seriesItem margin="margin">
    </kendo:chart-seriesItem>

### maxSize `float`

The maximum size of the chart bubble series marker.

#### Example
    <kendo:chart-seriesItem maxSize="maxSize">
    </kendo:chart-seriesItem>

### minSize `float`

The minimum size of the chart bubble series marker.

#### Example
    <kendo:chart-seriesItem minSize="minSize">
    </kendo:chart-seriesItem>

### missingValues `String`

The behavior for handling missing values.The supported values are:

#### Example
    <kendo:chart-seriesItem missingValues="missingValues">
    </kendo:chart-seriesItem>

### name `String`

The name of the chart series which is visible in the legend.

#### Example
    <kendo:chart-seriesItem name="name">
    </kendo:chart-seriesItem>

### negativeColor `String`

The color to use for bar or column series with negative values. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem negativeColor="negativeColor">
    </kendo:chart-seriesItem>

### opacity `float`

The series opacity. By default the series are opaque.

#### Example
    <kendo:chart-seriesItem opacity="opacity">
    </kendo:chart-seriesItem>

### openField `String`

The data field containing the open value.

#### Example
    <kendo:chart-seriesItem openField="openField">
    </kendo:chart-seriesItem>

### padding `float`

The padding around the chart (equal on all sides).

#### Example
    <kendo:chart-seriesItem padding="padding">
    </kendo:chart-seriesItem>

### size `float`

The or radius of the chart donut series in pixels. If not set, the available space is split evenly between the series.

#### Example
    <kendo:chart-seriesItem size="size">
    </kendo:chart-seriesItem>

### sizeField `String`

The data field containing the bubble size value.

#### Example
    <kendo:chart-seriesItem sizeField="sizeField">
    </kendo:chart-seriesItem>

### spacing `float`

The space between the chart series as proportion of the series width.

#### Example
    <kendo:chart-seriesItem spacing="spacing">
    </kendo:chart-seriesItem>

### stack `Object`

A value indicating if the series should be stacked. String value indicates that the series should be stacked in a group with the specified name.

#### Example
    <kendo:chart-seriesItem stack="stack">
    </kendo:chart-seriesItem>

### startAngle `float`

The start angle of the first donut or pie segment.

#### Example
    <kendo:chart-seriesItem startAngle="startAngle">
    </kendo:chart-seriesItem>

### targetField `String`

The data item field containing the target value.

#### Example
    <kendo:chart-seriesItem targetField="targetField">
    </kendo:chart-seriesItem>

### type `String`

The type of the series.The supported values are:

#### Example
    <kendo:chart-seriesItem type="type">
    </kendo:chart-seriesItem>

### visibleInLegend `boolean`

A value indicating whether to show the point category name (for bubble, donut and pie series)
or series name (for other available series types) in the legend.

#### Example
    <kendo:chart-seriesItem visibleInLegend="visibleInLegend">
    </kendo:chart-seriesItem>

### visibleInLegendField `String`

The data item field which indicates whether to show the point category name in the legend.

#### Example
    <kendo:chart-seriesItem visibleInLegendField="visibleInLegendField">
    </kendo:chart-seriesItem>

### width `float`

The line width.

#### Example
    <kendo:chart-seriesItem width="width">
    </kendo:chart-seriesItem>

### xAxis `String`

The name of the X axis to use.

#### Example
    <kendo:chart-seriesItem xAxis="xAxis">
    </kendo:chart-seriesItem>

### xField `String`

The data item field containing the X value.

#### Example
    <kendo:chart-seriesItem xField="xField">
    </kendo:chart-seriesItem>

### yAxis `String`

The name of the Y axis to use.** Available for bubble, scatter and scatterLine series. **

#### Example
    <kendo:chart-seriesItem yAxis="yAxis">
    </kendo:chart-seriesItem>

### yField `String`

The data item field containing the Y value.

#### Example
    <kendo:chart-seriesItem yField="yField">
    </kendo:chart-seriesItem>


##  Configuration JSP Tags

### kendo:chart-seriesItem-border

The border of the chart series.

More documentation is available at [kendo:chart-seriesItem-border](chart/seriesitem-border).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-border></kendo:chart-seriesItem-border>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-connectors

The label connectors options.

More documentation is available at [kendo:chart-seriesItem-connectors](chart/seriesitem-connectors).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-connectors></kendo:chart-seriesItem-connectors>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-highlight

The chart series highlighting configuration options.

More documentation is available at [kendo:chart-seriesItem-highlight](chart/seriesitem-highlight).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-highlight></kendo:chart-seriesItem-highlight>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-labels

The chart series label configuration.

More documentation is available at [kendo:chart-seriesItem-labels](chart/seriesitem-labels).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-labels></kendo:chart-seriesItem-labels>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-line

The chart line configuration options.

More documentation is available at [kendo:chart-seriesItem-line](chart/seriesitem-line).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-line></kendo:chart-seriesItem-line>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-margin

The margin around each donut series (ring). A numeric value will set all margins.

More documentation is available at [kendo:chart-seriesItem-margin](chart/seriesitem-margin).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-margin></kendo:chart-seriesItem-margin>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-markers

The chart series marker configuration.

More documentation is available at [kendo:chart-seriesItem-markers](chart/seriesitem-markers).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-markers></kendo:chart-seriesItem-markers>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-negativeValues

The options for displaying the chart negative bubble values.

More documentation is available at [kendo:chart-seriesItem-negativeValues](chart/seriesitem-negativevalues).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-negativeValues></kendo:chart-seriesItem-negativeValues>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-overlay

The chart series overlay options.

More documentation is available at [kendo:chart-seriesItem-overlay](chart/seriesitem-overlay).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-overlay></kendo:chart-seriesItem-overlay>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-target

The configuration options of the target

More documentation is available at [kendo:chart-seriesItem-target](chart/seriesitem-target).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-target></kendo:chart-seriesItem-target>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-tooltip

The chart series tooltip configuration options.

More documentation is available at [kendo:chart-seriesItem-tooltip](chart/seriesitem-tooltip).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-tooltip></kendo:chart-seriesItem-tooltip>
    </kendo:chart-seriesItem>

