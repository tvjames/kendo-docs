---
title: chart-yAxis
slug: jsp-chart-yAxis
tags: api, java
publish: true
---

# \<kendo:chart-yAxis\>
A JSP tag representing Kendo YAxis.

#### Example
    <kendo:chart>
        <kendo:chart-yAxis></kendo:chart-yAxis>
    </kendo:chart>


## Configuration Attributes


### type `String`

The axis type.

#### Example
    <kendo:chart type="type">
    </kendo:chart>



### baseUnit `String`

The base time interval for the axis labels.
The default baseUnit is determined automatically from the value range. Available options:

#### Example
    <kendo:chart baseUnit="baseUnit">
    </kendo:chart>



### majorUnit `float`

The interval between major divisions in base units.

#### Example
    <kendo:chart majorUnit="majorUnit">
    </kendo:chart>



### max `Object`

The end date of the axis.
This is often used in combination with the

#### Example
    <kendo:chart max="max">
    </kendo:chart>



### min `Object`

The maximum value of the axis.
This is often used in combination with the

#### Example
    <kendo:chart min="min">
    </kendo:chart>



### minorUnit `float`

The interval between minor divisions in base units.
It defaults to 1/5th of the majorUnit.

#### Example
    <kendo:chart minorUnit="minorUnit">
    </kendo:chart>



### axisCrossingValue `Object`

Value at which the Y axis crosses this axis. (Only for object)

#### Example
    <kendo:chart-yAxis axisCrossingValue="axisCrossingValue">
    </kendo:chart-yAxis>



## Child JSP Tags

### kendo:chart-yAxis-labels

Label settings specific to the date axis.

More documentation is available at [kendo:chart-yAxis-labels](/api/wrappers/jsp/chart/yaxis-labels).

#### Example

    <kendo:chart-yAxis>
        <kendo:chart-yAxis-labels></kendo:chart-yAxis-labels>
    </kendo:chart-yAxis>
 
