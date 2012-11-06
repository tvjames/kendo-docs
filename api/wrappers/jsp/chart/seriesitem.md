---
title: chart-seriesItem
slug: jsp-chart-seriesItem
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem\>
A JSP tag representing Kendo SeriesItem.

#### Example
    <kendo:chart-series>
        <kendo:chart-seriesItem></kendo:chart-seriesItem>
    </kendo:chart-series>


## Configuration Attributes


### data `Object`

Array of data points.

#### Example
    <kendo:chart data="data">
    </kendo:chart>



### field `String`

The data field containing the series value.

#### Example
    <kendo:chart field="field">
    </kendo:chart>



### groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.
Template variables:

#### Example
    <kendo:chart groupNameTemplate="groupNameTemplate">
    </kendo:chart>



### name `String`

The series name visible in the legend.

#### Example
    <kendo:chart name="name">
    </kendo:chart>



###  `Object`

Available options for area series:

#### Example
    <kendo:chart ="">
    </kendo:chart>



### aggregate `String`

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.

#### Example
    <kendo:chart aggregate="aggregate">
    </kendo:chart>



### color `String`

The series base color.

#### Example
    <kendo:chart color="color">
    </kendo:chart>



### line `String`

The line of the area chart.

#### Example
    <kendo:chart line="line">
    </kendo:chart>



### missingValues `String`

Configures the behavior for handling missing values in area series.

#### Example
    <kendo:chart missingValues="missingValues">
    </kendo:chart>



### opacity `float`

The series opacity.

#### Example
    <kendo:chart opacity="opacity">
    </kendo:chart>



### axis `String`

The name of the value axis to use.

#### Example
    <kendo:chart axis="axis">
    </kendo:chart>



### colorField `String`

The data field containing the bar color.

#### Example
    <kendo:chart colorField="colorField">
    </kendo:chart>



### gap `float`

The distance between category clusters.

#### Example
    <kendo:chart gap="gap">
    </kendo:chart>



### spacing `float`

Space between bars.

#### Example
    <kendo:chart spacing="spacing">
    </kendo:chart>



### categoryField `String`

The data field containing the bubble category name.

#### Example
    <kendo:chart categoryField="categoryField">
    </kendo:chart>



### maxSize `float`

The max size of the bubble.

#### Example
    <kendo:chart maxSize="maxSize">
    </kendo:chart>



### minSize `float`

The min size of the bubble.

#### Example
    <kendo:chart minSize="minSize">
    </kendo:chart>



### sizeField `String`

The data field containing the bubble size value.

#### Example
    <kendo:chart sizeField="sizeField">
    </kendo:chart>



### xAxis `String`

The name of the X axis to use. Further configuration is available via [kendo:chart-xAxis](#kendo-chart-xAxis). 

#### Example
    <kendo:chart xAxis="xAxis">
    </kendo:chart>



### xField `String`

The data field containing the bubble x value.

#### Example
    <kendo:chart xField="xField">
    </kendo:chart>



### yAxis `String`

The name of the Y axis to use. Further configuration is available via [kendo:chart-yAxis](#kendo-chart-yAxis). 

#### Example
    <kendo:chart yAxis="yAxis">
    </kendo:chart>



### yField `String`

The data field containing the bubble y value.

#### Example
    <kendo:chart yField="yField">
    </kendo:chart>



### explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded
(available only for the last level of the series).

#### Example
    <kendo:chart explodeField="explodeField">
    </kendo:chart>



### holeSize `float`

The the size of the donut hole.

#### Example
    <kendo:chart holeSize="holeSize">
    </kendo:chart>



### margin `float`

The margin around each series
(not available for the last level of the series).

#### Example
    <kendo:chart margin="margin">
    </kendo:chart>



### padding `float`

The padding around the donut chart (equal on all sides).

#### Example
    <kendo:chart padding="padding">
    </kendo:chart>



### size `float`

The size of the series.

#### Example
    <kendo:chart size="size">
    </kendo:chart>



### startAngle `float`

The start angle of the first donut segment.

#### Example
    <kendo:chart startAngle="startAngle">
    </kendo:chart>



### dashType `String`

The dash type of the line.

#### Example
    <kendo:chart dashType="dashType">
    </kendo:chart>



### width `String`

The line width of the line chart.

#### Example
    <kendo:chart width="width">
    </kendo:chart>



### aggregates `Object`

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return values are displayed instead of the individual points.

#### Example
    <kendo:chart aggregates="aggregates">
    </kendo:chart>



### downColor `String`

The series color when open value is smoller then close value.

#### Example
    <kendo:chart downColor="downColor">
    </kendo:chart>



### downColorField `String`

The data field containing the body color.

#### Example
    <kendo:chart downColorField="downColorField">
    </kendo:chart>



### openField `String`

The data field containing the open value.

#### Example
    <kendo:chart openField="openField">
    </kendo:chart>



### highField `String`

The data field containing the high value.

#### Example
    <kendo:chart highField="highField">
    </kendo:chart>



### lowField `String`

The data field containing the low value.

#### Example
    <kendo:chart lowField="lowField">
    </kendo:chart>



### closeField `String`

The data field containing the close value.

#### Example
    <kendo:chart closeField="closeField">
    </kendo:chart>



### stack `Object`

A value indicating if the series should be stacked.

#### Example
    <kendo:chart-seriesItem stack="stack">
    </kendo:chart-seriesItem>



### visibleInLegendField `Object`

A boolean value indicating whether to show the sector in the legend.

#### Example
    <kendo:chart-seriesItem visibleInLegendField="visibleInLegendField">
    </kendo:chart-seriesItem>



## Child JSP Tags

### kendo:chart-seriesItem-labels

Configures the series data labels.

More documentation is available at [kendo:chart-seriesItem-labels](/api/wrappers/jsp/chart/seriesitem-labels).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-labels></kendo:chart-seriesItem-labels>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-border

The border of the labels.

More documentation is available at [kendo:chart-seriesItem-border](/api/wrappers/jsp/chart/seriesitem-border).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-border></kendo:chart-seriesItem-border>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-line

The line of the area chart.

More documentation is available at [kendo:chart-seriesItem-line](/api/wrappers/jsp/chart/seriesitem-line).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-line></kendo:chart-seriesItem-line>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-markers

Configures the area markers.

More documentation is available at [kendo:chart-seriesItem-markers](/api/wrappers/jsp/chart/seriesitem-markers).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-markers></kendo:chart-seriesItem-markers>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-tooltip

The data point tooltip configuration options.

More documentation is available at [kendo:chart-seriesItem-tooltip](/api/wrappers/jsp/chart/seriesitem-tooltip).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-tooltip></kendo:chart-seriesItem-tooltip>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-overlay

The effects overlay.

More documentation is available at [kendo:chart-seriesItem-overlay](/api/wrappers/jsp/chart/seriesitem-overlay).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-overlay></kendo:chart-seriesItem-overlay>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-negativeValues

The settings for negative values.

More documentation is available at [kendo:chart-seriesItem-negativeValues](/api/wrappers/jsp/chart/seriesitem-negativevalues).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-negativeValues></kendo:chart-seriesItem-negativeValues>
    </kendo:chart-seriesItem>
 
### kendo:chart-seriesItem-connectors

The label connectors options.

More documentation is available at [kendo:chart-seriesItem-connectors](/api/wrappers/jsp/chart/seriesitem-connectors).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-connectors></kendo:chart-seriesItem-connectors>
    </kendo:chart-seriesItem>
 
