---
title: kendo.dataviz.ui.Chart
meta_title: Configuration, methods and events of Kendo UI DataViz Chart
meta_description: Learn how to configure Kendo UI Javascript chart widget in a few easy steps, use and change methods and events.
slug: api-dataviz-chart
relatedDocs: gs-dataviz-chart-overview
tags: api,dataviz
publish: true
---

# kendo.dataviz.ui.Chart

## Configuration

### autoBind `Boolean` *(default: true)*

If set to `false` the widget will not bind to the data source during initialization. In this case data binding will occur when the [change](/api/framework/datasource#events-change) event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

> Setting `autoBind` to `false` is useful when multiple widgets are bound to the same data source. Disabling automatic binding ensures that the shared data source doesn't make more than one request to the remote service.

#### Example - disable automatic binding

    <div id="chart"></div>
    <script>
    var dataSource = new kendo.data.DataSource({
      transport: {
        read: {
          url: "http://demos.kendoui.com/service/stockdata",
          dataType: "jsonp"
        }
      }
    });
    $("#chart").kendoChart({
      autoBind: false,
      dataSource: dataSource,
      series: [
        { field: "Volume" }
      ]
    });
    dataSource.read(); // "read()" will fire the "change" event of the dataSource and the widget will be bound
    </script>

### axisDefaults `Object`

The default options for all chart axes. Accepts the options supported by [categoryAxis](#configuration-categoryAxis), [valueAxis](#configuration-valueAxis), [xAxis](#configuration-xAxis) and [yAxis](#configuration-yAxis).

#### Example - set the default axis options

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      axisDefaults: {
        categories: [ "2012", "2013"]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis `Array|Object`

The category axis configuration options.

#### Example - configure the category axis

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        categories: ["2012", "2013"],
        color: "#ff0000"
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.autoBaseUnitSteps `Object`

The discrete [categoryAxis.baseUnitStep](#configuration-categoryAxis.baseUnitStep) values when
either [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "fit" or
[categoryAxis.baseUnitStep](#configuration-categoryAxis.baseUnitStep) is set to "auto".

#### Example - set category axis auto base unit steps

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
        categoryAxis: {
            categories: [
                new Date("2012/02/01 00:00:00"),
                new Date("2012/02/02 00:00:00"),
                new Date("2012/02/20 00:00:00")
            ],
            baseUnitStep: "auto",
            autoBaseUnitSteps: {
                days: [3]
            }
        }
    });
    </script>

### categoryAxis.autoBaseUnitSteps.days `Array` *(default: [1, 2, 3])*

The days unit steps.

### categoryAxis.autoBaseUnitSteps.hours `Array` *(default: [1, 2, 3, 6, 12])*

The hours unit steps.

### categoryAxis.autoBaseUnitSteps.minutes `Array` *(default: [1, 2, 5, 15, 30])*

The minutes unit steps.

### categoryAxis.autoBaseUnitSteps.months `Array` *(default: [1, 2, 3, 6])*

The months unit steps.

### categoryAxis.autoBaseUnitSteps.weeks `Array` *(default: [1, 2])*

The weeks unit steps.

### categoryAxis.autoBaseUnitSteps.years `Array` *(default: [1, 2, 3, 5, 10, 25, 50])*

The years unit steps.

#### Example

### categoryAxis.axisCrossingValue `Object|Date|Array`

Category index at which the first value axis crosses this axis (when set as an object).

Category indices at which the value axes cross the category axis (when set as an array).

> set an index greater than or equal to the number of categories to denote the far end of the axis.

#### Example - set the category axis crossing values

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        axisCrossingValue: [0, 10]
      },
      valueAxis: [{}, {}],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.baseUnit `String`

The base time interval for the date axis. The default base unit is determined automatically from the minimum difference
between subsequent categories.

The supported values are:

* "days"
* "fit"
* "hours"
* "minutes"
* "months"
* "weeks"
* "years"

Setting `baseUnit` to "fit" will set such base unit and [categoryAxis.baseUnitStep](#configuration-categoryAxis.baseUnitStep)
that the total number of categories does not exceed [categoryAxis.maxDateGroups](#configuration-categoryAxis.maxDateGroups).

Series data is aggregated for the specified base unit using the [series.aggregate](#configuration-series.aggregate) function.

### categoryAxis.baseUnitStep `Object` *(default: 1)*

The step (interval) between categories in base units. Setting it to "auto" will set the step to such value
that the total number of categories does not exceed [categoryAxis.maxDateGroups](#configuration-categoryAxis.maxDateGroups).

This option is ignored if [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "fit".

### categoryAxis.categories `Array`

The category names. The chart will create a category for every item of the array.

#### Example - set the categories

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.color `String`

The color to apply to all axis elements. Accepts a valid CSS color string, including hex and rgb. Can be overridden by [categoryAxis.labels.color](#configuration-categoryAxis.labels.color) and
[categoryAxis.line.color](#configuration-categoryAxis.line.color).

#### Example - set the category axis color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        color: "#aa00bb"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        color: "rgb(128, 0, 255)"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        color: "green"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair `Object`

The crosshair configuration options.

> The crosshair is displayed when the [categoryAxis.crosshair.visible](#configuration-categoryAxis.crosshair.visible) option is set to `true`.

#### Example - set the category axis crosshair options

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          color: "green",
          width: 2,
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.color `String`

The color of the crosshair. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis crosshair color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          color: "green",
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.dashType `string` *(default: "solid")*

The dash type of the crosshair.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category crosshair line dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          dashType: "dashDot",
          visible: true
        }
      },
      series: [
        {
          type: "line",
          data: [1, 2, 3]
        }
      ]
    });
    </script>

### categoryAxis.crosshair.opacity `Number` *(default: 1)*

The opacity of the crosshair. By default the crosshair is opaque.

#### Example - set the category axis crosshair opacity

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          opacity: 0.1,
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.crosshair.tooltip `Object`

The crosshar tooltip options.

> The crosshair tooltip is displayed when the [categoryAxis.crosshair.tooltip.visible](#configuration-categoryAxis.crosshair.tooltip.visible) option is set to `true`.

#### Example - configure the category axis crosshair tooltip

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            background: "green",
            border: {
              color: "black",
              width: 2
            },
            visible: true
          },
          visible: true
        }
      },
      series: [
        {
          type: "line",
          data: [1, 2, 3]
        }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.background `String`

The background color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis crosshair tooltip background

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            background: "green",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.border `Object`

The border options.

#### Example - set the category axis crosshair tooltip border

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            border: {
              color: "black",
              width: 2
            },
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis crosshair tooltip border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            border: {
              color: "black",
              width: 2
            },
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis crosshair tooltip border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            border: {
              dashType: "dashDot",
              width: 2
            },
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the category axis crosshair tooltip border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            border: {
              width: 2
            },
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.color `String`

The text color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis crosshair tooltip color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            color: "#aa00bb",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis crosshair tooltip color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            color: "rgb(128, 0, 255)",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis crosshair tooltip color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            color: "green",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The tooltip font.

#### Example - set the category axis crosshair tooltip font

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            font: "20px sans-serif",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.format `String` *(default: "{0}")*

The format used to display the tooltip. Uses [kendo.format](/api/framework/kendo#methods-format). Contains one placeholder ("{0}") which represents the category value.

#### Example - set the category axis crosshair tooltip format

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            format: "Year: {0}",
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.crosshair.tooltip.padding `Number|Object` *(default: 0)*

The padding of the crosshair tooltip. A numeric value will set all paddings.

#### Example - set the category axis crosshair tooltip padding as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            padding: 20,
            visible: true
          },
          visible: true
        }
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.padding.bottom `Number` *(default: 0)*

The bottom padding of the crosshair tooltip.

#### Example - set the category axis crosshair tooltip bottom padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            padding: {
              bottom: 20
            },
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.padding.left `Number` *(default: 0)*

The left padding of the crosshair tooltip.

#### Example - set the category axis crosshair tooltip left padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            padding: {
              left: 20
            },
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.padding.right `Number` *(default: 0)*

The right padding of the crosshair tooltip.

#### Example - set the category axis crosshair tooltip right padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            padding: {
              right: 20
            },
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.padding.top `Number` *(default: 0)*

The top padding of the crosshair tooltip.

#### Example - set the category axis crosshair tooltip top padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            padding: {
              top: 20
            },
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.template `String|Function`

The [template](/api/framework/kendo#methods-template) which renders the tooltip.

The fields which can be used in the template are:

* value - the category value

#### Example - set the category axis crosshair tooltip template as a string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            template: "Year: #: value #",
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis crosshair tooltip template as a function

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        crosshair: {
          tooltip: {
            template: kendo.template("Year: #: value #"),
            visible: true
          },
          visible: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.tooltip.visible `Boolean` *(default: false)*

If set to `true` the chart will display the category axis crosshair tooltip. By default the category axis crosshair tooltip is not visible.

#### Example - show the category axis crosshair tooltip

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          tooltip: {
            visible: true
          },
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.visible `Boolean` *(default: false)*

If set to `true` the chart will display the category axis crosshair. By default the category axis crosshair is not visible.

#### Example - show the category axis crosshair

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.crosshair.width `Number` *(default: 1)*

The width of the crosshair in pixels.

#### Example - set the category axis crosshair width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        crosshair: {
          width: 2,
          visible: true
        }
      },
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.field `String`

The data item field which contains the category name. Requires the [dataSource](#configuration-dataSource) option to be set.

#### Example - set the category axis field

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        field: "year"
      },
      series: [
        { field: "value" }
      ],
      dataSource: [
        { year: "2012", value: 1 },
        { year: "2013", value: 2 }
      ]
    });
    </script>

### categoryAxis.justified `Boolean` *(default: false)*

If set to `true` the chart will position categories and series points on major ticks. This removes the empty space before and after the series.

> This option is ignored if the [series.type](#configuration-series.type) option is set to "bar", "column", "ohlc" or "candlestick".

#### Example - justify categories and series

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        justified: true,
        categories: ["2012", "2013"]
      }],
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels `Object`

The axis labels configuration.

#### Example - configure the category axis labels
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          background: "green",
          color: "white"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.background `String`

The background color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis label background as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          background: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis label background as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          background: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis label background by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          background: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.border `Object`

The border of the labels.

