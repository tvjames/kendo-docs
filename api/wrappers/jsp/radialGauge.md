---
title: radialGauge
slug: jsp-radialGauge
tags: api, java
publish: true
---

# \<kendo:radialGauge\>
A JSP tag representing Kendo RadialGauge.


## Configuration Attributes


### rangeSize `float`

The width of the range indicators.

#### Example
    <kendo:radialGauge rangeSize="rangeSize">
    </kendo:radialGauge>



### rangeDistance `float`

The distance from the range indicators to the ticks.

#### Example
    <kendo:radialGauge rangeDistance="rangeDistance">
    </kendo:radialGauge>



### transitions `boolean`

A value indicating if transition animations should be played.

#### Example
    <kendo:radialGauge transitions="transitions">
    </kendo:radialGauge>



## Child JSP Tags

### kendo:radialGauge-gaugeArea

The gauge area configuration options.
This is the entire visible area of the gauge.

More documentation is available at [kendo:radialGauge-gaugeArea](/api/wrappers/jsp/radialgauge/gaugearea).

#### Example

    <kendo:radialGauge>
        <kendo:radialGauge-gaugeArea></kendo:radialGauge-gaugeArea>
    </kendo:radialGauge>
 
### kendo:radialGauge-pointer

The pointer configuration options.

More documentation is available at [kendo:radialGauge-pointer](/api/wrappers/jsp/radialgauge/pointer).

#### Example

    <kendo:radialGauge>
        <kendo:radialGauge-pointer></kendo:radialGauge-pointer>
    </kendo:radialGauge>
 
### kendo:radialGauge-scale

Configures the scale.

More documentation is available at [kendo:radialGauge-scale](/api/wrappers/jsp/radialgauge/scale).

#### Example

    <kendo:radialGauge>
        <kendo:radialGauge-scale></kendo:radialGauge-scale>
    </kendo:radialGauge>
 
