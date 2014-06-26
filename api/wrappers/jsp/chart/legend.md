---
title: chart-legend
---

# \<kendo:chart-legend\>

The chart legend configuration options.

#### Example
    <kendo:chart>
        <kendo:chart-legend></kendo:chart-legend>
    </kendo:chart>

## Configuration Attributes

### background `java.lang.String`

The background color of the legend. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-legend background="background">
    </kendo:chart-legend>

### height `float`

The legend height when the legend.position is set to "custom" and the legend.orientation is set to "vertical".

#### Example
    <kendo:chart-legend height="height">
    </kendo:chart-legend>

### margin `float`

The margin of the chart legend. A numeric value will set all paddings. Further configuration is available via [kendo:chart-legend-margin](#kendo-chart-legend-margin). 

#### Example
    <kendo:chart-legend margin="margin">
    </kendo:chart-legend>

### offsetX `float`

The X offset of the chart legend. The offset is relative to the default position of the legend.
For instance, a value of 20 will move the legend 20 pixels to the right of its initial position.
A negative value will move the legend to the left of its current position.

#### Example
    <kendo:chart-legend offsetX="offsetX">
    </kendo:chart-legend>

### offsetY `float`

The Y offset of the chart legend.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels down from its initial position.
A negative value will move the legend upwards from its current position.

#### Example
    <kendo:chart-legend offsetY="offsetY">
    </kendo:chart-legend>

### orientation `java.lang.String`

The orientation of the legend items when the position legend.position is set to "custom".The supported values are:

#### Example
    <kendo:chart-legend orientation="orientation">
    </kendo:chart-legend>

### padding `float`

The padding of the chart legend. A numeric value will set all paddings. Further configuration is available via [kendo:chart-legend-padding](#kendo-chart-legend-padding). 

#### Example
    <kendo:chart-legend padding="padding">
    </kendo:chart-legend>

### position `java.lang.String`

The positions of the chart legend.The supported values are:

#### Example
    <kendo:chart-legend position="position">
    </kendo:chart-legend>

### visible `boolean`

If set to true the chart will display the legend. By default the chart legend is visible.

#### Example
    <kendo:chart-legend visible="visible">
    </kendo:chart-legend>

### width `float`

The legend width when the legend.position is set to "custom" and the legend.orientation is set to "horizontal".

#### Example
    <kendo:chart-legend width="width">
    </kendo:chart-legend>


##  Configuration JSP Tags

### kendo:chart-legend-border

The border of the legend.

More documentation is available at [kendo:chart-legend-border](/api/wrappers/jsp/chart/legend-border).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-border></kendo:chart-legend-border>
    </kendo:chart-legend>

### kendo:chart-legend-inactiveItems

The chart inactive legend items configuration.

More documentation is available at [kendo:chart-legend-inactiveItems](/api/wrappers/jsp/chart/legend-inactiveitems).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-inactiveItems></kendo:chart-legend-inactiveItems>
    </kendo:chart-legend>

### kendo:chart-legend-labels

The chart legend label configuration.

More documentation is available at [kendo:chart-legend-labels](/api/wrappers/jsp/chart/legend-labels).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-labels></kendo:chart-legend-labels>
    </kendo:chart-legend>

### kendo:chart-legend-margin

The margin of the chart legend. A numeric value will set all paddings.

More documentation is available at [kendo:chart-legend-margin](/api/wrappers/jsp/chart/legend-margin).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-margin></kendo:chart-legend-margin>
    </kendo:chart-legend>

### kendo:chart-legend-padding

The padding of the chart legend. A numeric value will set all paddings.

More documentation is available at [kendo:chart-legend-padding](/api/wrappers/jsp/chart/legend-padding).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-padding></kendo:chart-legend-padding>
    </kendo:chart-legend>