#### Example - set the category axis label border
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          border: {
            color: "green",
            dashType: "dashDot",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis label border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          border: {
            color: "green",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis label border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          border: {
            dashType: "dashDot",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the category axis label border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          border: {
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.color `String`

The text color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis label color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis label color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis label color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        labels: {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.culture `String`

The culture to use when formatting date values. See the [globalization overview](/getting-started/framework/globalization/overview) for more information.

### categoryAxis.labels.dateFormats `Object`

The format used to display the labels when the categories are dates. Uses [kendo.format](/api/framework/kendo#methods-format). Contains one placeholder ("{0}") which represents the category value.

> The chart will choose the appropriate format for the current [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit). Setting the [categoryAxis.labels.format](#configuration-categoryAxis.labels.format) option will override the date formats.

#### Example - set category axis date formats

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        labels: {
          dateFormats: {
            days:"M-d"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.dateFormats.days `String` *(default: "M/d")*

The format used when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "days".

#### Example - set the days format
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        baseUnit: "days",
        labels: {
          dateFormats: {
            days: "M-d"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.dateFormats.hours `String` *(default: "HH:mm")*

The format used when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "hours".

#### Example - set the hours format
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        baseUnit: "hours",
        labels: {
          dateFormats: {
            hours: "HH mm"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.dateFormats.months `String` *(default: "MMM 'yy")*

The format used when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "months".

#### Example - set the months format
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        baseUnit: "months",
        labels: {
          dateFormats: {
            months: "MMM-yy"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.dateFormats.weeks `String` *(default: "M/d")*

The format used when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "weeks".

#### Example - set the weeks format
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        baseUnit: "weeks",
        labels: {
          dateFormats: {
            weeks: "M-d"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.dateFormats.years `String` *(default: "yyyy")*

The format used when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "years".

#### Example - set the years format
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
            new Date("2012/01/01"),
            new Date("2012/01/02")
        ],
        type: "date",
        baseUnit: "years",
        labels: {
          dateFormats: {
            years: "yy"
          }
        }
      },
      series: [{
        data: [1,2,3]
      }]
    });
    </script>

### categoryAxis.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

#### Example - set the category axis label font

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
           font: "20px sans-serif",
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.format `String` *(default: "{0}")*

The format used to display the labels. Uses [kendo.format](/api/framework/kendo#methods-format). Contains one placeholder ("{0}") which represents the category value.

#### Example - set the category axis label format

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          format: "Year: {0}"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.margin `Number|Object` *(default: 0)*

The margin of the labels. A numeric value will set all margins.

#### Example - set the category axis label margin as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          margin: 20
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.margin.bottom `Number` *(default: 0)*

The bottom margin of the labels.

#### Example - set the category axis label bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          margin: {
            bottom: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.margin.left `Number` *(default: 0)*

The left margin of the labels.

#### Example - set the category axis label left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          margin: {
            left: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.margin.right `Number` *(default: 0)*

The right margin of the labels.

#### Example - set the category axis label right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          margin: {
            right: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.margin.top `Number` *(default: 0)*

The top margin of the labels.

#### Example - set the category axis label top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          margin: {
            top: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.mirror `Boolean` *(default: false)*

If set to `true` the chart will mirror the axis labels and ticks. If the labels are normally on the left side of the axis, mirroring the axis will render them to the right.

#### Example - mirror the category axis labels

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          mirror: true
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.padding `Number|Object` *(default: 0)*

The padding of the labels. A numeric value will set all paddings.

#### Example - set the category axis label padding as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          padding: 20
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.padding.bottom `Number` *(default: 0)*

The bottom padding of the labels.

#### Example - set the category axis label bottom padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          padding: {
            bottom: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.padding.left `Number` *(default: 0)*

The left padding of the labels.

#### Example - set the category axis label left padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          padding: {
            left: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.padding.right `Number` *(default: 0)*

The right padding of the labels.

#### Example - set the category axis label right padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          padding: {
            right: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.padding.top `Number` *(default: 0)*

The top padding of the labels.

#### Example - set the category axis label top padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          padding: {
            top: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.rotation `Number` *(default: 0)*

The rotation angle of the labels. By default the labels are not rotated.

#### Example - rotate the category axis labels

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          rotation: 90
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.skip `Number` *(default: 0)*

The number of labels to skip. By default no labels are skipped.

#### Example - skip category axis labels

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          skip: 1
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.step `Number` *(default: 1)*

The label rendering step - render every n-th label. By default every label is rendered.

#### Example - render every odd category axis label
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          step: 2
        },
        categories: ["2011", "2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.template `String|Function`

The [template](/api/framework/kendo#methods-template) which renders the labels.

The fields which can be used in the template are:

* value - the category value

#### Example - set the category axis template as a string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          template: "Year: #: value #"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis template as a function

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          template: kendo.template("Year: #: value #")
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.labels.visible `Boolean` *(default: true)*

If set to `true` the chart will display the category axis labels. By default the category axis labels are visible.

#### Example - hide the category axis labels

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        labels: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.line `Object`

The configuration of the axis lines. Also affects the major and minor ticks, but not the grid lines.

#### Example - configure the category axis line

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        line: {
          color: "#aa00bb",
          width: 3
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.line.color `String` *(default: "black")*

The color of the lines. Accepts a valid CSS color string, including hex and rgb.

> Setting the `color` option affects the major and minor ticks, but not the grid lines.

#### Example - set the category axis line color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        line: {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis line color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        line: {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis line color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        line: {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.line.dashType `String` *(default: "solid")*

The dash type of the line.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis line dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        line: {
          dashType: "dashDot"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.line.visible `Boolean` *(default: true)*

If set to `true` the chart will display the category axis lines. By default the category axis lines are visible.

#### Example - hide the category axis lines

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        line: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.line.width `Number` *(default: 1)*

The width of the line in pixels. Also affects the major and minor ticks, but not the grid lines.

#### Example - set the category axis line width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        line: {
          width: 3
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.majorGridLines `Object`

The configuration of the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

#### Example - configure the category axis major grid lines

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorGridLines: {
          width: 3,
          color: "green"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorGridLines.color `String` *(default: "black")*

The color of the major grid lines. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis major grid line color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorGridLines: {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis major grid line color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorGridLines: {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis major grid line color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorGridLines: {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorGridLines.dashType `String` *(default: "solid")*

The dash type of the major grid lines.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis major grid line dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorGridLines: {
          dashType: "dashDot"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorGridLines.visible `Boolean` *(default: false)*

If set to `true` the chart will display the major grid lines. By default the major grid lines are visible.

#### Example - hide the category axis major grid lines

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorGridLines: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.majorGridLines.width `Number` *(default: 1)*

The width of the category axis major grid lines in pixels.

#### Example - set the category axis major grid lines width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorGridLines: {
          width: 3
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorTicks `Object`

The configuration of the category axis major ticks.

#### Example - configure the category axis major ticks

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorTicks: {
          size: 6,
          color: "green",
          width: 5
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorTicks.color `String` *(default: "black")*

The color of the category axis major ticks lines. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis major ticks color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorTicks {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis major ticks color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorTicks {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis major ticks color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        majorTicks {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorTicks.size `Number` *(default: 4)*

The length of the tick line in pixels.

#### Example - set the category axis major ticks size

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorTicks: {
          size: 6
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorTicks.visible `Boolean` *(default: true)*

If set to `true` the chart will display the category axis major ticks. By default the category axis major ticks are visible.

#### Example - hide the category axis major ticks

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorTicks: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.majorTicks.width `Number` *(default: 1)*

The width of the major ticks in pixels.

#### Example - set the category axis major ticks width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        majorTicks: {
          width: 3
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.max `Object`

The last date displayed on the category date axis. By default, the minimum date is the same as the last category.
This is often used in combination with the [categoryAxis.min](#configuration-categoryAxis.min) and [categoryAxis.roundToBaseUnit](#configuration-categoryAxis.roundToBaseUnit) options to
set up a fixed date range.

### categoryAxis.maxDateGroups `Number` *(default: 10)*

The maximum number of groups (categories) to display when
[categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "fit" or
[categoryAxis.baseUnitStep](#configuration-categoryAxis.baseUnitStep) is set to "auto".
### categoryAxis.min `Object`

The first date displayed on the category date axis. By default, the minimum date is the same as the first category.
This is often used in combination with the [categoryAxis.min](#configuration-categoryAxis.min) and [categoryAxis.roundToBaseUnit](#configuration-categoryAxis.roundToBaseUnit) options to
set up a fixed date range.

### categoryAxis.minorGridLines `Object`

The configuration of the minor grid lines. These are the lines that are an extension of the minor ticks through the
body of the chart.

#### Example - configure the category axis minor grid lines

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorGridLines: {
          width: 3,
          color: "green"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorGridLines.color `String` *(default: "black")*

The color of the minor grid lines. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis minor grid line color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorGridLines: {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis minor grid line color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorGridLines: {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis minor grid line color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorGridLines: {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorGridLines.dashType `String` *(default: "solid")*

The dash type of the minor grid lines.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis minor grid line dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorGridLines: {
          dashType: "dashDot"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorGridLines.visible `Boolean` *(default: false)*

If set to `true` the chart will display the minor grid lines. By default the minor grid lines are visible.

#### Example - hide the category axis minor grid lines

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorGridLines: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.minorGridLines.width `Number` *(default: 1)*

The width of the category axis minor grid lines in pixels.

#### Example - set the category axis minor grid lines width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorGridLines: {
          width: 3
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorTicks `Object`

The configuration of the category axis minor ticks.

#### Example - configure the category axis minor ticks

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorTicks: {
          size: 6,
          color: "green",
          width: 5
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorTicks.color `String` *(default: "black")*

The color of the category axis minor ticks lines. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis minor ticks color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorTicks {
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis minor ticks color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorTicks {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis minor ticks color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        minorTicks {
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorTicks.size `Number` *(default: 4)*

The length of the tick line in pixels.

#### Example - set the category axis minor ticks size

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorTicks: {
          size: 6
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorTicks.visible `Boolean` *(default: true)*

If set to `true` the chart will display the category axis minor ticks. By default the category axis minor ticks are visible.

#### Example - hide the category axis minor ticks

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorTicks: {
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.minorTicks.width `Number` *(default: 1)*

The width of the minor ticks in pixels.

#### Example - set the category axis minor ticks width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        minorTicks: {
          width: 3
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.name `String` *(default: "primary")*

The unique axis name. Used to associate a series with a category axis using the [series.categoryAxis](#configuration-series.categoryAxis) option.

#### Example - set the category axis name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [
        { name: "month", categories: [ "Jan", "Feb" ] },
        { name: "year", categories: [ 2012 ] }
      ],
      series: [
        { categoryAxis: "month", data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.pane `String`

The name of the pane that the category axis should be rendered in.
The axis will be rendered in the first (default) pane if not set.

#### Example - set the category axis pane

    <div id="chart"></div>
    <script>
    var chart = $("#chart").kendoChart({
      series: [
        { data: [1,2,3] },
        { data: [1,2,3,4],
          axis: "secondValueAxis",
          categoryAxis: "secondCategoryAxis"
        }
      ],
      panes:[
        { name: "topPane" },
        { name: "bottomPane" }
      ],
      valueAxis: [
        { pane: "topPane" },
        { name: "secondValueAxis", pane: "bottomPane" }
      ],
      categoryAxis: [
        { pane: "topPane" },
        { name: "secondCategoryAxis", pane: "bottomPane" }
      ]
    });
    </script>

### categoryAxis.plotBands `Array`

The plot bands of the category axis.

#### Example - set the category plot bands

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        plotBands: [
          { from: 1, to: 2, color: "red" }
        ]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.plotBands.color `String`

The color of the plot band.

#### Example - set the category plot band color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        plotBands: [
          { from: 1, to: 2, color: "red" }
        ]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.plotBands.from `Number`

The start position of the plot band in axis units.

#### Example - set the category plot band start position

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        plotBands: [
          { from: 1, to: 2, color: "red" }
        ]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.plotBands.opacity `Number`

The opacity of the plot band.

#### Example - set the category plot band opacity

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        plotBands: [
          { from: 1, to: 2, color: "red", opacity: 0.5 }
        ]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.plotBands.to `Number`

The end position of the plot band in axis units.

#### Example - set the category plot band end position

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        plotBands: [
          { from: 1, to: 2, color: "red" }
        ]
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.reverse `Boolean` *(default: false)*

If set to `true` the category axis direction will be reversed. By default categories are listed from left to right and from bottom to top.

#### Example - reverse the category axis

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        categories: ["2012", "2013"],
        reverse: true
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.roundToBaseUnit `Boolean` *(default: true)*

If set to `true` the chart will round the first and last date to the nearest base unit.

The `roundToBaseUnit` option will be ignored if [series.type](#configuration-series.type) is set to "bar", "column", "ohlc" or "candlestick".

### categoryAxis.select `Object`

The selected axis range. If set, axis selection will be enabled.

The range units are:

* Category index (0-based)
* Date

#### Example - configure category axis selection

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          max: 3
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.from `Object`

The lower boundary of the selected range.

#### Example - set the category axis selection lower boundary

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.max `Object`

The maximum value which the user can select.

> The category with the specified index (date) is not included in the selected range
unless the axis is justified. In order to select all categories set
a value larger than the last category index (date).

#### Example - set the category axis selection maximum

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          max: 3
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.min `Object`

The minimum value which the user can select.

#### Example - set the category axis selection minimum

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          min: 1
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.mousewheel `Object`

The mouse wheel configuration of the selection.

#### Example - configure the category axis selection mouse wheel behavior

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          mousewheel: {
            reverse: false,
            zoom: "left"
          }
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.mousewheel.reverse `Boolean` *(default: true)*

If set to `true` will reverse the mouse wheel direction. The normal direction is down for "zoom out", up for "zoom in".

#### Example - disable reverse mouse wheel selection

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          mousewheel: {
            reverse: false
          }
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.mousewheel.zoom `String` *(default: "both")*

The zoom direction.

The supported values are:

* "both" - zooming expands and contracts the selection both sides

* "left" - zooming expands and contracts the selection left side only

* "right" - zooming expands and contracts the selection right side only

#### Example - set the category axis selection zoom

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2,
          mousewheel: {
            zoom: "left"
          }
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.select.to `Object`

The upper boundary of the selected range.

> The category with the specified index (date) is not included in the selected range
unless the axis is justified. In order to select all categories set
a value larger than the last category index (date).

#### Example - set the category axis selection lower boundary

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis:  {
        select: {
          from:1,
          to: 2
        }
      },
      series: [
        { data: [1, 2, 3, 4] }
      ]
    });
    </script>

### categoryAxis.title `Object`

The title configuration of the category axis.

> The [categoryAxis.title.text](#configuration-categoryAxis.title.text) option must be set in order to display the title.


#### Example - set the category axis title
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        title: {
          text: "Years",
          background: "green",
          border: {
            width: 1,
          }
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.background `String`

The background color of the title. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis title background
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        title: {
          text: "Years",
          background: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.border `Object`

The border of the title.

#### Example - set the category axis title border

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          border: {
            color: "green",
            dashType: "dashDot",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis title border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          border: {
            color: "green",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the category axis title border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          border: {
            dashType: "dashDot",
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the category axis title border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          border: {
            width: 1
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.color `String`

The text color of the title. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the category axis title color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        title: {
          text: "Years",
          color: "#aa00bb"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis title color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        title: {
          text: "Years",
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the category axis title color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [ "2012", "2013"],
        title: {
          text: "Years",
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

The font style of the title.

#### Example - set the category axis title font

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
           text: "Years",
           font: "20px sans-serif",
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.margin `Number|Object` *(default: 5)*

The margin of the title. A numeric value will set all margins.

#### Example - set the category axis title margin as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          margin: 20
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.margin.bottom `Number` *(default: 0)*

The bottom margin of the title.

#### Example - set the category axis title bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          margin: {
            bottom: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.margin.left `Number` *(default: 0)*

The left margin of the title.

#### Example - set the category axis title left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          margin: {
            left: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.margin.right `Number` *(default: 0)*

The right margin of the title.

#### Example - set the category axis title right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          margin: {
            right: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.margin.top `Number` *(default: 0)*

The top margin of the title.

#### Example - set the category axis title top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          margin: {
            top: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.position `String` *(default: "center")*

The position of the title.

The supported values are:

* "top" - the axis title is positioned on the top (applicable to vertical axis)
* "bottom" - the axis title is positioned on the bottom (applicable to vertical axis)
* "left" - the axis title is positioned on the left (applicable to horizontal axis)
* "right" - the axis title is positioned on the right (applicable to horizontal axis)
* "center" - the axis title is positioned in the center

#### Example - set the category axis title position

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: ["2012", "2013"],
        title: {
          text: "Years",
          position: "left"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.padding `Number|Object` *(default: 0)*

The padding of the title. A numeric value will set all paddings.

#### Example - set the category axis title padding as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          padding: 20
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.padding.bottom `Number` *(default: 0)*

The bottom padding of the title.

#### Example - set the category axis title bottom padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          padding: {
            bottom: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.padding.left `Number` *(default: 0)*

The left padding of the title.

#### Example - set the category axis title left padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          padding: {
            left: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.padding.right `Number` *(default: 0)*

The right padding of the title.

#### Example - set the category axis title right padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          padding: {
            right: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.padding.top `Number` *(default: 0)*

The top padding of the title.

#### Example - set the category axis title top padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          padding: {
            top: 20
          }
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.rotation `Number` *(default: 0)*

The rotation angle of the title. By default the title is not rotated.

#### Example - rotate the category axis title

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years",
          rotation: 90
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.text `String`

The text of the title.

#### Example - set the category axis title text

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years"
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.title.visible `Boolean` *(default: true)*

If set to `true` the chart will display the category axis title. By default the category axis title is visible.

#### Example - hide the category axis title
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: [{
        title: {
          text: "Years"
          visible: false
        },
        categories: ["2012", "2013"]
      }],
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### categoryAxis.type `String` *(default: "category")*

The category axis type.

The supported values are:

* "category" - discrete category axis.

* "date" - specialized axis for displaying chronological data.

#### Example - set the category axis type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      categoryAxis: {
        categories: [
          new Date("2011/12/20"),
          new Date("2011/12/21")
        ],
        type: "date"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### categoryAxis.visible `Boolean` *(default: true)*

The visibility of the axis.

### categoryAxis.weekStartDay `Number` *(default: kendo.days.Sunday)*

The week start day when [categoryAxis.baseUnit](#configuration-categoryAxis.baseUnit) is set to "weeks".

The supported values are:

* kendo.days.Sunday - equal to 0
* kendo.days.Monday - equal to 1
* kendo.days.Tuesday - equal to 2
* kendo.days.Wednesday - equal to 3
* kendo.days.Thursday - equal to 4
* kendo.days.Friday - equal to 5
* kendo.days.Saturday - equal to 6

### chartArea `Object`

The chart area configuration options. Represents the entire visible area of the chart.

### chartArea.background `String` *(default: "white")*

The background color of the chart area. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart area background as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        background: "#aa00bb"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the chart area background as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        background: "rgb(128, 0, 255)"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the chart area background by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        background: "green"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### chartArea.border `Object`

The border of the chart area.

#### Example - set the chart area border
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart area border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the chart area border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        border: {
          width: 2,
          dashType: "dashDot"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the chart area border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        border: {
          width: 2
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.height `Number` *(default: 400)*

The height of the chart area.

#### Example - set the chart area height
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        height: 200
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.margin `Number|Object` *(default: 5)*

The margin of the chart area. A numeric value will set all margins.

#### Example - set the chart area margin
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        margin: 10
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.margin.bottom `Number` *(default: 5)*

The bottom margin of the chart area.

#### Example - set the chart area bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        margin: {
          bottom: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.margin.left `Number` *(default: 5)*

The left margin of the chart area.

#### Example - set the chart area left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        margin: {
          left: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.margin.right `Number` *(default: 5)*

The right margin of the chart area.

#### Example - set the chart area right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        margin: {
          right: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.margin.top `Number` *(default: 5)*

The top margin of the chart area.

#### Example - set the chart area top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        margin: {
          top: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### chartArea.opacity `Number` *(default: 1)*

The background opacity of the chart area. By default the background is opaque.

#### Example - set the chart area opacity
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        background: "green",
        opacity: 0.1
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

<<<<<<< HEAD
### legend.border.color `String` *(default: "black")*

 The color of the border.

### legend.border.dashType `String` *(default: "solid")*

The dash type of the border.
=======
### chartArea.width `Number` *(default: 600)*

The width of the chart area.
>>>>>>> f4ea6fd... Chart API revamp WIP

#### Example - set the chart area width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      chartArea: {
        width: 500
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### dataSource `Object|Array|kendo.data.DataSource`

The data source of the chart which is used to display the series. Can be a JavaScript object which represents a valid data source configuration, a JavaScript array or an existing [kendo.data.DataSource](/api/framework/datasource)
instance.

If the `dataSource` option is set to a JavaScript object or array the widget will initialize a new [kendo.data.DataSource](/api/framework/datasource) instance using that value as data source configuration.

If the `dataSource` option is an existing [kendo.data.DataSource](/api/framework/datasource) instance the widget will use that instance and will **not** initialize a new one.

#### Example - set dataSource as a JavaScript object
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      dataSource: {
        data: [
          { price: 10 },
          { price: 20 }
        ]
      },
      series: [
        { field: "price" }
      ]
    });
    </script>

#### Example - set dataSource as a JavaScript array

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      dataSource: [
        { price: 10 },
        { price: 20 }
      ],
      series: [
        { field: "price" }
      ]
    });
    </script>

#### Example - set dataSource as an existing kendo.data.DataSource instance
    <div id="chart"></div>
    <script>
    var dataSource = new kendo.data.DataSource({
      transport: {
        read: {
          url: "http://demos.kendoui.com/service/stockdata",
          dataType: "jsonp"
        }
      }
    });
    $("#chart").kendoChart({
      dataSource: dataSource,
      series: [
        { field: "Volume" }
      ]
    });
    </script>

### legend `Object`

The chart legend configuration options.

#### Example - configure the chart legend
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        background: "green",
        position: "left",
        labels: {
          font: "20px sans-serif",
          color: "red"
        }
      }
    });
    </script>

### legend.background `String` *(default: "white")*

The background color of the legend. Accepts a valid CSS color string, including hex and rgb.

<<<<<<< HEAD
### legend.border.width `Number` *(default: 0)*

The width of the border.
=======
#### Example - set the chart legend background as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        background: "#aa00bb"
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

#### Example - set the chart legend background as a RGB value

    $("#chart").kendoChart({
      legend: {
        background: "rgb(128, 0, 255)"
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

#### Example - set the chart legend background by name
>>>>>>> f4ea6fd... Chart API revamp WIP

    $("#chart").kendoChart({
      legend: {
        background: "green"
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.border `Object`

The border of the legend.

#### Example - set the chart legend border
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### labels.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart legend border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### labels.border.dashType `String` *(default: "solid")*

<<<<<<< HEAD
### legend.inactiveItems `Object`

Configures the legend inactive items.

### legend.inactiveItems.labels `Object`

Configures the legend labels.

### legend.inactiveItems.labels.color `String` *(default: "black")*

The color of the labels.
Any valid CSS color string will work here, including hex and rgb.

### legend.inactiveItems.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

### legend.inactiveItems.labels.template `String`

The template of the labels.
Template variables:

*   **text** - the text the legend item.
*   **series** - the data series.
*   **value** - the point value. (only for donut and pie charts)
*   **percentage** - the point value represented as a percentage value. (only for donut and pie charts)
*   **dataItem** - the original data item used to construct the point. (only for donut and pie charts)

### legend.inactiveItems.markers `Object`

Configures the legend markers.

### legend.inactiveItems.markers.color `String`

The color of the markers.
Any valid CSS color string will work here, including hex and rgb.
=======
The dash type of the border.
>>>>>>> f4ea6fd... Chart API revamp WIP

The following dash types are supported:

<<<<<<< HEAD
The margin of the legend.
=======
* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line
>>>>>>> f4ea6fd... Chart API revamp WIP

#### Example - set the chart legend border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        border: {
          width: 2,
          dashType: "dashDot"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### labels.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the chart legend border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        border: {
          width: 2
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels `Object`

The chart legend label configuration.

#### Example - configure the chart legend labels

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: [{
        labels: {
          background: "green",
          color: "white"
        }
      }],
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.color `String` *(default: "black")*

The text color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart legend label color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          color: "#aa00bb"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

<<<<<<< HEAD
### legend.position `String` *(default: "right")*

The positions of the legend.
=======
#### Example - set the chart legend label color as a RGB value
>>>>>>> f4ea6fd... Chart API revamp WIP

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          color: "rgb(128, 0, 255)"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

#### Example - set the chart legend label color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          color: "green"
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

#### Example - set the chart legend label font

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: [{
        labels: {
           font: "20px sans-serif",
        }
      }],
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.margin `Number|Object` *(default: 10)*

The margin of the labels. A numeric value will set all margins.

#### Example - set the chart legend label margin as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          margin: 20
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.margin.bottom `Number` *(default: 0)*

The bottom margin of the labels.

#### Example - set the chart legend label bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          margin: {
            bottom: 20
          }
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.margin.left `Number` *(default: 0)*

The left margin of the labels.

#### Example - set the chart legend label left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          margin: {
            left: 20
          }
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.margin.right `Number` *(default: 0)*

The right margin of the labels.

#### Example - set the chart legend label right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          margin: {
            right: 20
          }
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.labels.margin.top `Number` *(default: 0)*

The top margin of the labels.

#### Example - set the chart legend label top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        labels: {
          margin: {
            top: 20
          }
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.offsetX `Number` *(default: 0)*

The X offset of the chart legend. The offset is relative to the default position of the legend.
For instance, a value of 20 will move the legend 20 pixels to the right of its initial position.
A negative value will move the legend to the left of its current position.

#### Example - set the chart legend horizontal offset

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        offsetX: 10
      }
    });
    </script>

### legend.offsetY `Number` *(default: 0)*

The Y offset of the chart legend.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels down from its initial position.
A negative value will move the legend upwards from its current position.

#### Example - set the chart legend vertical offset

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        offsetY: 10
      }
    });
    </script>

### legend.padding `Number|Object` *(default: 5)*

The padding of the chart legend. A numeric value will set all paddings.

#### Example - set the chart legend padding as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        padding: 20
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.padding.bottom `Number` *(default: 0)*

The bottom padding of the chart legend.

#### Example - set the chart legend bottom padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        padding: {
          bottom: 20
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.padding.left `Number` *(default: 0)*

The left padding of the chart legend.

#### Example - set the chart legend left padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        padding: {
          left: 20
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.padding.right `Number` *(default: 0)*

The right padding of the chart legend.

#### Example - set the chart legend right padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        padding: {
          right: 20
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.padding.top `Number` *(default: 0)*

The top padding of the chart legend.

#### Example - set the chart legend top padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      legend: {
        padding: {
          top: 20
        }
      },
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ]
    });
    </script>

### legend.position `String` *(default: "right")*

The positions of the chart legend.

The supported values are:

* "top" - the legend is positioned on the top.

* "bottom" - the legend is positioned on the bottom.

* "left" - the legend is positioned on the left.

* "right" - the legend is positioned on the right.

* "custom" - the legend is positioned using [legend.offsetX](#configuration-legend.offsetX) and [legend.offsetY](#configuration-legend.offsetY).

### legend.labels.template `String|Function`

The [template](/api/framework/kendo#methods-template) which renders the labels.

The fields which can be used in the template are:

*   text - the text the legend item.
*   series - the data series.
*   value - the point value. (only for donut and pie charts)
*   percentage - the point value represented as a percentage value. (only for donut and pie charts)
*   dataItem - the original data item used to construct the point. (only for donut and pie charts)

#### Example - set the chart legend label template as a string
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        labels: {
          template: "Name: #: text #"
        }
      }
    });
    </script>

#### Example - set the chart legend label template as a function
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        labels: {
          template: kendo.template("Name: #: text #")
        }
      }
    });
    </script>

### legend.visible `Boolean` *(default: true)*

If set to `true` the chart will display the legend. By default the chart legend is visible.

#### Example - hide the legend

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { name: "Series 1", data: [1, 2, 3] },
        { name: "Series 2", data: [3, 4, 5] }
      ],
      legend: {
        visible: false
      }
    });
    </script>

### panes `Array`

The chart panes configuration.

Panes are used to split the chart in two or more parts. The panes are ordered from top to bottom.

Each axis can be associated with a pane by setting its `pane` option to the name of the desired pane.
Axis that don't have specified pane are placed in the top (default) pane.

Series are moved to the desired pane by associating them with an axis.

#### Example - configure the chart panes
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane" },
        { name: "bottom-pane" }
      ]
    });
    </script>

### panes.background `String`

The background color of the chart pane. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart panes background as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", background: "#00ff00" },
        { name: "bottom-pane", background: "#ff00ff" }
      ]
    });
    </script>

#### Example - set the chart panes background as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", background: "rgb(0, 255, 0)" },
        { name: "bottom-pane", background: "rgb(255, 0, 255)" }
      ]
    });
    </script>

#### Example - set the chart panes background by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", background: "red" },
        { name: "bottom-pane", background: "green" }
      ]
    });
    </script>

### panes.border `Object`

The border of the chart pane.

#### Example - set the chart pane border

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane",
          border: {
            color: "red",
            width: 2
          }
        },
        { name: "bottom-pane",
          border: {
            color: "green",
            width: 2
          }
        }
      ]
    });
    </script>

### panes.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart pane border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane",
          border: {
            color: "red",
            width: 2
          }
        },
        { name: "bottom-pane",
          border: {
            color: "green",
            width: 2
          }
        }
      ]
    });
    </script>

### panes.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the chart pane border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane",
          border: {
            dashType: "dashDot",
            width: 2
          }
        },
        { name: "bottom-pane",
          border: {
            dashType: "dashDot",
            width: 2
          }
        }
      ]
    });
    </script>

### panes.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the chart pane border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane",
          border: {
            width: 2
          }
        },
        { name: "bottom-pane",
          border: {
            width: 2
          }
        }
      ]
    });
    </script>

### panes.height `Number`

The chart pane height in pixels.

#### Example - set the chart pane height

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", height: 200 },
        { name: "bottom-pane", height: 300  }
      ]
    });
    </script>

### panes.name `String`

The unique name of the chart pane.

#### Example - set the chart pane name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane" },
        { name: "bottom-pane" }
      ]
    });
    </script>

