---
title: chart-valueAxis
slug: jsp-chart-valueAxis
tags: api, java
publish: true
---

# \<kendo:chart-valueAxis\>
A JSP tag representing Kendo ValueAxis.

#### Example
    <kendo:chart>
        <kendo:chart-valueAxis></kendo:chart-valueAxis>
    </kendo:chart>


## Configuration Attributes


### axisCrossingValue `float`

Value at which the category axis crosses this axis.

#### Example
    <kendo:chart axisCrossingValue="axisCrossingValue">
    </kendo:chart>



### axisCrossingValues `Object`

Value indicies at which the category axes cross the value axis.

#### Example
    <kendo:chart axisCrossingValues="axisCrossingValues">
    </kendo:chart>



### color `String`

Color to apply to all axis elements.
Individual color settings for line and labels take priority. Any valid CSS color string will work here, including hex and rgb.

#### Example
    <kendo:chart color="color">
    </kendo:chart>



### majorUnit `float`

The interval between major divisions.

#### Example
    <kendo:chart majorUnit="majorUnit">
    </kendo:chart>



### max `float`

The maximum value of the axis.
This is often used in combination with the

#### Example
    <kendo:chart max="max">
    </kendo:chart>



### min `float`

The minimum value of the axis.
This is often used in combination with the

#### Example
    <kendo:chart min="min">
    </kendo:chart>



### minorUnit `float`

The interval between minor divisions.
It defaults to 1/5th of the majorUnit.

#### Example
    <kendo:chart minorUnit="minorUnit">
    </kendo:chart>



### name `Object`

The unique axis name.

#### Example
    <kendo:chart name="name">
    </kendo:chart>



### plotBands `Object`

The plot bands of the value axis.
The plot band fields:

#### Example
    <kendo:chart plotBands="plotBands">
    </kendo:chart>



### reverse `boolean`

Reverses the axis direction -
values increase from right to left and from top to bottom.

#### Example
    <kendo:chart reverse="reverse">
    </kendo:chart>



### visible `boolean`

The visibility of the axis.

#### Example
    <kendo:chart visible="visible">
    </kendo:chart>



## Child JSP Tags

### kendo:chart-valueAxis-labels

Configures the axis labels.

More documentation is available at [kendo:chart-valueAxis-labels](/api/wrappers/jsp/chart/valueaxis-labels).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-labels></kendo:chart-valueAxis-labels>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-line

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

More documentation is available at [kendo:chart-valueAxis-line](/api/wrappers/jsp/chart/valueaxis-line).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-line></kendo:chart-valueAxis-line>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-majorGridLines

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

More documentation is available at [kendo:chart-valueAxis-majorGridLines](/api/wrappers/jsp/chart/valueaxis-majorgridlines).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-majorGridLines></kendo:chart-valueAxis-majorGridLines>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-majorTicks

The major ticks of the axis.

More documentation is available at [kendo:chart-valueAxis-majorTicks](/api/wrappers/jsp/chart/valueaxis-majorticks).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-majorTicks></kendo:chart-valueAxis-majorTicks>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-minorGridLines

Configures the minor grid lines.  These are the lines that are an extension of the minor ticks through the

More documentation is available at [kendo:chart-valueAxis-minorGridLines](/api/wrappers/jsp/chart/valueaxis-minorgridlines).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-minorGridLines></kendo:chart-valueAxis-minorGridLines>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-minorTicks

The minor ticks of the axis.

More documentation is available at [kendo:chart-valueAxis-minorTicks](/api/wrappers/jsp/chart/valueaxis-minorticks).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-minorTicks></kendo:chart-valueAxis-minorTicks>
    </kendo:chart-valueAxis>
 
### kendo:chart-valueAxis-title

The title of the value axis.

More documentation is available at [kendo:chart-valueAxis-title](/api/wrappers/jsp/chart/valueaxis-title).

#### Example

    <kendo:chart-valueAxis>
        <kendo:chart-valueAxis-title></kendo:chart-valueAxis-title>
    </kendo:chart-valueAxis>
 
