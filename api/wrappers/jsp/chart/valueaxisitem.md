---
title: chart-valueAxisItem
slug: jsp-chart-valueAxisItem
tags: api, java
publish: true
---

# \<kendo:chart-valueAxisItem\>

The value axis configuration options.

#### Example
    <kendo:chart-valueAxis>
        <kendo:chart-valueAxisItem></kendo:chart-valueAxisItem>
    </kendo:chart-valueAxis>

## Configuration Attributes

### axisCrossingValue `java.lang.Object`

Value at which the category axis crosses this axis. (Only for object)Value indices at which the category axes cross the value axis. (Only for array)Date at which the category axis crosses this axis. (Only for date)

#### Example
    <kendo:chart-valueAxisItem axisCrossingValue="axisCrossingValue">
    </kendo:chart-valueAxisItem>

### background `java.lang.String`

The background color of the axis.

#### Example
    <kendo:chart-valueAxisItem background="background">
    </kendo:chart-valueAxisItem>

### color `java.lang.String`

The color of the value axis. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-valueAxisItem color="color">
    </kendo:chart-valueAxisItem>

### majorUnit `float`

The interval between major divisions.
If the valueAxis.type is set to "log", the majorUnit value will be used for the base of the logarithm.

#### Example
    <kendo:chart-valueAxisItem majorUnit="majorUnit">
    </kendo:chart-valueAxisItem>

### max `float`

The maximum value of the axis.

#### Example
    <kendo:chart-valueAxisItem max="max">
    </kendo:chart-valueAxisItem>

### min `float`

The minimum value of the axis.

#### Example
    <kendo:chart-valueAxisItem min="min">
    </kendo:chart-valueAxisItem>

### minorUnit `float`

The interval between minor divisions. It defaults to 1/5th of the valueAxis.majorUnit.
If the valueAxis.type is set to "log", the minorUnit value represents the number of divisions between two major units and defaults to the major unit minus one.

#### Example
    <kendo:chart-valueAxisItem minorUnit="minorUnit">
    </kendo:chart-valueAxisItem>

### name `java.lang.Object`

The unique axis name. Used to associate a series with a value axis using the series.axis option.

#### Example
    <kendo:chart-valueAxisItem name="name">
    </kendo:chart-valueAxisItem>

### narrowRange `boolean`

If set to true the chart will prevent the automatic axis range from snapping to 0.

#### Example
    <kendo:chart-valueAxisItem narrowRange="narrowRange">
    </kendo:chart-valueAxisItem>

### pane `java.lang.String`

The name of the pane that the value axis should be rendered in.
The axis will be rendered in the first (default) pane if not set.

#### Example
    <kendo:chart-valueAxisItem pane="pane">
    </kendo:chart-valueAxisItem>

### reverse `boolean`

If set to true the value axis direction will be reversed. By default categories are listed from left to right and from bottom to top.

#### Example
    <kendo:chart-valueAxisItem reverse="reverse">
    </kendo:chart-valueAxisItem>

### type `java.lang.String`

The axis type.The supported values are:

#### Example
    <kendo:chart-valueAxisItem type="type">
    </kendo:chart-valueAxisItem>

### visible `boolean`

If set to true the chart will display the value axis. By default the value axis is visible.

#### Example
    <kendo:chart-valueAxisItem visible="visible">
    </kendo:chart-valueAxisItem>


##  Configuration JSP Tags

### kendo:chart-valueAxisItem-crosshair

The crosshair configuration options.

More documentation is available at [kendo:chart-valueAxisItem-crosshair](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-crosshair).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-crosshair></kendo:chart-valueAxisItem-crosshair>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-labels

The axis labels configuration.

More documentation is available at [kendo:chart-valueAxisItem-labels](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-labels).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-labels></kendo:chart-valueAxisItem-labels>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-line

The configuration of the axis lines. Also affects the major and minor ticks, but not the grid lines.

More documentation is available at [kendo:chart-valueAxisItem-line](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-line).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-line></kendo:chart-valueAxisItem-line>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-majorGridLines

The configuration of the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

More documentation is available at [kendo:chart-valueAxisItem-majorGridLines](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-majorgridlines).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-majorGridLines></kendo:chart-valueAxisItem-majorGridLines>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-majorTicks

The configuration of the value axis major ticks.

More documentation is available at [kendo:chart-valueAxisItem-majorTicks](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-majorticks).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-majorTicks></kendo:chart-valueAxisItem-majorTicks>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-minorGridLines

The configuration of the minor grid lines. These are the lines that are an extension of the minor ticks through the
body of the chart.

More documentation is available at [kendo:chart-valueAxisItem-minorGridLines](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-minorgridlines).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-minorGridLines></kendo:chart-valueAxisItem-minorGridLines>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-minorTicks

The configuration of the value axis minor ticks.

More documentation is available at [kendo:chart-valueAxisItem-minorTicks](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-minorticks).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-minorTicks></kendo:chart-valueAxisItem-minorTicks>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-notes

The value axis notes configuration.

More documentation is available at [kendo:chart-valueAxisItem-notes](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-notes).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-notes></kendo:chart-valueAxisItem-notes>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-plotBands

The plot bands of the value axis.

More documentation is available at [kendo:chart-valueAxisItem-plotBands](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-plotbands).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-plotBands></kendo:chart-valueAxisItem-plotBands>
    </kendo:chart-valueAxisItem>

### kendo:chart-valueAxisItem-title

The title configuration of the value axis.

More documentation is available at [kendo:chart-valueAxisItem-title](/kendo-ui/api/wrappers/jsp/chart/valueaxisitem-title).

#### Example

    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-title></kendo:chart-valueAxisItem-title>
    </kendo:chart-valueAxisItem>