### panes.margin `Number|Object` *(default: 0)*

The margin of the pane. A numeric value will set all margins.

#### Example - set the chart pane margin as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", margin: 10 },
        { name: "bottom-pane", margin: 10 }
      ]
    });
    </script>

### pane.margin.bottom `Number` *(default: 0)*

The bottom margin of the chart pane.

#### Example - set the chart pane bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          margin: {
            bottom: 10
          }
        },
        {
          name: "bottom-pane",
          margin: {
            bottom: 10
          }
        }
      ]
    });
    </script>

### pane.margin.left `Number` *(default: 0)*

The left margin of the chart pane.

#### Example - set the chart pane left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          margin: {
            left: 10
          }
        },
        {
          name: "bottom-pane",
          margin: {
            left: 10
          }
        }
      ]
    });
    </script>

### pane.margin.right `Number` *(default: 0)*

The right margin of the chart pane.

#### Example - set the chart pane right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          margin: {
            right: 10
          }
        },
        {
          name: "bottom-pane",
          margin: {
            right: 10
          }
        }
      ]
    });
    </script>

### pane.margin.top `Number` *(default: 0)*

The top margin of the chart pane.

#### Example - set the chart pane top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          margin: {
            top: 10
          }
        },
        {
          name: "bottom-pane",
          margin: {
            top: 10
          }
        }
      ]
    });
    </script>

