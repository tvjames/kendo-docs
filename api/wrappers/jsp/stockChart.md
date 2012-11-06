---
title: stockChart
slug: jsp-stockChart
tags: api, java
publish: true
---

# \<kendo:stockChart\>
A JSP tag representing Kendo StockChart.


## Configuration Attributes


### dateField `String`

The field containing the point date.
It is used as a default

#### Example
    <kendo:stockChart dateField="dateField">
    </kendo:stockChart>



## Child JSP Tags

### kendo:stockChart-navigator

The data navigator configuration options.

More documentation is available at [kendo:stockChart-navigator](/api/wrappers/jsp/stockchart/navigator).

#### Example

    <kendo:stockChart>
        <kendo:stockChart-navigator></kendo:stockChart-navigator>
    </kendo:stockChart>
 
