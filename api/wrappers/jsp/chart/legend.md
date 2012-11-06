---
title: chart-legend
slug: jsp-chart-legend
tags: api, java
publish: true
---

# \<kendo:chart-legend\>
A JSP tag representing Kendo Legend.

#### Example
    <kendo:chart>
        <kendo:chart-legend></kendo:chart-legend>
    </kendo:chart>


## Configuration Attributes


### background `String`

The background color of the legend. Any valid CSS color string will work here, including hex and rgb.

#### Example
    <kendo:chart background="background">
    </kendo:chart>



### margin `float`

The margin of the legend.

#### Example
    <kendo:chart margin="margin">
    </kendo:chart>



### offsetX `float`

The X offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels to the right of it's initial position.  A negative value will move the legend
to the left of the current position.

#### Example
    <kendo:chart offsetX="offsetX">
    </kendo:chart>



### offsetY `float`

The Y offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels down from it's initial position.  A negative value will move the legend
upwards from the current position.

#### Example
    <kendo:chart offsetY="offsetY">
    </kendo:chart>



### padding `float`

The padding of the legend.

#### Example
    <kendo:chart padding="padding">
    </kendo:chart>



### position `String`

The positions of the legend.

#### Example
    <kendo:chart position="position">
    </kendo:chart>



### visible `boolean`

The visibility of the legend.

#### Example
    <kendo:chart visible="visible">
    </kendo:chart>



## Child JSP Tags

### kendo:chart-legend-border

The border of the legend.

More documentation is available at [kendo:chart-legend-border](/api/wrappers/jsp/chart/legend-border).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-border></kendo:chart-legend-border>
    </kendo:chart-legend>
 
### kendo:chart-legend-labels

Configures the legend labels.

More documentation is available at [kendo:chart-legend-labels](/api/wrappers/jsp/chart/legend-labels).

#### Example

    <kendo:chart-legend>
        <kendo:chart-legend-labels></kendo:chart-legend-labels>
    </kendo:chart-legend>
 