### panes.padding `Number|Object` *(default: 0)*

The padding of the pane. A numeric value will set all paddings.

#### Example - set the chart pane padding as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        { name: "top-pane", padding: 10 },
        { name: "bottom-pane", padding: 10 }
      ]
    });
    </script>

### pane.padding.bottom `Number` *(default: 0)*

The bottom padding of the chart pane.

#### Example - set the chart pane bottom padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          padding: {
            bottom: 10
          }
        },
        {
          name: "bottom-pane",
          padding: {
            bottom: 10
          }
        }
      ]
    });
    </script>

### pane.padding.left `Number` *(default: 0)*

The left padding of the chart pane.

#### Example - set the chart pane left padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          padding: {
            left: 10
          }
        },
        {
          name: "bottom-pane",
          padding: {
            left: 10
          }
        }
      ]
    });
    </script>

### pane.padding.right `Number` *(default: 0)*

The right padding of the chart pane.

#### Example - set the chart pane right padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          padding: {
            right: 10
          }
        },
        {
          name: "bottom-pane",
          padding: {
            right: 10
          }
        }
      ]
    });
    </script>

### pane.padding.top `Number` *(default: 0)*

The top padding of the chart pane.

#### Example - set the chart pane top padding

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top" },
        { pane: "bottom", name: "bottom-pane" }
      ],
      panes: [
        {
          name: "top-pane",
          padding: {
            top: 10
          }
        },
        {
          name: "bottom-pane",
          padding: {
            top: 10
          }
        }
      ]
    });
    </script>

### panes.title `String|Object`

The title configuration of the chart pane.

> The [panes.title.text](#configuration-panes.title.text) option must be set in order to display the title.

#### Example - set the chart pane title

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom"
          }
        }
      ]
    });
    </script>

### panes.title.background `String`

The background color of the title. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart pane title background

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            background: "red"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            background: "green"
          }
        }
      ]
    });
    </script>

### panes.title.border `Object`

The border of the title.

#### Example - set the chart pane title border

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            border: {
              color: "red",
              width: 2
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            border: {
              color: "green",
              width: 2
            }
          }
        }
      ]
    });
    </script>

### panes.title.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart pane title border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            border: {
              color: "red",
              width: 2
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            border: {
              color: "green",
              width: 2
            }
          }
        }
      ]
    });
    </script>

### panes.title.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the chart pane title border dashType

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            border: {
              dashType: "dashDot",
              width: 2
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            border: {
              dashType: "dashDot",
              width: 2
            }
          }
        }
      ]
    });
    </script>

### panes.title.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the category axis title border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            border: {
              width: 2
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            border: {
              width: 2
            }
          }
        }
      ]
    });
    </script>

### panes.title.color `String`

The text color of the title. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart pane title color as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            color: "#aa00bb"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            color: "#a0b0c0"
          }
        }
      ]
    });
    </script>

#### Example - set the chart pane title color as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            color: "rgb(128, 0, 255)"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            color: "rgb(128, 0, 255)"
          }
        }
      ]
    });
    </script>

#### Example - set the chart pane title color by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            color: "red"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            color: "green"
          }
        }
      ]
    });
    </script>

### panes.title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

The font style of the title.

#### Example - set the chart pane title font

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            font: "20px sans-serif"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            color: "green"
          }
        }
      ]
    });
    </script>

### panes.title.margin `Number|Object` *(default: 5)*

The margin of the title. A numeric value will set all margins.

#### Example - set the chart pane title margin as a number

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            margin: 10
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            margin: 10
          }
        }
      ]
    });
    </script>

### panes.title.margin.bottom `Number` *(default: 0)*

The bottom margin of the title.

#### Example - set the chart pane title bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            margin: {
              bottom: 10
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            margin: {
              bottom: 10
            }
          }
        }
      ]
    });
    </script>

### panes.title.margin.left `Number` *(default: 0)*

The left margin of the title.

#### Example - set the chart pane title left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            margin: {
              left: 10
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            margin: {
              left: 10
            }
          }
        }
      ]
    });
    </script>

### panes.title.margin.right `Number` *(default: 0)*

The right margin of the title.

#### Example - set the chart pane title right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            margin: {
              right: 10
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            margin: {
              right: 10
            }
          }
        }
      ]
    });
    </script>

### panes.title.margin.top `Number` *(default: 0)*

The top margin of the title.

#### Example - set the chart pane title top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            margin: {
              top: 10
            }
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            margin: {
              top: 10
            }
          }
        }
      ]
    });
    </script>

### panes.title.position `String` *(default: "center")*

The position of the title.

The supported values are:

* "left" - the axis title is positioned on the left (applicable to horizontal axis)
* "right" - the axis title is positioned on the right (applicable to horizontal axis)
* "center" - the axis title is positioned in the center

#### Example - set the chart pane title position

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            position: "left"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            position: "left"
          }
        }
      ]
    });
    </script>

### panes.title.text `String`

The text of the title.

#### Example - set the chart pane title text

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top"
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom"
          }
        }
      ]
    });
    </script>

### panes.title.visible `Boolean` *(default: true)*

If set to `true` the chart will display the pane title. By default the pane title is visible.

#### Example - hide the chart pane title
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] },
        { data: [1, 2, 3, 4], axis: "bottom" }
      ],
      valueAxis: [
        { pane: "top-pane" },
        { pane: "bottom-pane", name: "bottom" }
      ],
      panes: [
        { name: "top-pane",
          title: {
            text: "Top",
            visible: false
          }
        },
        { name: "bottom-pane",
          title: {
            text: "Bottom",
            visible: false
          }
        }
      ]
    });
    </script>

### plotArea `Object`

The plot area configuration options. The plot area is the area which displays the series.

#### Example - configure the chart plot area

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        background: "green",

      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.background `String` *(default: "white")*

The background color of the chart plot area. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart plot area background as a hex string

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        background: "#aa00bb"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the chart plot area background as a RGB value

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        background: "rgb(128, 0, 255)"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the chart plot area background by name

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        background: "green"
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>


### plotArea.border `Object`

The border of the chart plot area.

#### Example - set the chart plot area border
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.border.color `String` *(default: "black")*

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example - set the chart plot area border color

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        border: {
          width: 2,
          color: "green"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.border.dashType `String` *(default: "solid")*

The dash type of the border.

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the chart plot area border dash type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        border: {
          width: 2,
          dashType: "dashDot"
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.border.width `Number` *(default: 0)*

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example - set the chart plot area border width

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        border: {
          width: 2
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.margin `Number|Object` *(default: 5)*

The margin of the chart plot area. A numeric value will set all margins.

#### Example - set the chart plot area margin
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        margin: 10
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.margin.bottom `Number` *(default: 5)*

The bottom margin of the chart plot area.

#### Example - set the chart plot area bottom margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        margin: {
          bottom: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.margin.left `Number` *(default: 5)*

The left margin of the chart plot area.

#### Example - set the chart plot area left margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        margin: {
          left: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.margin.right `Number` *(default: 5)*

The right margin of the chart plot area.

#### Example - set the chart plot area right margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        margin: {
          right: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.margin.top `Number` *(default: 5)*

The top margin of the chart plot area.

#### Example - set the chart plot area top margin

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        margin: {
          top: 10
        }
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### plotArea.opacity `Number` *(default: 1)*

The background opacity of the chart plot area. By default the background is opaque.

#### Example - set the chart plot area opacity
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      plotArea: {
        background: "green",
        opacity: 0.1
      },
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

### series `Array`

The configuration of the chart series.

The series type is determined by the value of the type field.
If a type value is missing, the type is assumed to be the one specified in seriesDefaults.

> Some options accept function as argument. They will be evaluated for each point (supplied as parameter). The theme/seriesDefaults value will be used if no value is returned.

#### Example - configure the chart series

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { type: "line", data: [1, 2, 3] },
        { type: "bar", data: [4, 5, 6] }
      ]
    });
    </script>

### series.dashType `String` *(default: "solid")*

The dash type of line chart.

> The `dashType` option is taken into consideration only if the [series.type](#configuration-series.type) option is set to "line".

The following dash types are supported:

* "dash" - a line consisting of dashes
* "dashDot" - a line consisting of a repeating pattern of dash-dot
* "dot" - a line consisting of dots
* "longDash" - a line consisting of a repeating pattern of long-dash
* "longDashDot" - a line consisting of a repeating pattern of long-dash-dot
* "longDashDotDot" - a line consisting of a repeating pattern of long-dash-dot-dot
* "solid" - a solid line

#### Example - set the chart legend border dash type
    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        {
          dashType: "dashDot",
          type: "line",
          data: [1, 2, 3]
        }
      ]
    });
    </script>

### series.data `Array`

The array of data items which represent the series data.

Can be set to :

* Array of objects. Each point is bound to the field specified via the [series.field](#configuration-series.field) option.
* Array of numbers. Supported when the [series.type](#configuration-series.type) option is set to "area", "bar", "column", "donut", "pie" or "line".
* Array of arrays of numbers. Supported when the [series.type](#configuration-series.type) option is set to "bubble", "scatter", "scatterLine" or "ohlc".
    * Bubble series need arrays of three values - X value, Y value and Size value e.g. `[1, 1, 10]`
    * Scatter and scatter line series need arrays of two values - X value and Y value
    * OHLC and candlestick series need arrays of four values - open, high, low and close

#### Example - set the chart series data as array of objects

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        {
          field: "price",
          data: [
            { price: 1 },
            { price: 2 },
            { price: 3 }
          ]
        }
      ]
    });
    </script>

#### Example - set the chart series data as array of numbers

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { data: [1, 2, 3] }
      ]
    });
    </script>

#### Example - set the chart series data as array of arrays

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        {
          type: "bubble",
          data: [
            [1, 2, 15],
            [2, 3, 4]
          ]
        }
      ]
    });
    </script>

### series.explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded.

** Available for donut and pie series **

### series.highField `String`

The data field containing the high value.

** Available for candlestick and ohlc series only **

