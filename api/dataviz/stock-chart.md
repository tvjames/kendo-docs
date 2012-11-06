---
title: kendo.dataviz.ui.StockChart
slug: dataviz-kendo.dataviz.ui.stock-chart
tags: api,dataviz
publish: true
---

# kendo.dataviz.ui.StockChart

## Configuration

### dateField `String`*(default: "date")*

The field containing the point date.
It is used as a default `field` for all date axes, including the navigator pane.

The data item field value must be either:

####* Date instance

####* String parsable by `new Date([field value])`

####* String in ASP.NET JSON format, i.e. "\/Date(1320825600000-0800)\/"

### navigator `Object`

The data navigator configuration options.

### navigator.series `Array`

Array of series definitions.

Accepts the same options as the root `series` collection.

Omitting the array and specifying a single series is also acceptable.

#### Example
    <p>
    $("#stock-chart").kendoStockChart({
         navigator: {
            series: {
                type: "line",
                field: "volume"
            }
         },
         ...
    })
    </p>

### navigator.select `Object`

Specifies the initially selected range.

The full range of values is shown if no range is specified.

#### Example
    <p>
    $("#stock-chart").kendoStockChart({
         navigator: {
            series: {
                type: "line",
                field: "volume"
            },
            select: {
                from: "2012/01/01",
                to: "2012/03/01"
            }
         },
         ...
    })
    </p>

### navigator.select.from `Date`|`String`

The lower boundary of the selected range.

### navigator.select.to `Date`|`String`

The upper boundary of the selected range.
