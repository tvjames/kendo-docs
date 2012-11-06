---
title: linearGauge-scale
slug: jsp-linearGauge-scale
tags: api, java
publish: true
---

# \<kendo:linearGauge-scale\>
A JSP tag representing Kendo Scale.

#### Example
    <kendo:linearGauge>
        <kendo:linearGauge-scale></kendo:linearGauge-scale>
    </kendo:linearGauge>


## Configuration Attributes


### majorUnit `float`

The interval between major divisions.

#### Example
    <kendo:linearGauge majorUnit="majorUnit">
    </kendo:linearGauge>



### max `float`

The maximum value of the scale.

#### Example
    <kendo:linearGauge max="max">
    </kendo:linearGauge>



### min `float`

The minimum value of the scale.

#### Example
    <kendo:linearGauge min="min">
    </kendo:linearGauge>



### minorUnit `float`

The interval between minor divisions.

#### Example
    <kendo:linearGauge minorUnit="minorUnit">
    </kendo:linearGauge>



### mirror `boolean`

Mirrors the scale labels and ticks.
If the labels are normally on the left side of the scale, mirroring the scale will render them to the right.

#### Example
    <kendo:linearGauge mirror="mirror">
    </kendo:linearGauge>



### ranges `Object`

The ranges of the scale.
The range fields:

#### Example
    <kendo:linearGauge ranges="ranges">
    </kendo:linearGauge>



### reverse `boolean`

Reverses the axis direction - values increase from right to left and from top to bottom.

#### Example
    <kendo:linearGauge reverse="reverse">
    </kendo:linearGauge>



### vertical `boolean`

The position of the gauge.

#### Example
    <kendo:linearGauge vertical="vertical">
    </kendo:linearGauge>



## Child JSP Tags

### kendo:linearGauge-scale-labels

Configures the scale labels.

More documentation is available at [kendo:linearGauge-scale-labels](/api/wrappers/jsp/lineargauge/scale-labels).

#### Example

    <kendo:linearGauge-scale>
        <kendo:linearGauge-scale-labels></kendo:linearGauge-scale-labels>
    </kendo:linearGauge-scale>
 
### kendo:linearGauge-scale-majorTicks

Configures the scale major ticks.

More documentation is available at [kendo:linearGauge-scale-majorTicks](/api/wrappers/jsp/lineargauge/scale-majorticks).

#### Example

    <kendo:linearGauge-scale>
        <kendo:linearGauge-scale-majorTicks></kendo:linearGauge-scale-majorTicks>
    </kendo:linearGauge-scale>
 
### kendo:linearGauge-scale-minorTicks

Configures the scale minor ticks.

More documentation is available at [kendo:linearGauge-scale-minorTicks](/api/wrappers/jsp/lineargauge/scale-minorticks).

#### Example

    <kendo:linearGauge-scale>
        <kendo:linearGauge-scale-minorTicks></kendo:linearGauge-scale-minorTicks>
    </kendo:linearGauge-scale>
 
