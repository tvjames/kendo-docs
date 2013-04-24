---
title: chart-seriesItem-markers
slug: jsp-chart-seriesItem-markers
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-markers\>

The chart series marker configuration.

#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-markers></kendo:chart-seriesItem-markers>
    </kendo:chart-seriesItem>

## Configuration Attributes

### background `String`

The background color of the series markers.

#### Example
    <kendo:chart-seriesItem-markers background="background">
    </kendo:chart-seriesItem-markers>

### size `float`

The marker size in pixels.

#### Example
    <kendo:chart-seriesItem-markers size="size">
    </kendo:chart-seriesItem-markers>

### type `String`

The markers shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.

#### Example
    <kendo:chart-seriesItem-markers type="type">
    </kendo:chart-seriesItem-markers>

### visible `boolean`

If set to true the chart will display the series markers. By default chart series markers are not displayed.

#### Example
    <kendo:chart-seriesItem-markers visible="visible">
    </kendo:chart-seriesItem-markers>


##  Configuration JSP Tags

### kendo:chart-seriesItem-markers-border

The border of the markers.

More documentation is available at [kendo:chart-seriesItem-markers-border](chart/seriesitem-markers-border).

#### Example

    <kendo:chart-seriesItem-markers>
        <kendo:chart-seriesItem-markers-border></kendo:chart-seriesItem-markers-border>
    </kendo:chart-seriesItem-markers>