### series.holeSize `Number`

The the size of the donut hole.

** Available for donut series only. **

### series.field `String`

The data field containing the series value.

### series.groupNameTemplate `String`

Name template for auto-generated series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.name `String`

The series name visible in the legend.

### series.highlight `Object`

Configures the appearance of highlighted points.

### series.highlight.visible `Boolean` *(default: true)*

A value indicating if the series points should be highlighted.

### series.highlight.border `Object`

The border of highlighted points. The color is computed automatically from the base point color.

** Applicable to bubble, pie, candlestick and ohlc series. **

### series.highlight.border.width `Number`

The width of the border.

### series.highlight.border.color `String`

The border color.

### series.highlight.border.opacity `Number`

The border opacity.

### series.highlight.color `String`

The highlight color.

** Available only for pie series **

### series.highlight.line `Object`

Line options for highlighted points. The color is computed automatically from the base point color.

** Available only for candlestick series **

### series.highlight.line.width `Number`

The width of the line.

### series.highlight.line.color `String`

The line color.

### series.highlight.line.opacity `Number`

The opacity of the line.

### series.highlight.opacity `Number`

The opacity of the highlighted points.

** Applicable to bubble, pie, candlestick and ohlc series. **

### series.aggregate `String` *(default: "max")*

Aggregate function for date series.

This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.

#### *"max"*

The highest value for the date period.

#### *"min"*

The lowest value for the date period.

#### *"sum"*

The sum of all values for the date period.

#### *"count"*

The number of values for the date period.

#### *"avg"*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

#### *object* (compound aggregate)

** Applicable to candlestick and ohlc series **

Specifies the aggregate for each data item field.

##### Example

    aggregate: {
        open: "max",
        high: "max",
        close: "min",
        low: "max"
    }

### series.axis `String` *(default: "primary")*

The name of the value axis to use.

** Applicable to area, bar, column, line, ohlc and candlestick series **

### series.border `Object`

The border of the points.

** Applicable to bar, column, bubble, donut, pie, ohlc and candlestick series **

### series.border.color `String`

The color of the border.  It defaults to the color of the current series.

### series.border.dashType `String|Function` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.border.opacity `Number`

The border opacity.

### series.border.width `Number|Function` *(default: 1)*

The width of the border.

### series.categoryField `String`

The data field containing the point category name.

** Applicable to bubble, donut and pie series. **

### series.closeField `String`

The data field containing the close value.

** Available for candlestick and ohlc series only **

### series.color `String`

The series base color.

### series.colorField `String`

The data field containing the point color.

** Applicable for bar, column, bubble, donut, pie, candlestick and ohlc series. **

### series.connectors `Object`

The label connectors options.

** Applicable to donut and pie series. **

### series.connectors.color `String`

The color of the connector line.

### series.connectors.padding `Number` *(default: 4)*

The padding between the connector line and the label, and connector line and donut chart.

### series.connectors.width `Number` *(default: 1)*

The width of the connector line.

### series.downColor `String`

The series color when open value is smoller then close value.

** Available for candlestick series only **

### series.downColorField `String`

The data field containing the body color.

** Available for candlestick series only **

### series.gap `Number` *(default: 1.5)*

The distance between category clusters.

** Applicable for bar, column, candlestick and ohlc series. **

### series.labels `Object`

Configures the series data labels.

### series.labels.align `String` *(default: "circle")*

Defines the alignment of the labels.

** Available for donut and pie series. **

#### *"circle"*

The labels are positioned in circle around the chart.

#### *"column"*

The labels are positioned in columns to the left and right of the chart.

### series.labels.background `String`

The background color of the labels.

### series.labels.border `Object`

The border of the labels.

### series.labels.border.color `String|Function` *(default: "black")*

 The color of the border.

### series.labels.border.dashType `String|Function` *(default: "solid")*

 The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.labels.border.width `Number|Function` *(default: 0)*

 The width of the border.

### series.labels.color `String`

The text color of the labels.

### series.labels.distance `Number` *(default: 35)*

The distance of the labels.

** Available for donut and pie series. **

### series.labels.font `String|Function` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

### series.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: "C"

### series.labels.margin `Number|Object` *(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.labels.padding `Number|Object` *(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.labels.position `String|Function` *(default: "above")*

Defines the position of the labels.

#### *"above"*

The label is positioned at the top of the marker.

** Applicable for area, bubble, line, scatter and scatterLine series. **

#### *"center"*

The label is positioned at the point center.

** Applicable for bar, column, donut and pie series. **

#### *"insideEnd"*

The label is positioned inside, near the end of the point.

** Applicable for bar, column, donut and pie series. **

#### *"insideBase"*

The label is positioned inside, near the base of the bar.

** Applicable for bar and column series. **

#### *"outsideEnd"*

The label is positioned outside, near the end of the bar.

** Applicable for bar, column, donut and pie series.
Not applicable for stacked series. **

#### *"right"*

The label is positioned to the right of the marker.

** Applicable for area, bubble, line, scatter and scatterLine series. **

#### *"below"*

The label is positioned at the bottom of the marker.

** Applicable for area, bubble, line, scatter and scatterLine series. **

#### *"left"*

The label is positioned to the left of the marker.

** Applicable for area, bubble, line, scatter and scatterLine series. **

### series.labels.template `String|Function`

The label template. Template variables:

*   **value** - the point value. Can be a number or object containing each bindable field.
*   **percentage** - the point value represented as a percentage value.
    Available for donut and pie series.
*   **category** - the category name
    Available for area, bar, column, bubble, donut, line and pie series.
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
    Will be null if binding to array.

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [
             {
                 type: "area",
                 name: "Series 1",
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: "#= value #%",
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.labels.visible `Boolean|Function` *(default: false)*

 The visibility of the labels.

### series.line `String|Object`

Line options.

** Applicable to area, candlestick and ohlc series. **

### series.line.color `String`

The line color.

### series.line.opacity `Number` *(default: 1)*

The line opacity.

### series.line.width `String` *(default: 4)*

The line width.

### series.lowField `String`

The data field containing the low value.

** Available for candlestick and ohlc series **

### series.margin `Number` *(default: 1)*

The margin around each donut series (ring)

** Applicable only to donut series **

### series.markers `Object`

Marker options.

** Applicable to area, line, scatter and scatterLine series **

### series.markers.background `String`

The background color of the current series markers.

### series.markers.border `Object`

The border of the markers.

### series.markers.border.color `String|Function` *(default: "black")*

 The color of the border.

### series.markers.border.width `Number|Function` *(default: 0)*

 The width of the border.

### series.markers.size `Number|Function` *(default: 6)*

 The marker size.

### series.markers.type `String|Function` *(default: "circle")*

Configures the markers shape type.

#### *"square"*

The marker shape is square.

#### *"triangle"*

The marker shape is triangle.

#### *"circle"*

The marker shape is circle.

### series.markers.visible `Boolean|Function` *(default: false)*

The markers visibility.

### series.markers.rotation `Number|Function`

The rotation angle of the markers.

### series.maxSize `Number` *(default: 100)*

The max size of the marker.

** Applicable only to bubble series. **

### series.minSize `Number` *(default: 5)*

The min size of the marker.

** Applicable only to bubble series. **

### series.missingValues `String` *(default: "gap")*

Configures the behavior for handling missing values.

** Available for area, line and scatterLine series **

#### *"interpolate"*

The value is interpolated from neighboring points.

#### *"zero"*

The value is assumed to be zero.

#### *"gap"*

The plot stops before the missing point and continues after it.

### series.negativeColor `String`

Color to use for bars with negative values.

** Applicable only to bar and column series. **

### series.negativeValues `Object`

The settings for negative values.

** Applicable only to bubble series. **

### series.negativeValues.color `String` *(default: "#ffffff")*

The color of the negative values.

### series.negativeValues.visible `Boolean` *(default: false)*

The visibility of the negative values.

### series.opacity `Number`

The series opacity.

### series.openField `String`

The data field containing the open value.

** Available for candlestick and ohlc series **

### series.overlay `Object`

The effects overlay.

### series.overlay.gradient `String`

The gradient name.

Available options:

* **glass** (bar, column and candlestick series)
* **roundedBevel** (donut and pie series)
* **sharpBevel** (donut and pie series)
* **none**

### series.padding `Number`

The padding around the chart (equal on all sides).

** Available for donut and pie series. **

### series.size `Number`

The size (or radius) of the series in pixels.
If not specified, the available space is split evenly between the series.

**Available for donut series only.**

### series.startAngle `Number` *(default: 90)*

The start angle of the first segment.

**Available for donut and pie series.**

### series.sizeField `String`

The data field containing the bubble size value.

** Applicable only to bubble series. **

### series.spacing `Number` *(default: 0.4)*

Space between points as proportion of the point width.

** Available for bar, column, candlestick and ohlc series. **

### series.stack `Boolean|String` *(default: false)*

A value indicating if the series should be stacked. String value indicates that the series should be stacked in a group with the specified name.
** Available for bar and column series. **

### series.tooltip `Object`

The data point tooltip configuration options.

### series.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.tooltip.border `Object`

The border configuration options.

### series.tooltip.border.color `String` *(default: "black")*

The color of the border.

### series.tooltip.border.width `Number` *(default: 0)*

The width of the border.

### series.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The tooltip font.

### series.tooltip.format `String`

The tooltip format. Format variables depend on the series type:

* Area, bar, column, line and pie
    *   **0** - value
* Bubble
    *   **0** - x value
    *   **1** - y value
    *   **2** - size value
    *   **3** - category name
* Scatter and scatterLine
    *   **0** - x value
    *   **1** - y value
* Candlestick and OHLC
    *   **0** - open value
    *   **1** - high value
    *   **2** - low value
    *   **3** - close value
    *   **4** - category name

#### Example

    //sets format of the tooltip
    format: "{0:C}--{1:C}"

### series.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.tooltip.template `String|Function`

The tooltip template.
Template variables:

*   **value** - the point value (either a number or an object)
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [
             {
                 type: "area",
                 name: "Series 1",
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: "#= category # - #= value #"
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.tooltip.visible `Boolean` *(default: false)*

A value indicating if the tooltip should be displayed.

### series.type `String` *(default: "column")*

The type of the series.

The supported values are:

* area
* bar
* bubble
* bullet
* candlestick
* column
* donut
* line
* ohlc
* pie
* scatterLine
* verticalArea
* verticalBullet
* verticalLine

#### Example - set the chart series type

    <div id="chart"></div>
    <script>
    $("#chart").kendoChart({
      series: [
        { type: "line", data: [1, 2, 3] }
      ]
    });
    </script>

### series.visibleInLegend `Boolean` *(default: true)*

A value indicating whether to show the point category name (for bubble, donut and pie series) and series name (for other available series types) in the legend.

** Available for all series. **

### series.visibleInLegendField `String`

A data field containing a boolean value which indicates whether to show the point category name in the legend.

** Available for bubble, donut and pie series. **

### series.width `Number`

The line width.

** Available for line and scatterLine series **

### series.xAxis `String` *(default: "primary")*

The name of the X axis to use.

** Available for bubble, scatter and scatterLine series. **

### series.xField `String`

The data field containing the X value.

** Available for bubble, scatter and scatterLine series. **

### series.yAxis `String` *(default: "primary")*

The name of the Y axis to use.

** Available for bubble, scatter and scatterLine series. **

### series.yField `String`

The data field containing the Y value.

** Available for bubble, scatter and scatterLine series. **

### series.currentField `String`

The data field containing the current value.

** Available for bullet and verticalBullet series. **

### series.targetField `String`

The data field containing the target value.

** Available for bullet and verticalBullet series. **

### series.target `Object`

The target of the bullet chart.

### series.target.line `Object`

The target line.

### series.target.line.width `Object`

The width of the line.

### series.target.color `String`

The target color.

### series.target.border `Object`

The border of the target.

### series.target.border.color `String|Function` *(default: "black")*

The color of the border.

### series.target.border.dashType `String|Function` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.target.border.width `Number|Function` *(default: 0)*

The width of the border.

### seriesColors `Array`

The default colors for the chart's series. When all colors are used, new colors are pulled from the start again.

### seriesDefaults `Object`

Default values for each series.

### seriesDefaults.area `Object`

The area configuration options.
The default options for all area series. For more details see the series options.

### seriesDefaults.candlestick `Object`

The candlestick configuration options.
The default options for all candlestick series. For more details see the series options.

### seriesDefaults.ohlc `Object`

The ohlc configuration options.
The default options for all ohlc series. For more details see the series options.

### seriesDefaults.bar `Object`

The default options for all bar series. For more details see the series options.

### seriesDefaults.border `Object`

The border of the series.

### seriesDefaults.border.color `String` *(default: "black")*

The color of the border.

### seriesDefaults.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### seriesDefaults.border.width `Number` *(default: 0)*

 The width of the border.

### seriesDefaults.bubble `Object`

The bubble configuration options.
The default options for all bubble series. For more details see the series options.

### seriesDefaults.column `Object`

The column configuration options.
The default options for all column series. For more details see the series options.

### seriesDefaults.donut `Object`

The donut configuration options.
The default options for all donut series. For more details see the series options.

### seriesDefaults.gap `Number` *(default: 1.5)*

 The distance between category clusters.

### seriesDefaults.labels `Object`

Configures the series data labels.

#### Example

    $("#chart").kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the margin on all sides to 1
                margin: 1,
                // format the labels as currency
                format: "C"
            }
        },
        ...
    });

