---
title: radialGauge-scale
slug: jsp-radialGauge-scale
tags: api, java
publish: true
---

# \<kendo:radialGauge-scale\>
A JSP tag representing Kendo Scale.

#### Example
    <kendo:radialGauge>
        <kendo:radialGauge-scale></kendo:radialGauge-scale>
    </kendo:radialGauge>


## Configuration Attributes


### endAngle `float`

The end angle of the gauge.
The gauge is rendered clockwise(0 degrees are the 180 degrees in the polar coordinat system)

#### Example
    <kendo:radialGauge endAngle="endAngle">
    </kendo:radialGauge>



### majorUnit `float`

The interval between major divisions.

#### Example
    <kendo:radialGauge majorUnit="majorUnit">
    </kendo:radialGauge>



### max `float`

The maximum value of the scale.

#### Example
    <kendo:radialGauge max="max">
    </kendo:radialGauge>



### min `float`

The minimum value of the scale.

#### Example
    <kendo:radialGauge min="min">
    </kendo:radialGauge>



### minorUnit `float`

The interval between minor divisions.

#### Example
    <kendo:radialGauge minorUnit="minorUnit">
    </kendo:radialGauge>



### ranges `Object`

The ranges of the scale.
The range fields:

#### Example
    <kendo:radialGauge ranges="ranges">
    </kendo:radialGauge>



### reverse `boolean`

Reverses the scale direction - values are increase anticlockwise.

#### Example
    <kendo:radialGauge reverse="reverse">
    </kendo:radialGauge>



### startAngle `float`

The start angle of the gauge.
The gauge is rendered clockwise(0 degrees are the 180 degrees in the polar coordinat system)

#### Example
    <kendo:radialGauge startAngle="startAngle">
    </kendo:radialGauge>



## Child JSP Tags

### kendo:radialGauge-scale-labels

Configures the scale labels.

More documentation is available at [kendo:radialGauge-scale-labels](/api/wrappers/jsp/radialgauge/scale-labels).

#### Example

    <kendo:radialGauge-scale>
        <kendo:radialGauge-scale-labels></kendo:radialGauge-scale-labels>
    </kendo:radialGauge-scale>
 
### kendo:radialGauge-scale-majorTicks

Configures the scale major ticks.

More documentation is available at [kendo:radialGauge-scale-majorTicks](/api/wrappers/jsp/radialgauge/scale-majorticks).

#### Example

    <kendo:radialGauge-scale>
        <kendo:radialGauge-scale-majorTicks></kendo:radialGauge-scale-majorTicks>
    </kendo:radialGauge-scale>
 
### kendo:radialGauge-scale-minorTicks

Configures the scale minor ticks.

More documentation is available at [kendo:radialGauge-scale-minorTicks](/api/wrappers/jsp/radialgauge/scale-minorticks).

#### Example

    <kendo:radialGauge-scale>
        <kendo:radialGauge-scale-minorTicks></kendo:radialGauge-scale-minorTicks>
    </kendo:radialGauge-scale>
 
