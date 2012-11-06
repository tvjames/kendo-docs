---
title: chart-xAxis
slug: jsp-chart-xAxis
tags: api, java
publish: true
---

# \<kendo:chart-xAxis\>
A JSP tag representing Kendo XAxis.

#### Example
    <kendo:chart>
        <kendo:chart-xAxis></kendo:chart-xAxis>
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
    <kendo:chart-xAxis axisCrossingValue="axisCrossingValue">
    </kendo:chart-xAxis>



## Child JSP Tags

### kendo:chart-xAxis-labels

Label settings specific to the date axis.

More documentation is available at [kendo:chart-xAxis-labels](/api/wrappers/jsp/chart/xaxis-labels).

#### Example

    <kendo:chart-xAxis>
        <kendo:chart-xAxis-labels></kendo:chart-xAxis-labels>
    </kendo:chart-xAxis>
 