### seriesDefaults.labels.background `String`

The background color of the labels. Any valid CSS color string will work here,
including hex and rgb.

### seriesDefaults.labels.border `Object`

The border of the labels.

### seriesDefaults.labels.border.color `String` *(default: "black")*

 The color of the border.

### seriesDefaults.labels.border.dashType `String` *(default: "solid")*

 The dash type of the border.


#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### seriesDefaults.labels.border.width `Number` *(default: 0)*

 The width of the border.

### seriesDefaults.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, inlcuding hex
and rgb.

### seriesDefaults.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.
labels

#### Example

    $("#chart").kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the font size to 14px
                font: "14px Arial,Helvetica,sans-serif"
            }
        },
        ...
    });

### seriesDefaults.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: "C"

### seriesDefaults.labels.margin `Number|Object` *(default: 0)*

 The margin of the labels.

#### Example

    $("#chart).kendoChart({
         labels: {
             // sets the top, right, bottom and left margin to 3px.
             margin: 3
         },
         ...
    });
    //
    $("#chart").kendoChart({
         labels: {
             // sets the top and left margin to 1px
             // margin right and bottom are with 0px (by default)
             margin: { top: 1, left: 1 }
         },
         ...
    });

### seriesDefaults.labels.padding `Number|Object` *(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### seriesDefaults.labels.template `String|Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         seriesDefault: {
             labels: {
                 // label template
                 template: "#= value  #%",
                 visible: true
             }
         },
         series: [
             {
                 name: "Series 1",
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### seriesDefaults.labels.visible `Boolean` *(default: false)*

 The visibility of the labels.

#### Example

    $("#chart").kendoChart({
        seriesDefault: {
            labels: {
                // hide all the series labels by default
                visible: true
            },
            ...
        }
    });

### seriesDefaults.line `Object`

The line configuration options.
The default options for all line series. For more details see the series options.

### seriesDefaults.overlay `Object`

The effects overlay.

### seriesDefaults.pie `Object`

The pie configuration options.
The default options for all pie series. For more details see the series options.

### seriesDefaults.scatter `Object`

The scatter configuration options.
The default options for all scatter series. For more details see the series options.

### seriesDefaults.scatterLine `Object`

The scatterLine configuration options.
The default options for all scatterLine series. For more details see the series options.

### seriesDefaults.spacing `Number` *(default: 0.4)*

 Space between bars.

### seriesDefaults.stack `Boolean` *(default: false)*

A value indicating if the series should be stacked.

### seriesDefaults.tooltip `Object`

The data point tooltip configuration options.

### seriesDefaults.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### seriesDefaults.tooltip.border `Object`

The border configuration options.

### seriesDefaults.tooltip.border.color `String` *(default: "black")*

 The color of the border.

### seriesDefaults.tooltip.border.width `Number` *(default: 0)*

 The width of the border.

### seriesDefaults.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### seriesDefaults.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

 The tooltip font.

### seriesDefaults.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: "C"

### seriesDefaults.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### seriesDefaults.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         seriesDefaults: {
             tooltip: {
                 visible: true,
                 template: "#= category # - #= value #"
             }
         },
         series: [
             {
                 name: "Series 1",
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### seriesDefaults.tooltip.visible `Boolean` *(default: false)*

 A value indicating if the tooltip should be displayed.

### seriesDefaults.verticalArea `Object`

The vertical area configuration options.
The default options for all vertical area series. For more details see the series options.

### seriesDefaults.verticalLine `Object`

The vertical line configuration options.
The default options for all vertical line series. For more details see the series options.

### theme `String`

Sets Chart theme. Available themes: default, blueOpal, black.

### title `Object`, `String`

The chart title configuration options or text.

### title.align `String` *(default: "center")*

 The alignment of the title.

#### *"left"*

The text is aligned to the left.

#### *"center"*

The text is aligned to the middle.

#### *"right"*

The text is aligned to the right.

### title.background `String` *(default: "white")*

 The background color of the title.

### title.border `Object`

The border of the title.

#### Example

    $("#chart").kendoChart({
        // set border options on the title
        title: {
            border: {
                // set the border color to a dark blue
                color: "#336699",
                // set the width of the border to 2 pixels
                width: 2,
                // set the border style to long dashes
                dashType: "longDash"
            }
        },
        ...
    });

### title.border.color `String` *(default: "black")*

 The color of the border.

### title.border.dashType `String` *(default: "solid")*

 The dash type of the border.


#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### title.border.width `Number` *(default: 0)*

 The width of the border.

### title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

 The font of the title.

### title.margin `Number|Object` *(default: 5)*

 The margin of the title.

#### Example

    $("#chart").kendoChart({
        // sets the top, right, bottom and left margin to 3px.
        title: {
            margin: 3
        },
        ...
    });
    //
    $("#chart").kendoChart({
        // sets the top and left margin to 1px
        // margin right and bottom are with 5px (by default)
        title: {
            margin: { top: 1, left: 1 }
        },
        ...
    });

### title.padding `Number|Object` *(default: 5)*

 The padding of the title.

#### Example

    $("#chart").kendoChart({
        // sets the top, right, bottom and left padding to 3px.
        title: {
            padding: 3
        },
        ...
    });
    //
    $("#chart").kendoChart({
        // sets the top and left padding to 1px
        // padding right and bottom are with 5px (by default)
        title: {
            padding: { top: 1, left: 1 }
        },
        ...
    });

### title.position `String` *(default: "top")*

 The position of the title.


#### *"top"*

The title is positioned on the top.

#### *"bottom"*

The title is positioned on the bottom.

### title.text `String`

The title of the chart. You can also set the text directly for a title with default options.

#### Example

    $("#chart ").kendoChart({
        title: {
            text: "Sales data"
        },
        ...
    });

    $("#chart ").kendoChart({
        title: "Sales data",
        ...
    });


### title.visible `Boolean` *(default: false)*

 The visibility of the title.

#### Example

    $("#chart ").kendoChart({
        title: {
            // hides the title
            visible: false
        },
        ...
    });

### tooltip `Object`

The data point tooltip configuration options.

### tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### tooltip.border `Object`

The border configuration options.

### tooltip.border.color `String` *(default: "black")*

 The color of the border.

### tooltip.border.width `Number` *(default: 0)*

 The width of the border.

### tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

 The tooltip font.

### tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: "C"

### tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [{
             name: "Series 1",
             data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         tooltip: {
             visible: true,
             template: "#= category # - #= value #"
         }
    });

### tooltip.visible `Boolean` *(default: false)*

A value indicating if the tooltip should be displayed.

### tooltip.shared `Boolean` *(default: false)*

A value indicating if the tooltip should be shared.

### tooltip.sharedTemplate `String`

The shared tooltip template.
Template variables:

*   **points** - the category points
*   **category** - the category name

#### Example

    $("#chart").kendoChart({
         title: {
             text: "Internet Users"
         },
         series: [{
             name: "United States",
             data: [67.96, 68.93, 75, 74, 78]
         }, {
             name: "World",
             data: [15.7, 16.7, 20, 23.5, 26.6]
         }],
         categoryAxis: {
             categories: [2005, 2006, 2007, 2008, 2009]
         },
         tooltip: {
             visible: true,
             shared: true,
             sharedTemplate:
                "#= category # </br>" +
                "# for (var i = 0; i < points.length; i++) { #" +
                    "#= points[i].series.name #: #= points[i].value # </br>" +
                "# } #"
         }
    });

### transitions `Boolean` *(default: true)*

A value indicating if transition animations should be played.

### valueAxis `Array`

The value axis configuration options.

### valueAxis.axisCrossingValue `Object|Date|Array`

Value at which the category axis crosses this axis. (Only for object)

Value indices at which the category axes cross the value axis. (Only for array)

Date at which the category axis crosses this axis. (Only for date)

### valueAxis.color `String`

Color to apply to all axis elements.
Individual color settings for line and labels take priority. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.labels `Object`

Configures the axis labels.

### valueAxis.labels.background `String`

The background color of the labels. Any valid CSS color string will work here, including
hex and rgb

### valueAxis.labels.border `Object`

The border of the labels.

### valueAxis.labels.border.color `String` *(default: "black")*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### valueAxis.labels.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.labels.border.width `Number` *(default: 0)*

The width of the border.

### valueAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

### valueAxis.labels.format `String`

The format of the labels.

#### Example

    $("#chart").kendoChart({
        valueAxis: {
           labels: {
               // set the format to currency
               format: "C"
           }
        },
        ...
    });

### valueAxis.labels.margin `Number|Object` *(default: 0)*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### valueAxis.labels.mirror `Boolean`

Mirrors the axis labels and ticks.
If the labels are normally on the left side of the axis,
mirroring the axis will render them to the right.

### valueAxis.labels.padding `Number|Object` *(default: 0)*

The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### valueAxis.labels.rotation `Number` *(default: 0)*

The rotation angle of the labels.

### valueAxis.labels.skip `Number` *(default: 1)*

Number of labels to skip.
Skips rendering the first n labels.

### valueAxis.labels.step `Number` *(default: 1)*

Label rendering step.
Every n-th label is rendered where n is the step

### valueAxis.labels.template `String|Function`

The label template.
Template variables:

*   **value** - the value

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [
             {
                 name: "Series 1",
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         valueAxis: {
             labels: {
                 // labels template
                 template: "#= value #%"
             }
         }
    });

### valueAxis.labels.visible `Boolean` *(default: true)*

The visibility of the labels.

### valueAxis.line `Object`

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

### valueAxis.line.color `String` *(default: "black")*

The color of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.line.dashType `String` *(default: "solid")*

The dash type of the line.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.line.visible `Boolean` *(default: true)*

The visibility of the line.

### valueAxis.line.width `Number` *(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### valueAxis.majorGridLines.color `String` *(default: "black")*

The color of the lines.

### valueAxis.majorGridLines.visible `Boolean` *(default: true)*

The visibility of the lines.

### valueAxis.majorGridLines.width `Number` *(default: 1)*

The width of the lines.

### valueAxis.majorTicks `Object`

The major ticks of the axis.

### valueAxis.majorTicks.size `Number` *(default: 4)*

The axis major tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### valueAxis.majorTicks.visible `Boolean` *(default: true)*

The visibility of the major ticks.

### valueAxis.majorUnit `Number`

The interval between major divisions.

### valueAxis.max `Number` *(default: 1)*

The maximum value of the axis.
This is often used in combination with the **min** configuration option.

### valueAxis.min `Number` *(default: 0)*

The minimum value of the axis.
This is often used in combination with the **max** configuration option.

### valueAxis.minorGridLines `Object`

Configures the minor grid lines.  These are the lines that are an extension of the minor ticks through the

### valueAxis.minorGridLines.color `String` *(default: "black")*

The color of the lines.

Note that this has no effect if the visibility of the minor grid lines is not set to **true**.

### valueAxis.minorGridLines.dashType `String` *(default: "solid")*

The dash type of the minor grid lines.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.
body of the chart.

Note that minor grid lines are not visible by default, therefore none of these settings will take effect without the minor grid lines visibility being set to **true**.

### valueAxis.minorGridLines.visible `Boolean` *(default: false)*

The visibility of the lines.

### valueAxis.minorGridLines.width `Number` *(default: 1)*

The width of the lines.

Note that this settings has no effect if the visibility of the minor grid lines is not set to **true**.

### valueAxis.minorTicks `Object`

The minor ticks of the axis.

### valueAxis.minorTicks.size `Number` *(default: 3)*

The axis minor tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### valueAxis.minorTicks.visible `Boolean` *(default: false)*

The visibility of the minor ticks.

### valueAxis.minorUnit `Number`

The interval between minor divisions.
It defaults to 1/5th of the majorUnit.

### valueAxis.name `Object` *(default: "primary")*

The unique axis name.

### valueAxis.narrowRange `Boolean` *(default: false)*

Prevents the automatic axis range from snapping to 0.

### valueAxis.pane `String`

The name of the pane that the axis should be rendered in.
The axis will be rendered in the first (default) pane if not set.

### valueAxis.plotBands `Array`

The plot bands of the value axis.

### valueAxis.plotBands.from `Number`

The start position of the plot band in axis units.

### valueAxis.plotBands.to `Number`

The end position of the plot band in axis units.

### valueAxis.plotBands.color `String`

The color of the plot band.

### valueAxis.plotBands.opacity `Number`

The opacity of the plot band.

### valueAxis.reverse `Boolean` *(default: false)*

Reverses the axis direction -
values increase from right to left and from top to bottom.

### valueAxis.title `Object`

The title of the value axis.

### valueAxis.title.background `String`

The background color of the title. Any valid CSS color string will work here, including
hex and rgb.

### valueAxis.title.border `Object`

The border of the title.

### valueAxis.title.border.color `String` *(default: "black")*

The color of the border.

### valueAxis.title.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.title.border.width `Number` *(default: 0)*

The width of the border.

### valueAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

The font style of the title.

### valueAxis.title.margin `Number|Object` *(default: 5)*

The margin of the title.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### valueAxis.title.padding `Number|Object` *(default: 0)*

The padding of the title.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### valueAxis.title.position `String` *(default: "center")*

The position of the title.

#### *"top"*

The axis title is positioned on the top (applicable to vertical axis).

#### *"bottom"*

The axis title is positioned on the bottom (applicable to vertical axis).

#### *"left"*

The axis title is positioned on the left (applicable to horizontal axis).

#### *"right"*

"The axis title is positioned on the right (applicable to horizontal axis).

#### *"center"*

"The axis title is positioned in the center.

### valueAxis.title.rotation `Number` *(default: 0)*

The rotation angle of the title.

### valueAxis.title.text `String`

The text of the title.

### valueAxis.title.visible `Boolean` *(default: true)*

The visibility of the title.

### valueAxis.visible `Boolean` *(default: true)*

The visibility of the axis.

### valueAxis.crosshair `Object`

The crosshair configuration options.

### valueAxis.crosshair.color `String`

The color of the crosshair.

### valueAxis.crosshair.width `Number`

The width of the crosshair.

### valueAxis.crosshair.opacity `Number`

The opacity of the crosshair.

### valueAxis.crosshair.dashType `Number`

The dash type of the crosshair.

### valueAxis.crosshair.visible `Boolean` *(default: false)*

The dash type of the crosshair.

### valueAxis.crosshair.tooltip `Object`

The crosshar tooltip configuration options.

### valueAxis.crosshair.tooltip.background `String`

The background color of the tooltip.

### valueAxis.crosshair.tooltip.border `Object`

The border configuration options.

### valueAxis.crosshair.tooltip.border.color `String` *(default: "black")*

The color of the border.

### valueAxis.crosshair.tooltip.border.width `Number` *(default: 0)*

The width of the border.

### valueAxis.crosshair.tooltip.color `String`

The text color of the tooltip.

### valueAxis.crosshair.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The tooltip font.

### valueAxis.crosshair.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: "C"

### valueAxis.crosshair.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### valueAxis.crosshair.tooltip.template `String|Function`

The tooltip template.
Template variables:

*   **value** - the point value (either a number or an object)

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [{
                 name: "Series 1",
                 data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         valueAxis: {
             crosshair: {
                 visible: true,
                 tooltip: {
                     visible: true,
                     template: "value: #= value #"
                 }
             }
         }
    });

### valueAxis.crosshair.tooltip.visible `Boolean` *(default: false)*

A value indicating if the tooltip should be displayed.

### xAxis `Array`

Scatter charts X-axis configuration options.
Includes **all valueAxis options** in addition to:

### xAxis.color `String`

Color to apply to all axis elements.
Individual color settings for line and labels take priority. Any valid CSS color string will work here, including hex and rgb.

### xAxis.type `String` *(default: "numeric")*

The axis type.

Note: The Chart will automatically switch to a date axis if the series X value
is of type Date. set type explicitly when such behavior is undesired.

### xAxis.axisCrossingValue `Object|Date|Array`

Value at which the Y axis crosses this axis. (Only for object)

Value indices at which the Y axes cross the value axis. (Only for array)

Date at which the Y axis crosses this axis. (Only for date)

**Note:** set a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $("#chart").kendoChart({
         ...,
         xAxis: {
             axisCrossingValue: [0, 1000]
         },
         yAxis: [{ }, { name: "secondary" }],
         ...
    });

### xAxis.baseUnit `String`

The base time interval for the axis labels.
The default baseUnit is determined automatically from the value range. Available options:

* minutes
* hours
* days
* weeks
* months
* years

### xAxis.labels `Object`

Configures the axis labels.

### xAxis.labels.background `String`

The background color of the labels. Any valid CSS color string will work here, including
hex and rgb

### xAxis.labels.border `Object`

The border of the labels.

### xAxis.labels.border.color `String` *(default: "black")*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### xAxis.labels.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### xAxis.labels.border.width `Number` *(default: 0)*

The width of the border.

### xAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### xAxis.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

### xAxis.labels.format `String`

The format of the labels.

#### Example

    $("#chart").kendoChart({
        xAxis: {
           labels: {
               // set the format to currency
               format: "C"
           }
        },
        ...
    });

### xAxis.labels.margin `Number|Object` *(default: 0)*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### xAxis.labels.mirror `Boolean`

Mirrors the axis labels and ticks.
If the labels are normally on the left side of the axis,
mirroring the axis will render them to the right.

### xAxis.labels.padding `Number|Object` *(default: 0)*

The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### xAxis.labels.rotation `Number` *(default: 0)*

The rotation angle of the labels.

### xAxis.labels.skip `Number` *(default: 1)*

Number of labels to skip.
Skips rendering the first n labels.

### xAxis.labels.step `Number` *(default: 1)*

Label rendering step.
Every n-th label is rendered where n is the step

### xAxis.labels.template `String|Function`

The label template.

### xAxis.labels.visible `Boolean` *(default: true)*

The visibility of the labels.

### xAxis.labels.culture `String`

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.
Uses the global culture by default.

### xAxis.labels.dateFormats `Object`

Date format strings

#### *"hours"*

"HH:mm"

#### *"days"*

"M/d"

#### *"weeks"*

"M/d"

#### *"months"*

"MMM 'yy"

#### *"years"*

"yyyy"

The Chart will choose the appropriate format for the current `baseUnit`.
Setting the labels **format** option will override these defaults.

### xAxis.majorUnit `Number`

The interval between major divisions in base units.

### xAxis.max `Object`

The end date of the axis.
This is often used in combination with the **min** configuration option.

### xAxis.min `Object`

The maximum value of the axis.
This is often used in combination with the **max** configuration option.

### xAxis.minorUnit `Number`

The interval between minor divisions in base units.
It defaults to 1/5th of the majorUnit.

### xAxis.line `Object`

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

### xAxis.line.color `String` *(default: "black")*

The color of the line. This will also effect the major and minor ticks, but
not the grid lines.

### xAxis.line.dashType `String` *(default: "solid")*

The dash type of the line.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### xAxis.line.visible `Boolean` *(default: true)*

The visibility of the line.

### xAxis.line.width `Number` *(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### xAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### xAxis.majorGridLines.color `String` *(default: "black")*

The color of the lines.

### xAxis.majorGridLines.visible `Boolean` *(default: true)*

The visibility of the lines.

### xAxis.majorGridLines.width `Number` *(default: 1)*

The width of the lines.

### xAxis.majorTicks `Object`

The major ticks of the axis.

### xAxis.majorTicks.size `Number` *(default: 4)*

The axis major tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### xAxis.majorTicks.visible `Boolean` *(default: true)*

The visibility of the major ticks.

### xAxis.name `Object` *(default: "primary")*

The unique axis name.

### xAxis.narrowRange `Boolean` *(default: false)*

Prevents the automatic axis range from snapping to 0.

### xAxis.pane `String`

The name of the pane that the axis should be rendered in.
The axis will be rendered in the first (default) pane if not set.

### xAxis.plotBands `Array`

The plot bands of the xAxis.

### xAxis.plotBands.from `Number`

The start position of the plot band in axis units.

### xAxis.plotBands.to `Number`

The end position of the plot band in axis units.

### xAxis.plotBands.color `String`

The color of the plot band.

### xAxis.plotBands.opacity `Number`

The opacity of the plot band.

### xAxis.reverse `Boolean` *(default: false)*

Reverses the axis direction -
values increase from right to left and from top to bottom.

### xAxis.title `Object`

The title of the value axis.

### xAxis.title.background `String`

The background color of the title. Any valid CSS color string will work here, including
hex and rgb.

### xAxis.title.border `Object`

The border of the title.

### xAxis.title.border.color `String` *(default: "black")*

The color of the border.

### xAxis.title.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### xAxis.title.border.width `Number` *(default: 0)*

The width of the border.

### xAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### xAxis.title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

The font style of the title.

### xAxis.title.margin `Number|Object` *(default: 5)*

The margin of the title.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### xAxis.title.padding `Number|Object` *(default: 0)*

The padding of the title.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### xAxis.title.position `String` *(default: "center")*

The position of the title.

#### *"top"*

The axis title is positioned on the top (applicable to vertical axis).

#### *"bottom"*

The axis title is positioned on the bottom (applicable to vertical axis).

#### *"left"*

The axis title is positioned on the left (applicable to horizontal axis).

#### *"right"*

"The axis title is positioned on the right (applicable to horizontal axis).

#### *"center"*

"The axis title is positioned in the center.

### xAxis.title.rotation `Number` *(default: 0)*

The rotation angle of the title.

### xAxis.title.text `String`

The text of the title.

### xAxis.title.visible `Boolean` *(default: true)*

The visibility of the title.

### xAxis.visible `Boolean` *(default: true)*

The visibility of the axis.

### xAxis.crosshair `Object`

The crosshair configuration options.

### xAxis.crosshair.color `String`

The color of the crosshair.

### xAxis.crosshair.width `Number`

The width of the crosshair.

### xAxis.crosshair.opacity `Number`

The opacity of the crosshair.

### xAxis.crosshair.dashType `Number`

The dash type of the crosshair.

### xAxis.crosshair.visible `Boolean` *(default: false)*

The dash type of the crosshair.

### xAxis.crosshair.tooltip `Object`

The crosshar tooltip configuration options.

### xAxis.crosshair.tooltip.background `String`

The background color of the tooltip.

### xAxis.crosshair.tooltip.border `Object`

The border configuration options.

### xAxis.crosshair.tooltip.border.color `String` *(default: "black")*

The color of the border.

### xAxis.crosshair.tooltip.border.width `Number` *(default: 0)*

The width of the border.

### xAxis.crosshair.tooltip.color `String`

The text color of the tooltip.

### xAxis.crosshair.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The tooltip font.

### xAxis.crosshair.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: "C"

### xAxis.crosshair.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### xAxis.crosshair.tooltip.template `String|Function`

The tooltip template.
Template variables:

*   **value** - the point value (either a number or an object)

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [{
                 name: "Series 1",
                 data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         xAxis: {
             crosshair: {
                 visible: true,
                 tooltip: {
                     visible: true,
                     template: "value: #= value #"
                 }
             }
         }
    });

### xAxis.crosshair.tooltip.visible `Boolean` *(default: false)*

A value indicating if the tooltip should be displayed.

### yAxis `Array`

Scatter charts Y-axis configuration options.
Includes **all valueAxis options** in addition to:

### yAxis.type `String` *(default: "numeric")*

The axis type.

Note: The Chart will automatically switch to a date axis if the series X value
is of type Date. set type explicitly when such behavior is undesired.

### yAxis.axisCrossingValue `Object|Date|Array`

Value at which the Y axis crosses this axis. (Only for object)

Value indices at which the Y axes cross the value axis. (Only for array)

Date at which the Y axis crosses this axis. (Only for date)

**Note:** set a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $("#chart").kendoChart({
         ...,
         yAxis: {
             axisCrossingValue: [0, 1000]
         },
         xAxis: [{ }, { name: "secondary" }],
         ...
    });

### yAxis.baseUnit `String`

The base time interval for the axis labels.
The default baseUnit is determined automatically from the value range. Available options:

* minutes
* hours
* days
* weeks
* months
* years

### yAxis.color `String`

Color to apply to all axis elements.
Individual color settings for line and labels take priority. Any valid CSS color string will work here, including hex and rgb.

### yAxis.labels `Object`

Configures the axis labels.

### yAxis.labels.background `String`

The background color of the labels. Any valid CSS color string will work here, including
hex and rgb

### yAxis.labels.border `Object`

The border of the labels.

### yAxis.labels.border.color `String` *(default: "black")*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### yAxis.labels.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### yAxis.labels.border.width `Number` *(default: 0)*

The width of the border.

### yAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### yAxis.labels.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The font style of the labels.

### yAxis.labels.format `String`

The format of the labels.

#### Example

    $("#chart").kendoChart({
        yAxis: {
           labels: {
               // set the format to currency
               format: "C"
           }
        },
        ...
    });

### yAxis.labels.margin `Number|Object` *(default: 0)*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### yAxis.labels.mirror `Boolean`

Mirrors the axis labels and ticks.
If the labels are normally on the left side of the axis,
mirroring the axis will render them to the right.

### yAxis.labels.padding `Number|Object` *(default: 0)*

The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### yAxis.labels.rotation `Number` *(default: 0)*

The rotation angle of the labels.

### yAxis.labels.skip `Number` *(default: 1)*

Number of labels to skip.
Skips rendering the first n labels.

### yAxis.labels.step `Number` *(default: 1)*

Label rendering step.
Every n-th label is rendered where n is the step

### yAxis.labels.template `String|Function`

The label template.

### yAxis.labels.visible `Boolean` *(default: true)*

The visibility of the labels.

### yAxis.labels.culture `String`

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.
Uses the global culture by default.

### yAxis.labels.dateFormats `Object`

Date format strings

#### *"hours"*

"HH:mm"

#### *"days"*

"M/d"

#### *"weeks"*

"M/d"

#### *"months"*

"MMM 'yy"

#### *"years"*

"yyyy"

The Chart will choose the appropriate format for the current `baseUnit`.
Setting the labels **format** option will override these defaults.

### yAxis.majorUnit `Number`

The interval between major divisions in base units.

### yAxis.max `Object`

The end date of the axis.
This is often used in combination with the **min** configuration option.

### yAxis.min `Object`

The maximum value of the axis.
This is often used in combination with the **max** configuration option.

### yAxis.minorUnit `Number`

The interval between minor divisions in base units.
It defaults to 1/5th of the majorUnit.

### yAxis.line `Object`

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

### yAxis.line.color `String` *(default: "black")*

The color of the line. This will also effect the major and minor ticks, but
not the grid lines.

### yAxis.line.dashType `String` *(default: "solid")*

The dash type of the line.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### yAxis.line.visible `Boolean` *(default: true)*

The visibility of the line.

### yAxis.line.width `Number` *(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### yAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### yAxis.majorGridLines.color `String` *(default: "black")*

The color of the lines.

### yAxis.majorGridLines.visible `Boolean` *(default: true)*

The visibility of the lines.

### yAxis.majorGridLines.width `Number` *(default: 1)*

The width of the lines.

### yAxis.majorTicks `Object`

The major ticks of the axis.

### yAxis.majorTicks.size `Number` *(default: 4)*

The axis major tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### yAxis.majorTicks.visible `Boolean` *(default: true)*

The visibility of the major ticks.

### yAxis.name `Object` *(default: "primary")*

The unique axis name.

### yAxis.narrowRange `Boolean` *(default: false)*

Prevents the automatic axis range from snapping to 0.

### yAxis.pane `String`

The name of the pane that the axis should be rendered in.
The axis will be rendered in the first (default) pane if not set.

### yAxis.plotBands `Array`

The plot bands of the yAxis.

### yAxis.plotBands.from `Number`

The start position of the plot band in axis units.

### yAxis.plotBands.to `Number`

The end position of the plot band in axis units.

### yAxis.plotBands.color `String`

The color of the plot band.

### yAxis.plotBands.opacity `Number`

The opacity of the plot band.

### yAxis.reverse `Boolean` *(default: false)*

Reverses the axis direction -
values increase from right to left and from top to bottom.

### yAxis.title `Object`

The title of the value axis.

### yAxis.title.background `String`

The background color of the title. Any valid CSS color string will work here, including
hex and rgb.

### yAxis.title.border `Object`

The border of the title.

### yAxis.title.border.color `String` *(default: "black")*

The color of the border.

### yAxis.title.border.dashType `String` *(default: "solid")*

The dash type of the border.

#### *"solid"*

Specifies a solid line.

#### *"dot"*

Specifies a line consisting of dots.

#### *"dash"*

Specifies a line consisting of dashes.

#### *"longDash"*

Specifies a line consisting of a repeating pattern of long-dash.

#### *"dashDot"*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *"longDashDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *"longDashDotDot"*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### yAxis.title.border.width `Number` *(default: 0)*

The width of the border.

### yAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### yAxis.title.font `String` *(default: "16px Arial,Helvetica,sans-serif")*

The font style of the title.

### yAxis.title.margin `Number|Object` *(default: 5)*

The margin of the title.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### yAxis.title.padding `Number|Object` *(default: 0)*

The padding of the title.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### yAxis.title.position `String` *(default: "center")*

The position of the title.

#### *"top"*

The axis title is positioned on the top (applicable to vertical axis).

#### *"bottom"*

The axis title is positioned on the bottom (applicable to vertical axis).

#### *"left"*

The axis title is positioned on the left (applicable to horizontal axis).

#### *"right"*

"The axis title is positioned on the right (applicable to horizontal axis).

#### *"center"*

"The axis title is positioned in the center.

### yAxis.title.rotation `Number` *(default: 0)*

The rotation angle of the title.

### yAxis.title.text `String`

The text of the title.

### yAxis.title.visible `Boolean` *(default: true)*

The visibility of the title.

### yAxis.visible `Boolean` *(default: true)*

The visibility of the axis.

### yAxis.crosshair `Object`

The crosshair configuration options.

### yAxis.crosshair.color `String`

The color of the crosshair.

### yAxis.crosshair.width `Number`

The width of the crosshair.

### yAxis.crosshair.opacity `Number`

The opacity of the crosshair.

### yAxis.crosshair.dashType `Number`

The dash type of the crosshair.

### yAxis.crosshair.visible `Boolean` *(default: false)*

The dash type of the crosshair.

### yAxis.crosshair.tooltip `Object`

The crosshar tooltip configuration options.

### yAxis.crosshair.tooltip.background `String`

The background color of the tooltip.

### yAxis.crosshair.tooltip.border `Object`

The border configuration options.

### yAxis.crosshair.tooltip.border.color `String` *(default: "black")*

The color of the border.

### yAxis.crosshair.tooltip.border.width `Number` *(default: 0)*

The width of the border.

### yAxis.crosshair.tooltip.color `String`

The text color of the tooltip.

### yAxis.crosshair.tooltip.font `String` *(default: "12px Arial,Helvetica,sans-serif")*

The tooltip font.

### yAxis.crosshair.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: "C"

### yAxis.crosshair.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### yAxis.crosshair.tooltip.template `String|Function`

The tooltip template.
Template variables:

*   **value** - the point value (either a number or an object)

#### Example

    // chart intialization
    $("#chart").kendoChart({
         title: {
             text: "My Chart Title"
         },
         series: [{
                 name: "Series 1",
                 data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         yAxis: {
             crosshair: {
                 visible: true,
                 tooltip: {
                     visible: true,
                     template: "value: #= value #"
                 }
             }
         }
    });

### yAxis.crosshair.tooltip.visible `Boolean` *(default: false)*

A value indicating if the tooltip should be displayed.

## Methods

### destroy

Prepares the Chart for safe removal from the DOM.

Detaches event handlers and removes data entries in order to avoid memory leaks.

#### Example

    kendo.destroy($("#chart"));
    $("#chart").remove();

### refresh

Reloads the data and repaints the chart.

#### Example

    var chart = $("#chart").data("kendoChart");

    // refreshes the chart
    chart.refresh();

### redraw

Repaints the chart using currently loaded data.

### setDataSource

Sets the dataSource of an existing Chart and rebinds it.

#### Parameters

##### dataSource `kendo.data.DataSource`

#### Example

    var dataSource = new kendo.data.DataSource({
        //dataSource configuration
    });

    $("#chart").data("kendoChart").setDataSource(dataSource);

### svg

Returns the SVG representation of the current chart.
The returned string is a self-contained SVG document
that can be used as is or converted to other formats
using tools like [Inkscape](http://inkscape.org/) and
[ImageMagick](http://www.imagemagick.org/).
Both programs provide command-line interface
suitable for backend processing.

#### Returns

`String` the SVG representation of the chart.

#### Example

    var chart = $("#chart").data("kendoChart");
    var svgText = chart.svg();

## Events

### axisLabelClick

Fires when an axis label is clicked.

#### Example

    function onAxisLabelClick(e) {
        alert("Clicked " + e.axis.type + " axis label with value: " + e.value);
    }

#### Event Data

##### e.axis `Object`

The axis that the label belongs to.

##### e.value `Object`

The label value or category name.

##### e.text `Object`

The label text.

##### e.index `Object`

The label sequential index or category index.

##### e.dataItem `Object`

The original data item used to generate the label.
** Applicable only for data bound category axis. **

##### e.element `Object`

The DOM element of the label.

### dataBound

Fires when the chart has received data from the data source
and is about to render it.

#### Example

    function onDataBound(e) {
        // Series data is now available
    }

### dragStart

Fires when the user has used the mouse or a swipe gesture to drag the chart.

The drag operation can be aborted by calling `e.preventDefault()`.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the initial range (min and max values) of *named* axes.
The axis name is used as a key.

##### e.originalEvent `Object`

The original user event that triggered the drag action.

### drag

Fires as long as the user is dragging the chart using the mouse or swipe gestures.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the suggested current range (min and max values) of *named* axes.
The axis name is used as a key.

Note that the axis ranges are not updated automatically. You need to call
set_options with either the suggested or custom min/max values for them to take effect.

#### Example

    $("#chart").kendoChart({
        valueAxis: {
            name: "price"
        },
        drag: onDrag
        ...
    }

    function onDrag(e) {
        var minPrice = e.axisRanges.price.min;
    }

##### e.originalEvent `Object`

The original user event that triggered the drag action.

### dragEnd

Fires when the user stops dragging the chart.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the final range (min and max values) of *named* axes.
The axis name is used as a key.

##### e.originalEvent `Object`

The original user event that triggered the drag action.

### plotAreaClick

Fires when plot area is clicked.

#### Example

    function onPlotAreaClick(e) {
        alert("Clicked X axis value: " + e.x);
    }

#### Event Data

##### e.value `Object`

The data point value.
Available only for categorical charts (bar, line, area and similar).

##### e.category `Object`

The data point category.
Available only for categorical charts (bar, line, area and similar).

##### e.element `Object`

The DOM element of the plot area.

##### e.x `Object`

The X axis value or array of values for multi-axis charts.

##### e.y `Object`

The X axis value or array of values for multi-axis charts.

### seriesClick

Fires when chart series are clicked.

#### Example

    function onSeriesClick(e) {
        alert("Clicked value: " + e.value);
    }

#### Event Data

##### e.value `Object`

The data point value.

##### e.category `Object`

The data point category

##### e.series `Object`

The clicked series.

##### e.series.type `String`

The series type

##### e.series.name `String`

The series name

##### e.series.data `Array`

The series data points

##### e.dataItem `Object`

The original data item (when binding to dataSource).

##### e.element `Object`

The DOM element of the data point.

### seriesHover

Fires when chart series are hovered.

#### Example

    function onSeriesHover(e) {
        alert("Hovered value: " + e.value);
    }

#### Event Data

##### e.value `Object`

The data point value.

##### e.category `Object`

The data point category

##### e.series `Object`

The clicked series.

##### e.series.type `String`

The series type

##### e.series.name `String`

The series name

##### e.series.data `Array`

The series data points

##### e.dataItem `Object`

The original data item (when binding to dataSource).

##### e.element `Object`

The DOM element of the data point.

### zoomStart

Fires when the user has used the mousewheel to zoom the chart.

The zoom operation can be aborted by calling `e.preventDefault()`.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the initial range (min and max values) of *named* axes.
The axis name is used as a key.

##### e.originalEvent `Object`

The original user event that triggered the zoom action.

### zoom

Fires as long as the user is zooming the chart using the mousewheel.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the suggested current range (min and max values) of *named* axes.
The axis name is used as a key.

Note that the axis ranges are not updated automatically. You need to call
set_options with either the suggested or custom min/max values for them to take effect.

#### Example

    $("#chart").kendoChart({
        valueAxis: {
            name: "price"
        },
        zoom: onZoom
        ...
    }

    function onZoom(e) {
        var minPrice = e.axisRanges.price.min;
    }

##### e.delta `Number`

A number that indicates the zoom amount and direction.

A negative delta indicates "zoom in", while a positive "zoom out".

##### e.originalEvent `Object`

The original user event that triggered the zoom action.

This event can be used to prevent the default mousewheel action (scroll).

#### Example

    function onZoom(e) {
        // Prevent window scroll
        e.originalEvent.preventDefault();
    }

### zoomEnd

Fires when the user stops zooming the chart.

#### Event Data

##### e.axisRanges `Object`

A hastable containing the final range (min and max values) of *named* axes.
The axis name is used as a key.

##### e.originalEvent `Object`

The original user event that triggered the zoom action.

### selectStart

Fires when the user starts modifying the axis selection.

The range units are:

#### *Generic axis*
Category index (0-based)

#### *Date axis*
Date instance

#### Event Data

##### e.from `Object`

The lower boundary of the selected range.

##### e.to `Object`

The upper boundary of the selected range.

*Note*: The last selected category is at index [to - 1] unless
the axis is justified. In this case it is at index [to].

### select

Fires when the user modifies the selection.

The range units are:

#### *Generic axis*
Category index (0-based)

#### *Date axis*
Date instance

#### Event Data

##### e.from `Object`

The lower boundary of the selected range.

##### e.to `Object`

The upper boundary of the selected range.

*Note*: The last selected category is at index [to - 1] unless
the axis is justified. In this case it is at index [to].

#### Example

    $("#chart").kendoChart({
        select: onSelect
        ...
    }

    function onSelect(e) {
        ...
    }

### selectEnd

Fires when the user completes modifying the selection.

#### *Generic axis*
Category index (0-based)

#### *Date axis*
Date instance

#### Event Data

##### e.from `Object`

The lower boundary of the selected range.

##### e.to `Object`

The upper boundary of the selected range.

*Note*: The last selected category is at index [to - 1] unless
the axis is justified. In this case it is at index [to].

