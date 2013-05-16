---
title: kendo.dataviz.ui.Chart
slug: dataviz-kendo.dataviz.ui.chart
tags: api,dataviz
publish: true
---

# kendo.dataviz.ui.Chart

## Configuration

### axisDefaults `Object`

Default options for all chart axes.

### categoryAxis `Object`

The category axis configuration options.

### categoryAxis.axisCrossingValue `Object | Date | Array`

Category index at which the first value axis crosses this axis. (Only for object)

Category indicies at which the value axes cross the category axis. (Only for array)

**Note:&amp;nbsp;** Specify an index greater than or equal to the number
of categories to denote the far end of the axis.

#### Example
    &lt;p&gt;
    $(&quot;#chart&quot;).kendoChart({
         categoryAxis: {
             categories: [&quot;A&quot;, &quot;B&quot;],
             axisCrossingValue: [0, 100]
         },
         valueAxis: [{ }, { name: &quot;secondary&quot; }]
         ...
    })
    &lt;/p&gt;

### categoryAxis.categories `Array`

Array of category names.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        categoryAxis: {
            categories: [ 2005, 2006, 2007, 2008, 2009 ]
        },
        ...
    });

### categoryAxis.color `String`

Color to apply to all axis elements. Any valid CSS color string will work here, including hex and rgb.
Individual color settings for line and labels take priority.

### categoryAxis.field `String`

The data field containing the category name.

#### Example

    // assuming the following data...
    var data = [ { sales: 200, year: 2005 }, { sales: 300, year: 2006 }, { sales: 400, year: 2007 }];
    // specify the &quot;year&quot; as the field for the category axis
    $(&quot;#chart&quot;).kendoChart({
        dataSource: {
            data: data
        },
        categoryAxis: {
            field: &quot;year&quot;
        },
        ...
    });

### categoryAxis.justified `Boolean`*(default: false)*

Positions categories and series points on major ticks. This removes the empty space before and after the series.

This option is ignored if either bar, column, ohlc or candlestick series are plotted on the axis.

### categoryAxis.labels `Object`

Configures the axis labels.

### categoryAxis.labels.background `String`

The background color of the labels. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.labels.border `Object`

The border of the labels.

### categoryAxis.labels.border.color `String`*(default: &quot;black&quot;)*

The color of the border. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.labels.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.labels.border.width `Number`*(default: 0)*

The width of the border.

### categoryAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### categoryAxis.labels.format `String`

The format of the labels.

### categoryAxis.labels.margin `Number | Object`*(default: 0)*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### categoryAxis.labels.mirror `Boolean`

Mirrors the axis labels and ticks.
If the labels are normally on the left side of the axis,
mirroring the axis will render them to the right.

### categoryAxis.labels.padding `Number | Object`*(default: 0)*

The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### categoryAxis.labels.rotation `Number`*(default: 0)*

The rotation angle of the labels.

### categoryAxis.labels.skip `Number`*(default: 1)*

Number of labels to skip.
Skips rendering the first n labels.

### categoryAxis.labels.step `Number`*(default: 1)*

Label rendering step.
Every n-th label is rendered where n is the step

### categoryAxis.labels.template `String | Function`

The label template.
Template variables:

*   **value** - the value

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [{
             name: &quot;Series 1&quot;,
             data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003],
             labels: {
                 // labels template
                 template: &quot;Year: #= value #&quot;
             }
         }
    });

### categoryAxis.labels.visible `Boolean`*(default: true)*

The visibility of the labels.

### categoryAxis.line `Object`

Configures the axis line. This will also effect major and minor ticks, but not gridlines.

### categoryAxis.line.color `String`*(default: &quot;black&quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and rgb.

**Note:** This will also effect the major and minor ticks, but not the grid lines.

### categoryAxis.line.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the line.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.line.visible `Boolean`*(default: true)*

The visibility of the lines.

### categoryAxis.line.width `Number`*(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### categoryAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### categoryAxis.majorGridLines.color `String`*(default: &quot;black&quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.majorGridLines.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the grid lines.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.majorGridLines.visible `Boolean`*(default: false)*

The visibility of the lines.

### categoryAxis.majorGridLines.width `Number`*(default: 1)*

The width of the lines.

### categoryAxis.majorTicks `Object`

The major ticks of the axis.

### categoryAxis.majorTicks.size `Number`*(default: 4)*

The axis major tick size. This is the length of the line in pixels that is drawn to indicate the tick
on the chart.

### categoryAxis.majorTicks.visible `Boolean`*(default: true)*

The visibility of the major ticks.

### categoryAxis.minorGridLines `Object`

Configures the minor grid lines.  These are the lines that are an extension of the minor ticks through
the body of the chart.

Note that minor grid lines are not visible by default, therefore none of these settings will take effect with the minor grid lines visibility being set to **true**.

### categoryAxis.minorGridLines.color `String`*(default: &quot;black&quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and
rgb.

Note that this setting has no effect if the visibility of the minor
grid lines is not set to **true**.

### categoryAxis.minorGridLines.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the grid lines.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.minorGridLines.visible `Boolean`*(default: false)*

The visibility of the lines.

### categoryAxis.minorGridLines.width `Number`*(default: 1&gt; The width of the lines. &lt;p)*

The width of the lines.

Note that this setting has no effect if the visibility of the minor
grid lines is not set to **true**.

### categoryAxis.minorTicks `Object`

The minor ticks of the axis.

### categoryAxis.minorTicks.size `Number`*(default: 3)*

The axis minor tick size. This is the length of the line in pixels that is drawn to indicate the tick
on the chart.

### categoryAxis.minorTicks.visible `Boolean`*(default: false)*

The visibility of the minor ticks.

### categoryAxis.name `String`*(default: primary)*

The unique axis name.

### categoryAxis.plotBands `Array`

The plot bands of category axis.
The plot band fields:

#### *&quot;from&quot;*

The start position of the plot band.

#### *&quot;to&quot;*

The end position of the plot band.

#### *&quot;color&quot;*

The color of the plot band.

### categoryAxis.reverse `Boolean`*(default: false)*

Reverses the axis direction -
categories are listed from right to left and from top to bottom.

### categoryAxis.title `Object`

The title of the category axis.

### categoryAxis.title.background `String`

The background color of the title. Any valid CSS color string will work here, including
hex and rgb.

### categoryAxis.title.border `Object`

The border of the title.

### categoryAxis.title.border.color `String`*(default: &quot;black&quot;)*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### categoryAxis.title.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.title.border.width `Number`*(default: 0)*

The width of the border.

### categoryAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.title.font `String`*(default: &quot;16px Arial,Helvetica,sans-serif&quot;)*

The font style of the title.

### categoryAxis.title.margin `Number|Object`*(default: 5)*

The margin of the title.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        categoryAxis: {
            title: {
                // sets the top, right, bottom and left margin to 3px.
                margin: 3
            }
        },
        ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
        categoryAxis: {
            title: {
                // sets the top and left margin to 1px
                // margin right and bottom are with 0px (by default)
                margin: { top: 1, left: 1 }
            }
        },
        ...
    });

### categoryAxis.title.position `String`*(default: &quot;center&quot;)*

The position of the title.

#### *&quot;top&quot;*

The axis title is positioned on the top (applicable to vertical axis)

#### *&quot;bottom&quot;*

The axis title is positioned on the bottom (applicable to vertical axis)

#### *&quot;left&quot;*

The axis title is positioned on the left (applicable to horizontal axis)

#### *&quot;right&quot;*

The axis title is positioned on the right (applicable to horizontal axis)

#### *&quot;center&quot;*

The axis title is positioned in the center

### categoryAxis.title.rotation `Number`*(default: 0)*

The rotation angle of the title.

### categoryAxis.title.text `String`

The text of the title.

### categoryAxis.title.visible `Boolean`*(default: true)*

The visibility of the title.

### categoryAxis.type `String`*(default: &quot;category&quot;)*

The axis type.

#### *&quot;category&quot;*

Discrete category axis.

#### *&quot;date&quot;*

Specialized axis for displaying chronological data.

### categoryAxis.autoBaseUnitSteps `Object`

Specifies the discrete **baseUnitStep** values when
either **baseUnit** is set to &quot;fit&quot; or **baseUnitStep** is set to &quot;auto&quot;.

The default configuration is as follows:
* `minutes: [1, 2, 5, 15, 30]`
* `hours: [1, 2, 3, 6, 12]`
* `days: [1, 2, 3]`
* `weeks: [1, 2]`
* `months: [1, 2, 3, 6]`
* `years: [1, 2, 3, 5, 10, 25, 50]`

Each setting can be overriden individually.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        categoryAxis: {
            categories: [
                new Date(&quot;2012/02/01 00:00:00&quot;),
                new Date(&quot;2012/02/02 00:00:00&quot;),
                new Date(&quot;2012/02/20 00:00:00&quot;)
            ],
            baseUnitStep: &quot;auto&quot;,
            autoBaseUnitSteps: {
                days: [3]
            }
        },
        ...
    });

### categoryAxis.baseUnit `String`

The base time interval for the axis.
The default baseUnit is determined automatically from the minimum difference
between subsequent categories. Available options:

* minutes
* hours
* days
* weeks
* months
* years
* **fit**

Setting **baseUnit** to &quot;fit&quot; will set such base unit and **baseUnitStep**
that the total number of categories does not exceed **maxDateGroups**.

Series data is aggregated for the specified base unit by using the
**series.aggregate** function.

### categoryAxis.baseUnitStep `Object`*(default: 1)*

Sets the step (interval) between categories in base units.
Specifiying &quot;auto&quot; will set the step to such value that the total number of categories does not exceed **maxDateGroups**.

This option is ignored if **baseUnit** is set to &quot;fit&quot;.

### categoryAxis.labels `Object`

Label settings specific to the date axis.

### categoryAxis.labels.culture `String`*(default: global culture)*

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.

### categoryAxis.labels.dateFormats `Object`

Date format strings

#### *&quot;hours&quot;*

&quot;HH:mm&quot;

#### *&quot;days&quot;*

&quot;M/d&quot;

#### *&quot;weeks&quot;*

&quot;M/d&quot;

#### *&quot;months&quot;*

&quot;MMM &#39;yy&quot;

#### *&quot;years&quot;*

&quot;yyyy&quot;

The Chart will choose the appropriate format for the current `baseUnit`.
Setting the labels **format** option will override these defaults.

### categoryAxis.max `Object`

The last date displayed on the axis.
By default, the minimum date is the same as the last category.
This is often used in combination with the **min** and **roundToBaseUnit** configuration options to
set up a fixed date range.

### categoryAxis.min `Object`

The first date displayed on the axis.
By default, the minimum date is the same as the first category.
This is often used in combination with the **max** and **roundToBaseUnit** configuration options to
set up a fixed date range.

### categoryAxis.roundToBaseUnit `Boolean`*(default: true)*

By default, the first and last dates will be rounded off to the nearest base unit.
Specifying **false** for this option will disable this behavior.

This option is most useful in combination with explicit **min** and **max** dates.

It will be ignored if either bar, column, ohlc or candlestick series are plotted on the axis.

### categoryAxis.weekStartDay `Number`*(default: kendo.days.Sunday)*

Specifies the week start day when **baseUnit** is set to &quot;weeks&quot;.
Use the *kendo.days* constants to specify the day by name.

* kendo.days.Sunday (0)
* kendo.days.Monday (1)
* kendo.days.Tuesday (2)
* kendo.days.Wednesday (3)
* kendo.days.Thursday (4)
* kendo.days.Friday (5)
* kendo.days.Saturday (6)


### categoryAxis.maxDateGroups `Number`*(default: 10)*

Specifies the maximum number of groups (categories) to produce when
either **baseUnit** is set to &quot;fit&quot; or **baseUnitStep** is set to &quot;auto&quot;.

This option is ignored in all other cases.

### categoryAxis.visible `Boolean`*(default: true)*

The visibility of the axis.

### chartArea `Object`

The chart area configuration options.
This is the entire visible area of the chart.

### chartArea.background `String`*(default: &quot;white&quot;)*

The background color of the chart area.

### chartArea.opacity `Number`*(default: 1)*

The background opacity of the chart area.

### chartArea.border `Object`

The border of the chart area.

### chartArea.border.color `String`*(default: &quot;black&quot;)*

The color of the border.

### chartArea.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### chartArea.border.width `Number`*(default: 0)*

The width of the border.

### chartArea.height `Number`*(default: 400)*

The height of the chart area.

### chartArea.margin `Number|Object`*(default: 5)*

The margin of the chart area.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 5px (by default)
    margin: { top: 1, left: 1 }

### chartArea.width `Number`*(default: 600)*

 The width of the chart area.

### dataSource `Object`

DataSource configuration or instance.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        dataSource: {
            transport: {
                 read: &quot;spain-electricity.json&quot;
            }
        },
        series: [{
            field: &quot;value&quot;
        }],
        categoryAxis: {
            field: &quot;year&quot;
        }
    });

    // Alternative configuration
    var dataSource = new kendo.data.DataSource({
        transport: {
             read: &quot;spain-electricity.json&quot;
        }
    });

    $(&quot;#chart&quot;).kendoChart({
        dataSource: dataSource,
        series: [{
            field: &quot;value&quot;
        }],
        categoryAxis: {
            field: &quot;year&quot;
        }
    });

### legend `Object`

The chart legend configuration options.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // set the background color to a dark blue
            background: &quot;#336699&quot;,
            labels: {
                // set the font to a size of 14px
                font: &quot;14px Arial,Helvetica,sans-serif&quot;,
                // set the color to red
                color: &quot;red&quot;
            },
            // move the legend to the left
            position: &quot;left&quot;,
            // move the legend a bit closer to the chart by setting the x offset to 20
            offsetX: 20,
            // move the legend up to the top by setting the y offset to -100
            offsetY: -100,
        }
    });

### legend.background `String`*(default: &quot;white&quot;)*

 The background color of the legend. Any valid CSS color string will work here, including hex and rgb.

### legend.border `Object`

The border of the legend.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            border: {
                // set the border width to 2 pixels
                width: 2,
                // set the color to grey
                color: &quot;grey&quot;,
                // set the dash type to solid. this is the default so we could leave this line out.
                dashType: &quot;solid&quot;
            }
        },
        ...
    });

### legend.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### legend.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

#### Example



### legend.border.width `Number`*(default: 0)*

 The width of the border.

### legend.labels `Object`

Configures the legend labels.

### legend.labels.color `String`*(default: &quot;black&quot;)*

The color of the labels.
Any valid CSS color string will work here, including hex and rgb.

### legend.labels.font `String`*(default: 12px Arial,Helvetica,sans-serif)*

The font style of the labels.

### legend.labels.template `String`

The template of the labels.
Template variables:
*   **text** - the text the legend item.
*   **series** - the data series.
*   **value** - the point value. (only for donut and pie charts)
*   **percentage** - the point value represented as a percentage value. (only for donut and pie charts)
*   **dataItem** - the original data item used to construct the point. (only for donut and pie charts)


### legend.margin `Number | Object`*(default: 10)*

 The margin of the legend.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // sets the top, right, bottom and left margin to 3px.
            margin: 3
        },
        ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // sets the top and left margin to 1px
            // margin right and bottom are with 10px (by default)
            margin: { top: 1, left: 1 }
        },
        ...
    });

### legend.offsetX `Number`*(default: 0)*

 The X offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels to the right of it&#39;s initial position.  A negative value will move the legend
to the left of the current position.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // move the legend to the left side of the chart
            offsetX: 20
        },
        ...
    });

### legend.offsetY `Number`*(default: 0)*

 The Y offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels down from it&#39;s initial position.  A negative value will move the legend
upwards from the current position.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // move the legend up 100 pixels
            offsetY: -100
        },
        ...
    });

### legend.padding `Number | Object`*(default: 5)*

 The padding of the legend.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // sets the top, right, bottom and left padding to 3px.
            padding: 3
        },
        ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
        legend: {
           // sets the top and left padding to 1px
           // padding right and bottom are with 5px (by default)
           padding: { top: 1, left: 1 }
        },
        ...
    });

### legend.position `String`*(default: right)*

 The positions of the legend.


#### *&quot;top&quot;*

The legend is positioned on the top.

#### *&quot;bottom&quot;*

The legend is positioned on the bottom.

#### *&quot;left&quot;*

The legend is positioned on the left.

#### *&quot;right&quot;*

The legend is positioned on the right.

#### *&quot;custom&quot;*

The legend is positioned using OffsetX and OffsetY.

### legend.visible `Boolean`*(default: true)*

 The visibility of the legend.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        legend: {
            // hide the legend
            visible: false
        },
        ...
    });

### plotArea `Object`

The plot area configuration options. This is the area containing the plotted series.

### plotArea.background `String`*(default: &quot;white&quot;)*

 The background color of the plot area.

### plotArea.opacity `Number`*(default: 1)*

 The background opacity of the plot area.

### plotArea.border `Object`

The border of the plot area.

### plotArea.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### plotArea.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### plotArea.border.width `Number`*(default: 0)*

 The width of the border.

### plotArea.margin `Number|Object`*(default: 5)*

 The margin of the plot area.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 5px (by default)
    margin: { top: 1, left: 1 }

### series `Array`

Array of series definitions.

The series type is determined by the value of the type field.
If a type value is missing, the type is assumed to be the one specified in seriesDefaults.

Each series type has a different set of options.

### series.type `String`

The type of the series.

### series.type=&quot;area&quot; `Object`

Available options for area series:

### series.type=&quot;area&quot;.data `Array`

Array of data points.

### series.type=&quot;area&quot;.field `String`

The data field containing the series value.

### series.type=&quot;area&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;area&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;area&quot;.aggregate `String`*(default: &quot;max&quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;area&quot;.color `String`

The series base color.

### series.type=&quot;area&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;area&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;area&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;area&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;area&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;area&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;area&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;area&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;area&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;area&quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&quot;area&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;area&quot;.labels.position `String`*(default: &quot;above&quot;)*

Defines the position of the area labels.


#### *&quot;above&quot;*

The label is positioned at the top of the area chart marker.

#### *&quot;right&quot;*

The label is positioned at the right of the area chart marker.

#### *&quot;below&quot;*

The label is positioned at the bottom of the area chart marker.

#### *&quot;left&quot;*

The label is positioned at the left of the area chart marker.

### series.type=&quot;area&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;area&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &quot;#= value #%&quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;area&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;area&quot;.line `String | Object`

The line of the area chart.

### series.type=&quot;area&quot;.line.color `String`

The line color of the area chart.

### series.type=&quot;area&quot;.line.opacity `Number`*(default: 1)*

 The line opacity of the area chart.

### series.type=&quot;area&quot;.line.width `String`*(default: 4)*

 The line width of the area chart.

### series.type=&quot;area&quot;.markers `Object`

Configures the area markers.

### series.type=&quot;area&quot;.markers.background `String`

The background color of the current series markers.

### series.type=&quot;area&quot;.markers.border `Object`

The border of the markers.

### series.type=&quot;area&quot;.markers.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;area&quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;area&quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&quot;area&quot;.markers.type `String`*(default: &quot;circle&quot;)*

Configures the markers shape type.


#### *&quot;square&quot;*

The marker shape is square.

#### *&quot;triangle&quot;*

The marker shape is triangle.

#### *&quot;circle&quot;*

The marker shape is circle.

### series.type=&quot;area&quot;.markers.visible `Boolean`*(default: false)*

 The markers visibility.

### series.type=&quot;area&quot;.missingValues `String`*(default: &quot;gap&quot;)*

Configures the behavior for handling missing values in area series.


#### *&quot;interpolate&quot;*

The value is interpolated from neighboring points.

#### *&quot;zero&quot;*

The value is assumed to be zero.

#### *&quot;gap&quot;*

The line stops before the missing point and continues after it.

### series.type=&quot;area&quot;.name `String`

The series name.

### series.type=&quot;area&quot;.opacity `Number`*(default: 0.4)*

 The series opacity.

### series.type=&quot;area&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;area&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;area&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;area&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;area&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;area&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;area&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;area&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;area&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;area&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;area&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;area&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value #&quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;area&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;bar&quot; `Object`

Available options for bar series:

### series.type=&quot;bar&quot;.data `Array`

Array of data points.

### series.type=&quot;bar&quot;.field `String`

The data field containing the series value.

### series.type=&quot;bar&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;bar&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;bar&quot;.aggregate `String`*(default: &quot;max&quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;bar&quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&quot;bar&quot;.border `Object`

The border of the series.

### series.type=&quot;bar&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;bar&quot;.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;bar&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;bar&quot;.color `String`

The series base color.

### series.type=&quot;bar&quot;.colorField `String`

The data field containing the bar color.

### series.type=&quot;bar&quot;.gap `Number`*(default: 1.5)*

 The distance between category clusters.

### series.type=&quot;bar&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;bar&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;bar&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;bar&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;bar&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;bar&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;bar&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;bar&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;bar&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;bar&quot;.labels.margin `Number|Object`*(default: 2)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&quot;bar&quot;.labels.padding `Number|Object`*(default: 2)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;bar&quot;.labels.position `String`*(default: &quot;outsideEnd&quot;)*

Defines the position of the bar labels.


#### *&quot;center&quot;*

The label is positioned at the bar center.

#### *&quot;insideEnd&quot;*

The label is positioned inside, near the end of the bar.

#### *&quot;insideBase&quot;*

The label is positioned inside, near the base of the bar.

#### *&quot;outsideEnd&quot;*

The label is positioned outside, near the end of the bar.
             Not applicable for stacked bar series.

### series.type=&quot;bar&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;bar&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &quot;#= value #%&quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;bar&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;bar&quot;.name `String`

The series name.

### series.type=&quot;bar&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;bar&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;bar&quot;.overlay.gradient `String`*(default: &quot;glass&quot;)*

 The gradient name.


#### *&quot;glass&quot;*

The bars have glass effect overlay.

#### *&quot;none&quot;*

The bars have no effect overlay.

### series.type=&quot;bar&quot;.spacing `Number`*(default: 0.4)*

 Space between bars.

### series.type=&quot;bar&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;bar&quot;.stack `String`

Indicates that the series should be stacked in a group with the specified name.

### series.type=&quot;bar&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;bar&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;bar&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;bar&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;bar&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;bar&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;bar&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;bar&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;bar&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;bar&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;bar&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                 template: &quot;#= category # - #= value #&quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;bar&quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&quot;column&quot; `Object`

Available options for column series:

### series.type=&quot;column&quot;.data `Array`

Array of data points.

### series.type=&quot;column&quot;.field `String`

The data field containing the series value.

### series.type=&quot;column&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;column&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;column&quot;.aggregate `String`*(default: &quot;max&quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;column&quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&quot;column&quot;.border `Object`

The border of the series.

### series.type=&quot;column&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;column&quot;.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;column&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;column&quot;.color `String`

The series base color.

### series.type=&quot;column&quot;.colorField `String`

The data field containing the column color.

### series.type=&quot;column&quot;.gap `Number`*(default: 1.5)*

 The distance between category clusters.

### series.type=&quot;column&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;column&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;column&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;column&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;column&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;column&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;column&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;column&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;column&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;column&quot;.labels.margin `Number|Object`*(default: 2)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&quot;column&quot;.labels.padding `Number|Object`*(default: 2)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;column&quot;.labels.position `String`*(default: &quot;outsideEnd&quot;)*

Defines the position of the column labels.


#### *&quot;center&quot;*

The label is positioned at the column center.

#### *&quot;insideEnd&quot;*

The label is positioned inside, near the end of the column.

#### *&quot;insideBase&quot;*

The label is positioned inside, near the base of the column.

#### *&quot;outsideEnd&quot;*

The label is positioned outside, near the end of the column.
             Not applicable for stacked column series.

### series.type=&quot;column&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;column&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &quot;#= value #%&quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;column&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;column&quot;.name `String`

The series name.

### series.type=&quot;column&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;column&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;column&quot;.overlay.gradient `String`*(default: &quot;glass&quot;)*

 The gradient name.


#### *&quot;glass&quot;*

The columns have glass effect overlay.

#### *&quot;none&quot;*

The columns have no effect overlay.

### series.type=&quot;column&quot;.spacing `Number`*(default: 0.4)*

 Space between columns.

### series.type=&quot;column&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;column&quot;.stack `String`

Indicates that the series should be stacked in a group with the specified name.

### series.type=&quot;column&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;column&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;column&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;column&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;column&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;column&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;column&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;column&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;column&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;column&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;column&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                 template: &quot;#= category # - #= value #&quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;column&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;bubble&quot; `Object`

Available options for bubble series:

### series.type=&quot;bubble&quot;.data `Array`

Array of data points.

### series.type=&quot;bubble&quot;.field `String`

The data field containing the series value.

### series.type=&quot;bubble&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;bubble&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;bubble&quot;.border `Object`

The border of the bubble.

### series.type=&quot;bubble&quot;.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;bubble&quot;.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;bubble&quot;.categoryField `String`

The data field containing the bubble category name.

### series.type=&quot;bubble&quot;.color `String`

The series base color.

### series.type=&quot;bubble&quot;.colorField `String`

The data field containing the bubble color.

### series.type=&quot;bubble&quot;.data `Array`

Array of data items (optional).
The bubble chart can be bound to an array of arrays with three numbers (X, Y and Size).


#### Example

    // ...
     series:[{
         type: &quot;bubble&quot;,
         data:[[1, 1, 1], [1, 2, 2]],
         name: &quot;Points&quot;
     }]
     // ...

### series.type=&quot;bubble&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;bubble&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;bubble&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;bubble&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;bubble&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;bubble&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;bubble&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;bubble&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;bubble&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;bubble&quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&quot;bubble&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;bubble&quot;.labels.position `String`*(default: &quot;above&quot;)*

Defines the position of the bubble labels.


#### *&quot;above&quot;*

The label is positioned at the top of the bubble chart marker.

#### *&quot;right&quot;*

The label is positioned at the right of the bubble chart marker.

#### *&quot;below&quot;*

The label is positioned at the bottom of the bubble chart marker.

#### *&quot;left&quot;*

The label is positioned at the left of the bubble chart marker.

### series.type=&quot;bubble&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **value.size** - the size value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;bubble&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1, 1], [1, 2, 2], [1, 3, 3]],
                 labels: {
                     // label template
                     template: &quot;#= value.x # - #= value.y # - #= value.size #&quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&quot;bubble&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;bubble&quot;.maxSize `Number`*(default: 100)*

 The max size of the bubble.

### series.type=&quot;bubble&quot;.minSize `Number`*(default: 5)*

 The min size of the bubble.

### series.type=&quot;bubble&quot;.name `String`

The series name.

### series.type=&quot;bubble&quot;.negativeValues `Object`

The settings for negative values.

### series.type=&quot;bubble&quot;.negativeValues.color `String`*(default: &quot;#ffffff&quot;)*

 The color of the negative values.

### series.type=&quot;bubble&quot;.negativeValues.visible `Boolean`*(default: false)*

 The visibility of the negative values.

### series.type=&quot;bubble&quot;.opacity `Number`*(default: 0.6)*

 The series opacity.

### series.type=&quot;bubble&quot;.sizeField `String`

The data field containing the bubble size value.

### series.type=&quot;bubble&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;bubble&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;bubble&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;bubble&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;bubble&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;bubble&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;bubble&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;bubble&quot;.tooltip.format `String`

The tooltip format.
Format variables:


*   **0** - the x value
*   **1** - the y value
*   **2** - the size value
*   **3** - the category name

#### Example

    //sets format of the tooltip
    format: &quot;{0:C}--{1:C}&quot;

### series.type=&quot;bubble&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;bubble&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **value.size** - the size value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;bubble&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1, 1], [1, 2, 2], [1, 3, 3]],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value.x # - #= value.y # - #= value.size #&quot;
                 }
             }
         ]
    });

### series.type=&quot;bubble&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;bubble&quot;.visibleInLegendField `String`

A boolean value indicating whether to show the bubble category name in the legend.

### series.type=&quot;bubble&quot;.xAxis `String`*(default: primary)*

 The name of the X axis to use.

### series.type=&quot;bubble&quot;.xField `String`

The data field containing the bubble x value.

### series.type=&quot;bubble&quot;.yAxis `String`*(default: primary)*

 The name of the Y axis to use.

### series.type=&quot;bubble&quot;.yField `String`

The data field containing the bubble y value.

### series.type=&quot;donut&quot; `Object`

Available options for donut series:

### series.type=&quot;donut&quot;.data `Array`

Array of data points.

### series.type=&quot;donut&quot;.field `String`

The data field containing the series value.

### series.type=&quot;donut&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;donut&quot;.name `String`

The series name.

### series.type=&quot;donut&quot;.border `Object`

The border of the series.

### series.type=&quot;donut&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;donut&quot;.border.dashType `String`*(default: solid)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;donut&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;donut&quot;.categoryField `String`

The data field containing the sector category name.

### series.type=&quot;donut&quot;.colorField `String`

The data field containing the sector color.

### series.type=&quot;donut&quot;.connectors `Object`

The label connectors options.

### series.type=&quot;donut&quot;.connectors.color `String`

The color of the connector line.

### series.type=&quot;donut&quot;.connectors.padding `Number`*(default: 4)*

The padding between the connector line and the label, and connector line and donut chart.

### series.type=&quot;donut&quot;.connectors.width `Number`*(default: 1)*

 The width of the connector line.

### series.type=&quot;donut&quot;.data `Array`

Array of data items (optional).
The donut chart can be bound to an array of numbers or an array of objects
with the following fields:


#### *&quot;value&quot;*

The sector value.

#### *&quot;category&quot;*

The sector category that is shown in the legend.

#### *&quot;color&quot;*

The sector color.

#### *&quot;explode&quot;*

A boolean value indicating whether to explode the sector(available only for the last level of the series).

#### *&quot;visibleInLegend&quot;*

A boolean value indicating whether to show the sector in the legend.


#### Example

    // ...
     series:[{
         type: &quot;donut&quot;,
         data:[{
             value: 40,
             category: &quot;Apples&quot;
         }, {
             value: 60,
             category: &quot;Oranges&quot;,
             color: &quot;#ff6103&quot;
         }],
         name: &quot;Sales in Percent&quot;
     }]
     // ...

### series.type=&quot;donut&quot;.explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded
(available only for the last level of the series).

### series.type=&quot;donut&quot;.holeSize `Number`

The the size of the donut hole.

### series.type=&quot;donut&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;donut&quot;.labels.align `String`*(default: &quot;circle&quot;)*

Defines the alignment of the donut labels.


#### *&quot;circle&quot;*

The labels are positioned in circle around the donut chart.

#### *&quot;column&quot;*

The labels are positioned in columns to the left and right of the donut chart.

### series.type=&quot;donut&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;donut&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;donut&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;donut&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;donut&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;donut&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;donut&quot;.labels.distance `Number`*(default: 35)*

 The distance of the labels.

### series.type=&quot;donut&quot;.labels.font `String`*(default: &quot;12px Arial, sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;donut&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;donut&quot;.labels.margin `Number|Object`*(default: 0.5)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&quot;donut&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;donut&quot;.labels.position `String`*(default: &quot;center&quot;)*

Defines the position of the donut labels.


#### *&quot;center&quot;*

The labels are positioned at the center of the donut segments.

#### *&quot;insideEnd&quot;*

The labels are positioned inside, near the end of the donut segments.

#### *&quot;outsideEnd&quot;*

The labels are positioned outside, near the end of the donut segments.
             The labels and the donut segments are connected with connector line.

### series.type=&quot;donut&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [{
             type: &quot;donut&quot;,
             data: [
                 { value: 200, category: 2000 },
                 { value: 450, category: 2001 },
                 { value: 300, category: 2002 },
                 { value: 125, category: 2003 }
             ],
             labels: {
                 // label template
                 template: &quot;#= value #%&quot;,
                 visible: true
             }
         }]
    });

### series.type=&quot;donut&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;donut&quot;.margin `Number`*(default: 1)*

 The margin around each series
(not available for the last level of the series).

### series.type=&quot;donut&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;donut&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;donut&quot;.overlay.gradient `String`*(default: &quot;roundedBevel&quot;)*

 The gradient name.
Available options are &quot;none&quot; and &quot;roundedCircle&quot;.

### series.type=&quot;donut&quot;.padding `Number`

The padding around the donut chart (equal on all sides).

### series.type=&quot;donut&quot;.size `Number`

The size of the series.

### series.type=&quot;donut&quot;.startAngle `number`*(default: 90)*

 The start angle of the first donut segment.

### series.type=&quot;donut&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;donut&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;donut&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;donut&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;donut&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;donut&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;donut&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;donut&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;donut&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;donut&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [{
                 type: &quot;donut&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value #&quot;
                 }
         }]
    });

### series.type=&quot;donut&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;line&quot; `Object`

Available options for line series:

### series.type=&quot;line&quot;.data `Array`

Array of data points.

### series.type=&quot;line&quot;.field `String`

The data field containing the series value.

### series.type=&quot;line&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;line&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;line&quot;.aggregate `String`*(default: &quot;max&quot;)*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.

#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;line&quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&quot;line&quot;.color `String`

The series base color.

### series.type=&quot;line&quot;.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the line.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;line&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;line&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;line&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;line&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;line&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;line&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;line&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;line&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;line&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;line&quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&quot;line&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;line&quot;.labels.position `String`*(default: &quot;above&quot;)*

Defines the position of the line labels.


#### *&quot;above&quot;*

The label is positioned at the top of the line chart marker.

#### *&quot;right&quot;*

The label is positioned at the right of the line chart marker.

#### *&quot;below&quot;*

The label is positioned at the bottom of the line chart marker.

#### *&quot;left&quot;*

The label is positioned at the left of the line chart marker.

### series.type=&quot;line&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;line&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &quot;#= value #%&quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;line&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;line&quot;.markers `Object`

Configures the line markers.

### series.type=&quot;line&quot;.markers.background `String`

The background color of the current series markers.

### series.type=&quot;line&quot;.markers.border `Object`

The border of the markers.

### series.type=&quot;line&quot;.markers.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;line&quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;line&quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&quot;line&quot;.markers.type `String`*(default: &quot;circle&quot;)*

Configures the markers shape type.


#### *&quot;square&quot;*

The marker shape is square.

#### *&quot;triangle&quot;*

The marker shape is triangle.

#### *&quot;circle&quot;*

The marker shape is circle.

### series.type=&quot;line&quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&quot;line&quot;.missingValues `String`*(default: &quot;gap&quot;)*

Configures the behavior for handling missing values in line series.


#### *&quot;interpolate&quot;*

The value is interpolated from neighboring points.

#### *&quot;zero&quot;*

The value is assumed to be zero.

#### *&quot;gap&quot;*

The line stops before the missing point and continues after it.

### series.type=&quot;line&quot;.name `String`

The series name.

### series.type=&quot;line&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;line&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;line&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;line&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;line&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;line&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;line&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;line&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;line&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;line&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;line&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;line&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;line&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value #&quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&quot;line&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;line&quot;.width `String`*(default: 4)*

 The line width of the line chart.

### series.type=&quot;pie&quot; `Object`

Available options for pie series:

### series.type=&quot;pie&quot;.data `Array`

Array of data points.

### series.type=&quot;pie&quot;.field `String`

The data field containing the series value.

### series.type=&quot;pie&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;pie&quot;.name `String`

The series name.

### series.type=&quot;pie&quot;.border `Object`

The border of the series.

### series.type=&quot;pie&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;pie&quot;.border.dashType `String`*(default: solid)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;pie&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;pie&quot;.categoryField `String`

The data field containing the sector category name.

### series.type=&quot;pie&quot;.colorField `String`

The data field containing the sector color.

### series.type=&quot;pie&quot;.connectors `Object`

The label connectors options.

### series.type=&quot;pie&quot;.connectors.color `String`

The color of the connector line.

### series.type=&quot;pie&quot;.connectors.padding `Number`*(default: 4)*

The padding between the connector line and the label, and connector line and pie chart.

### series.type=&quot;pie&quot;.connectors.width `Number`*(default: 1)*

 The width of the connector line.

### series.type=&quot;pie&quot;.data `Array`

Array of data items (optional).
The pie chart can be bound to an array of numbers or an array of objects
with the following fields:


#### *&quot;value&quot;*

The sector value.

#### *&quot;category&quot;*

The sector category that is shown in the legend.

#### *&quot;color&quot;*

The sector color.

#### *&quot;explode&quot;*

A boolean value indicating whether to explode the sector.

#### *&quot;visibleInLegend&quot;*

A boolean value indicating whether to show the sector in the legend.


#### Example

    // ...
     series:[{
         type: &quot;pie&quot;,
         data:[{
             value: 40,
             category: &quot;Apples&quot;
         }, {
             value: 60,
             category: &quot;Oranges&quot;,
             color: &quot;#ff6103&quot;
             }
         ],
         name: &quot;Sales in Percent&quot;
     }]
     // ...

### series.type=&quot;pie&quot;.explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded.

### series.type=&quot;pie&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;pie&quot;.labels.align `String`*(default: &quot;circle&quot;)*

Defines the alignment of the pie labels.


#### *&quot;circle&quot;*

The labels are positioned in circle around the pie chart.

#### *&quot;column&quot;*

The labels are positioned in columns to the left and right of the pie chart.

### series.type=&quot;pie&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;pie&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;pie&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;pie&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;pie&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;pie&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;pie&quot;.labels.distance `Number`*(default: 35)*

 The distance of the labels.

### series.type=&quot;pie&quot;.labels.font `String`*(default: &quot;12px Arial, sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;pie&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;pie&quot;.labels.margin `Number|Object`*(default: 0.5)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&quot;pie&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;pie&quot;.labels.position `String`*(default: &quot;outsideEnd&quot;)*

Defines the position of the pie labels.


#### *&quot;center&quot;*

The labels are positioned at the center of the pie segments.

#### *&quot;insideEnd&quot;*

The labels are positioned inside, near the end of the pie segments.

#### *&quot;outsideEnd&quot;*

The labels are positioned outside, near the end of the pie segments.
             The labels and the pie segments are connected with connector line.

### series.type=&quot;pie&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;pie&quot;,
                 name: &quot;Series 1&quot;,
                 data: [
                     { value: 200, category: 2000 },
                     { value: 450, category: 2001 },
                     { value: 300, category: 2002 },
                     { value: 125, category: 2003 }
                 ],
                 labels: {
                     // label template
                     template: &quot;#= value #%&quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&quot;pie&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;pie&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;pie&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;pie&quot;.overlay.gradient `String`*(default: &quot;roundedBevel&quot;)*

 The gradient name.
Available options are &quot;none&quot;, &quot;sharpBevel&quot; and &quot;roundedBevel&quot;.

### series.type=&quot;pie&quot;.padding `Number`

The padding around the pie chart (equal on all sides).

### series.type=&quot;pie&quot;.startAngle `number`*(default: 90)*

 The start angle of the first pie segment.

### series.type=&quot;pie&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;pie&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;pie&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;pie&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;pie&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;pie&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;pie&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;pie&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;pie&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;pie&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;pie&quot;,
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value #&quot;
                 }
             }
         ]
    });

### series.type=&quot;pie&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;pie&quot;.visibleInLegendField `Number`

A boolean value indicating whether to show the sector in the legend.

### series.type=&quot;pie&quot;.visibleInLegendField `Number`

A boolean value indicating whether to show the sector in the legend.

### series.type=&quot;scatter&quot; `Object`

Available options for scatter series:

### series.type=&quot;scatter&quot;.data `Array`

Array of data points.

### series.type=&quot;scatter&quot;.field `String`

The data field containing the series value.

### series.type=&quot;scatter&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;scatter&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;scatter&quot;.color `String`

The series base color.

### series.type=&quot;scatter&quot;.data `Array`

Array of data items (optional).
The scatter chart can be bound to an array of arrays with two numbers (X and Y).


#### Example

    // ...
     series:[{
         type: &quot;scatter&quot;,
         data:[[1, 1], [1, 2]],
         name: &quot;Points&quot;
     }]
     // ...

### series.type=&quot;scatter&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;scatter&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;scatter&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;scatter&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatter&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;scatter&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatter&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;scatter&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;scatter&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### series.type=&quot;scatter&quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&quot;scatter&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;scatter&quot;.labels.position `String`*(default: &quot;above&quot;)*

Defines the position of the scatter labels.


#### *&quot;above&quot;*

The label is positioned at the top of the scatter chart marker.

#### *&quot;right&quot;*

The label is positioned at the right of the scatter chart marker.

#### *&quot;below&quot;*

The label is positioned at the bottom of the scatter chart marker.

#### *&quot;left&quot;*

The label is positioned at the left of the scatter chart marker.

### series.type=&quot;scatter&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;scatter&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 labels: {
                     // label template
                     template: &quot;#= value.x # - #= value.y x #&quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&quot;scatter&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;scatter&quot;.markers `Object`

Configures the scatter markers.

### series.type=&quot;scatter&quot;.markers.background `String`

The background color of the current series markers.

### series.type=&quot;scatter&quot;.markers.border `Object`

The border of the markers.

### series.type=&quot;scatter&quot;.markers.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatter&quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatter&quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&quot;scatter&quot;.markers.type `String`*(default: &quot;circle&quot;)*

Configures the markers shape type.


#### *&quot;square&quot;*

The marker shape is square.

#### *&quot;triangle&quot;*

The marker shape is triangle.

#### *&quot;circle&quot;*

The marker shape is circle.

### series.type=&quot;scatter&quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&quot;scatter&quot;.name `String`

The series name.

### series.type=&quot;scatter&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;scatter&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;scatter&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;scatter&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;scatter&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatter&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatter&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;scatter&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;scatter&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;{0:C}--{1:C}&quot;

### series.type=&quot;scatter&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;scatter&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;scatter&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value.x # - #= value.y #&quot;
                 }
             }
         ]
    });

### series.type=&quot;scatter&quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&quot;scatter&quot;.xAxis `String`*(default: primary)*

The name of the X axis to use.

### series.type=&quot;scatter&quot;.yAxis `String`*(default: primary)*

The name of the Y axis to use.

### series.type=&quot;scatterLine&quot; `Object`

Available options for scatter line series:

### series.type=&quot;scatterLine&quot;.data `Array`

Array of data points.

### series.type=&quot;scatterLine&quot;.field `String`

The data field containing the series value.

### series.type=&quot;scatterLine&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;scatterLine&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;scatterLine&quot;.color `String`

The series base color.

### series.type=&quot;scatterLine&quot;.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the line.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;scatterLine&quot;.data `Array`

Array of data items (optional).
The scatter chart can be bound to an array of arrays with two numbers (X and Y).

#### Example

    // ...
     series:[{
         type: &quot;scatterLine&quot;,
         data:[[1, 1], [1, 2]],
         name: &quot;Points&quot;
     }]
     // ...

### series.type=&quot;scatterLine&quot;.labels `Object`

Configures the series data labels.

### series.type=&quot;scatterLine&quot;.labels.background `String`

The background color of the labels.

### series.type=&quot;scatterLine&quot;.labels.border `Object`

The border of the labels.

### series.type=&quot;scatterLine&quot;.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatterLine&quot;.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;scatterLine&quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatterLine&quot;.labels.color `String`

The text color of the labels.

### series.type=&quot;scatterLine&quot;.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### series.type=&quot;scatterLine&quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;{0:C}--{1:C}&quot;

### series.type=&quot;scatterLine&quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&quot;scatterLine&quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&quot;scatterLine&quot;.labels.position `String`*(default: &quot;above&quot;)*

Defines the position of the scatter labels.


#### *&quot;above&quot;*

The label is positioned at the top of the scatter chart marker.

#### *&quot;right&quot;*

The label is positioned at the right of the scatter chart marker.

#### *&quot;below&quot;*

The label is positioned at the bottom of the scatter chart marker.

#### *&quot;left&quot;*

The label is positioned at the left of the scatter chart marker.

### series.type=&quot;scatterLine&quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;scatterLine&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 labels: {
                     // label template
                     template: &quot;#= value.x # - #= value.y #&quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&quot;scatterLine&quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&quot;scatterLine&quot;.markers `Object`

Configures the scatter markers.

### series.type=&quot;scatterLine&quot;.markers.background `String`

The background color of the current series markers.

### series.type=&quot;scatterLine&quot;.markers.border `Object`

The border of the markers.

### series.type=&quot;scatterLine&quot;.markers.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatterLine&quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatterLine&quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&quot;scatterLine&quot;.markers.type `String`*(default: &quot;circle&quot;)*

Configures the markers shape type.


#### *&quot;square&quot;*

The marker shape is square.

#### *&quot;triangle&quot;*

The marker shape is triangle.

#### *&quot;circle&quot;*

The marker shape is circle.

### series.type=&quot;scatterLine&quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&quot;scatterLine&quot;.missingValues `String`*(default: &quot;gap&quot;)*

Configures the behavior for handling missing values in scatter series.


#### *&quot;interpolate&quot;*

The value is interpolated from neighboring points.

#### *&quot;zero&quot;*

The value is assumed to be zero.

#### *&quot;gap&quot;*

The line stops before the missing point and continues after it.

### series.type=&quot;scatterLine&quot;.name `String`

The series name.

### series.type=&quot;scatterLine&quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&quot;scatterLine&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;scatterLine&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;scatterLine&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;scatterLine&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### series.type=&quot;scatterLine&quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&quot;scatterLine&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;scatterLine&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### series.type=&quot;scatterLine&quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

### series.type=&quot;scatterLine&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;scatterLine&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;scatterLine&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value.x # - #= value.y #&quot;
                 }
             }
         ]
    });

### series.type=&quot;scatterLine&quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&quot;scatterLine&quot;.width `Number`*(default: 1)*

 The line width of the scatter line chart.

### series.type=&quot;scatterLine&quot;.xAxis `String`*(default: primary)*

 The name of the X axis to use.

### series.type=&quot;scatterLine&quot;.yAxis `String`*(default: primary)*

 The name of the Y axis to use.

### series.type=&quot;verticalArea&quot;

Vertical area series use the same options as area series.
The category axis is rendered vertically instead of horizontally.

### series.type=&quot;verticalLine&quot;

Vertical line series accepts the same parameters as line series.
The line and the category axis are now vertical instead of horizontal.

### series.type=&quot;candlestick&quot; `Object`

Available options for candlestick series.

### series.type=&quot;candlestick&quot;.data `Array`

Array of data points.

### series.type=&quot;candlestick&quot;.field `String`

The data field containing the series value.

### series.type=&quot;candlestick&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;candlestick&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;candlestick&quot;.aggregates `Object`*(default: { open: &quot;max&quot;, high: &quot;max&quot;, close: &quot;min&quot;, low: &quot;max&quot; })*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return values are displayed instead of the individual points.

#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;candlestick&quot;.axis `String`*(default: primary)*

The name of the value axis to use.

### series.type=&quot;candlestick&quot;.border `Object`

The border of the series.

### series.type=&quot;candlestick&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;candlestick&quot;.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;candlestick&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;candlestick&quot;.color `String`

The series base color.

### series.type=&quot;candlestick&quot;.colorField `String`

The data field containing the point color.

### series.type=&quot;candlestick&quot;.downColor `String`

The series color when open value is smoller then close value.

### series.type=&quot;candlestick&quot;.downColorField `String`

The data field containing the body color.

### series.type=&quot;candlestick&quot;.openField `String`

The data field containing the open value.

### series.type=&quot;candlestick&quot;.highField `String`

The data field containing the high value.

### series.type=&quot;candlestick&quot;.lowField `String`

The data field containing the low value.

### series.type=&quot;candlestick&quot;.closeField `String`

The data field containing the close value.

### series.type=&quot;candlestick&quot;.gap `Number`*(default: 1)*

The distance between category clusters.

### series.type=&quot;candlestick&quot;.name `String`

The series name.

### series.type=&quot;candlestick&quot;.opacity `Number`*(default: 1)*

The series opacity.

### series.type=&quot;candlestick&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;candlestick&quot;.overlay.gradient `String`*(default: &quot;glass&quot;)*

The gradient name.

#### *&quot;glass&quot;*

The bars have glass effect overlay.

#### *&quot;none&quot;*

The bars have no effect overlay.

### series.type=&quot;candlestick&quot;.spacing `Number`*(default: 0.3)*

Space between points.

### series.type=&quot;candlestick&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;candlestick&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;candlestick&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;candlestick&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;candlestick&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

The color of the border.

### series.type=&quot;candlestick&quot;.tooltip.border.width `Number`*(default: 0)*

The width of the border.

### series.type=&quot;candlestick&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;candlestick&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The tooltip font.

### series.type=&quot;candlestick&quot;.tooltip.format `String`

The tooltip format. Format variables:

0 - the open value
1 - the high value
2 - the low value
3 - the close value
4 - the category name

#### Example

    // sets format of the tooltip
    format: &quot;{0:C}--{1:C}--{2:C}--{3:C}&quot;

### series.type=&quot;candlestick&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;candlestick&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.open** - the point open value
*   **value.high** - the point high value
*   **value.low** - the point low value
*   **value.close** - the point close value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;candlestick&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[300, 450, 125, 200]],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value.open #&quot;
                 }
             }
         ]
    });

### series.type=&quot;candlestick&quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&quot;candlestick&quot;.line `Object`

The line of the candlestick chart.

### series.type=&quot;candlestick&quot;.line.color `String`

The line color of the candlestick chart.

### series.type=&quot;candlestick&quot;.line.opacity `Number`*(default: 1)*

The line opacity of the candlestick chart.

### series.type=&quot;candlestick&quot;.line.width `String`*(default: 2)*

The line width of the candlestick chart.

### series.type=&quot;ohlc&quot; `Object`

Available options for ohlc series.

### series.type=&quot;ohlc&quot;.data `Array`

Array of data points.

### series.type=&quot;ohlc&quot;.field `String`

The data field containing the series value.

### series.type=&quot;ohlc&quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&quot;ohlc&quot;.name `String`

The series name visible in the legend.

### series.type=&quot;ohlc&quot;.aggregates `Object`*(default: { open: &quot;max&quot;, high: &quot;max&quot;, close: &quot;min&quot;, low: &quot;max&quot; })*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return values are displayed instead of the individual points.

#### *&quot;max&quot;*

The highest value for the date period.

#### *&quot;min&quot;*

The lowest value for the date period.

#### *&quot;sum&quot;*

The sum of all values for the date period.

#### *&quot;count&quot;*

The number of values for the date period.

#### *&quot;avg&quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&quot;ohlc&quot;.axis `String`*(default: primary)*

The name of the value axis to use.

### series.type=&quot;ohlc&quot;.border `Object`

The border of the series.

### series.type=&quot;ohlc&quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&quot;ohlc&quot;.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&quot;ohlc&quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&quot;ohlc&quot;.color `String`

The series base color.

### series.type=&quot;ohlc&quot;.colorField `String`

The data field containing the point color.

### series.type=&quot;ohlc&quot;.openField `String`

The data field containing the open value.

### series.type=&quot;ohlc&quot;.highField `String`

The data field containing the high value.

### series.type=&quot;ohlc&quot;.lowField `String`

The data field containing the low value.

### series.type=&quot;ohlc&quot;.closeField `String`

The data field containing the close value.

### series.type=&quot;ohlc&quot;.gap `Number`*(default: 1)*

The distance between category clusters.

### series.type=&quot;ohlc&quot;.name `String`

The series name.

### series.type=&quot;ohlc&quot;.opacity `Number`*(default: 1)*

The series opacity.

### series.type=&quot;ohlc&quot;.overlay `Object`

The effects overlay.

### series.type=&quot;ohlc&quot;.spacing `Number`*(default: 0.3)*

Space between points.

### series.type=&quot;ohlc&quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&quot;ohlc&quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&quot;ohlc&quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&quot;ohlc&quot;.tooltip.border `Object`

The border configuration options.

### series.type=&quot;ohlc&quot;.tooltip.border.color `String`*(default: &quot;black&quot;)*

The color of the border.

### series.type=&quot;ohlc&quot;.tooltip.border.width `Number`*(default: 0)*

The width of the border.

### series.type=&quot;ohlc&quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&quot;ohlc&quot;.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The tooltip font.

### series.type=&quot;ohlc&quot;.tooltip.format `String`

The tooltip format. Format variables:

0 - the open value
1 - the high value
2 - the low value
3 - the close value
4 - the category name

#### Example

    // sets format of the tooltip
    format: &quot;{0:C}--{1:C}--{2:C}--{3:C}&quot;

### series.type=&quot;ohlc&quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&quot;ohlc&quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:

*   **value.open** - the point open value
*   **value.high** - the point high value
*   **value.low** - the point low value
*   **value.close** - the point close value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 type: &quot;ohlc&quot;,
                 name: &quot;Series 1&quot;,
                 data: [[300, 450, 125, 200]],
                 tooltip: {
                     visible: true,
                     template: &quot;#= category # - #= value.open #&quot;
                 }
             }
         ]
    });

### series.type=&quot;ohlc&quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&quot;ohlc&quot;.line `Object`

The line of the ohlc chart.

### series.type=&quot;ohlc&quot;.line.color `String`

The line color of the ohlc chart.

### series.type=&quot;ohlc&quot;.line.opacity `Number`*(default: 1)*

The line opacity of the ohlc chart.

### series.type=&quot;ohlc&quot;.line.width `String`*(default: 2)*

The line width of the ohlc chart.

### seriesColors `Array`

The default colors for the chart&#39;s series. When all colors are used, new colors are pulled from the start again.

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

### seriesDefaults.border.color `String`*(default: &quot;black&quot;)*

The color of the border.

### seriesDefaults.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### seriesDefaults.border.width `Number`*(default: 0)*

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

### seriesDefaults.gap `Number`*(default: 1.5)*

 The distance between category clusters.

### seriesDefaults.labels `Object`

Configures the series data labels.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the margin on all sides to 1
                margin: 1,
                // format the labels as currency
                format: &quot;C&quot;
            }
        },
        ...
    });

### seriesDefaults.labels.background `String`

The background color of the labels. Any valid CSS color string will work here,
including hex and rgb.

### seriesDefaults.labels.border `Object`

The border of the labels.

### seriesDefaults.labels.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### seriesDefaults.labels.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### seriesDefaults.labels.border.width `Number`*(default: 0)*

 The width of the border.

### seriesDefaults.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, inlcuding hex
and rgb.

### seriesDefaults.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.
labels

#### Example

    $(&quot;#chart&quot;).kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the font size to 14px
                font: &quot;14px Arial,Helvetica,sans-serif&quot;
            }
        },
        ...
    });

### seriesDefaults.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &quot;C&quot;

### seriesDefaults.labels.margin `Number|Object`*(default: 0)*

 The margin of the labels.

#### Example

    $(&quot;#chart).kendoChart({
         labels: {
             // sets the top, right, bottom and left margin to 3px.
             margin: 3
         },
         ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
         labels: {
             // sets the top and left margin to 1px
             // margin right and bottom are with 0px (by default)
             margin: { top: 1, left: 1 }
         },
         ...
    });

### seriesDefaults.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### seriesDefaults.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         seriesDefault: {
             labels: {
                 // label template
                 template: &quot;#= value  #%&quot;,
                 visible: true
             }
         },
         series: [
             {
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### seriesDefaults.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

#### Example

    $(&quot;#chart&quot;).kendoChart({
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

### seriesDefaults.spacing `Number`*(default: 0.4)*

 Space between bars.

### seriesDefaults.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### seriesDefaults.tooltip `Object`

The data point tooltip configuration options.

### seriesDefaults.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### seriesDefaults.tooltip.border `Object`

The border configuration options.

### seriesDefaults.tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### seriesDefaults.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### seriesDefaults.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### seriesDefaults.tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### seriesDefaults.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

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

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         seriesDefaults: {
             tooltip: {
                 visible: true,
                 template: &quot;#= category # - #= value #&quot;
             }
         },
         series: [
             {
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### seriesDefaults.tooltip.visible `Boolean`*(default: false)*

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

### title.align `String`*(default: &quot;center&quot;)*

 The alignment of the title.

#### *&quot;left&quot;*

The text is aligned to the left.

#### *&quot;center&quot;*

The text is aligned to the middle.

#### *&quot;right&quot;*

The text is aligned to the right.

### title.background `String`*(default: &quot;white&quot;)*

 The background color of the title.

### title.border `Object`

The border of the title.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        // set border options on the title
        title: {
            border: {
                // set the border color to a dark blue
                color: &quot;#336699&quot;,
                // set the width of the border to 2 pixels
                width: 2,
                // set the border style to long dashes
                dashType: &quot;longDash&quot;
            }
        },
        ...
    });

### title.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### title.border.dashType `String`*(default: &quot;solid&quot;)*

 The dash type of the border.


#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### title.border.width `Number`*(default: 0)*

 The width of the border.

### title.font `String`*(default: &quot;16px Arial,Helvetica,sans-serif&quot;)*

 The font of the title.

### title.margin `Number | Object`*(default: 5)*

 The margin of the title.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        // sets the top, right, bottom and left margin to 3px.
        title: {
            margin: 3
        },
        ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
        // sets the top and left margin to 1px
        // margin right and bottom are with 5px (by default)
        title: {
            margin: { top: 1, left: 1 }
        },
        ...
    });

### title.padding `Number | Object`*(default: 5)*

 The padding of the title.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        // sets the top, right, bottom and left padding to 3px.
        title: {
            padding: 3
        },
        ...
    });
    //
    $(&quot;#chart&quot;).kendoChart({
        // sets the top and left padding to 1px
        // padding right and bottom are with 5px (by default)
        title: {
            padding: { top: 1, left: 1 }
        },
        ...
    });

### title.position `String`*(default: &quot;top&quot;)*

 The position of the title.


#### *&quot;top&quot;*

The title is positioned on the top.

#### *&quot;bottom&quot;*

The title is positioned on the bottom.

### title.text `String`

The title of the chart. You can also set the text directly for a title with default options.

#### Example

    $(&quot;#chart &quot;).kendoChart({
        title: {
            text: &quot;Sales data&quot;
        },
        ...
    });

    $(&quot;#chart &quot;).kendoChart({
        title: &quot;Sales data&quot;,
        ...
    });


### title.visible `Boolean`*(default: false)*

 The visibility of the title.

#### Example

    $(&quot;#chart &quot;).kendoChart({
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

### tooltip.border.color `String`*(default: &quot;black&quot;)*

 The color of the border.

### tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### tooltip.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

 The tooltip font.

### tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &quot;C&quot;

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

    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [{
             name: &quot;Series 1&quot;,
             data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         tooltip: {
             visible: true,
             template: &quot;#= category # - #= value #&quot;
         }
    });

### tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### transitions `Boolean`*(default: true)*

A value indicating if transition animations should be played.

### valueAxis `Object`

The value axis configuration options.

### valueAxis.axisCrossingValue `Number`*(default: 0)*

Value at which the category axis crosses this axis.

### valueAxis.axisCrossingValues `Array`*(default: [0])*

Value indicies at which the category axes cross the value axis.

**Note:&amp;nbsp;** Specify an index greater than or equal to the number
of categories to denote the far end of the axis.

#### Example
    &lt;p&gt;
    $(&quot;#chart&quot;).kendoChart({
         categoryAxis: [{
             categories: [&quot;A&quot;, &quot;B&quot;]
         }, {
             categories: [&quot;C&quot;, &quot;D&quot;]
         }],
         valueAxis: {
             axisCrossingValues: [0, 1]
         },
         ...
    })
    &lt;/p&gt;

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

### valueAxis.labels.border.color `String`*(default: &quot;black&quot;)*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### valueAxis.labels.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.labels.border.width `Number`*(default: 0)*

The width of the border.

### valueAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.labels.font `String`*(default: &quot;12px Arial,Helvetica,sans-serif&quot;)*

The font style of the labels.

### valueAxis.labels.format `String`

The format of the labels.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        valueAxis: {
           labels: {
               // set the format to currency
               format: &quot;C&quot;
           }
        },
        ...
    });

### valueAxis.labels.margin `Number|Object`*(default: 0)*

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

### valueAxis.labels.padding `Number | Object`*(default: 0)*

The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### valueAxis.labels.rotation `Number`*(default: 0)*

The rotation angle of the labels.

### valueAxis.labels.skip `Number`*(default: 1)*

Number of labels to skip.
Skips rendering the first n labels.

### valueAxis.labels.step `Number`*(default: 1)*

Label rendering step.
Every n-th label is rendered where n is the step

### valueAxis.labels.template `String | Function`

The label template.
Template variables:

*   **value** - the value

#### Example

    // chart intialization
    $(&quot;#chart&quot;).kendoChart({
         title: {
             text: &quot;My Chart Title&quot;
         },
         series: [
             {
                 name: &quot;Series 1&quot;,
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         valueAxis: {
             labels: {
                 // labels template
                 template: &quot;#= value #%&quot;
             }
         }
    });

### valueAxis.labels.visible `Boolean`*(default: true)*

The visibility of the labels.

### valueAxis.line `Object`

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

### valueAxis.line.color `String`*(default: &quot;black&quot;)*

The color of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.line.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the line.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.line.visible `Boolean`*(default: true)*

The visibility of the line.

### valueAxis.line.width `Number`*(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### valueAxis.majorGridLines.color `String`*(default: &quot;black&quot;)*

The color of the lines.

### valueAxis.majorGridLines.visible `Boolean`*(default: true)*

The visibility of the lines.

### valueAxis.majorGridLines.width `Number`*(default: 1)*

The width of the lines.

### valueAxis.majorTicks `Object`

The major ticks of the axis.

### valueAxis.majorTicks.size `Number`*(default: 4)*

The axis major tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### valueAxis.majorTicks.visible `Boolean`*(default: true)*

The visibility of the major ticks.

### valueAxis.majorUnit `Number`

The interval between major divisions.

### valueAxis.max `Number`*(default: 1)*

The maximum value of the axis.
This is often used in combination with the **min** configuration option.

### valueAxis.min `Number`*(default: 0)*

The minimum value of the axis.
This is often used in combination with the **max** configuration option.

### valueAxis.minorGridLines `Object`

Configures the minor grid lines.  These are the lines that are an extension of the minor ticks through the

### valueAxis.minorGridLines.color `String`*(default: &quot;black&quot;)*

The color of the lines.

Note that this has no effect if the visibility of the minor grid lines is not set to **true**.

### valueAxis.minorGridLines.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the minor grid lines.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.
body of the chart.

Note that minor grid lines are not visible by default, therefore none of these settings will take effect without the minor grid lines visibility being set to **true**.

### valueAxis.minorGridLines.visible `Boolean`*(default: false)*

The visibility of the lines.

### valueAxis.minorGridLines.width `Number`*(default: 1)*

The width of the lines.

Note that this settings has no effect if the visibility of the minor grid lines is not set to **true**.

### valueAxis.minorTicks `Object`

The minor ticks of the axis.

### valueAxis.minorTicks.size `Number`*(default: 3)*

The axis minor tick size. This is the length of the line in pixels that is drawn to indicate the tick on the chart.

### valueAxis.minorTicks.visible `Boolean`*(default: false)*

The visibility of the minor ticks.

### valueAxis.minorUnit `Number`

The interval between minor divisions.
It defaults to 1/5th of the majorUnit.

### valueAxis.name `Object`*(default: primary)*

The unique axis name.

### valueAxis.plotBands `Array`

The plot bands of the value axis.
The plot band fields:

#### *&quot;from&quot;*

The start position of the plot band in axis units.

#### *&quot;to&quot;*

The end position of the plot band in axis units.

#### *&quot;color&quot;*

The color of the plot band.

#### Example

    $(&quot;#chart&quot;).kendoChart({
        ...,
        valueAxis: {
            plotBands: [{
                from: 0.2,
                to: 0.4,
                color: &quot;green&quot;
            }]
        },
     });

### valueAxis.reverse `Boolean`*(default: false)*

Reverses the axis direction -
values increase from right to left and from top to bottom.

### valueAxis.title `Object`

The title of the value axis.

### valueAxis.title.background `String`

The background color of the title. Any valid CSS color string will work here, including
hex and rgb.

### valueAxis.title.border `Object`

The border of the title.

### valueAxis.title.border.color `String`*(default: &quot;black&quot;)*

The color of the border.

### valueAxis.title.border.dashType `String`*(default: &quot;solid&quot;)*

The dash type of the border.

#### *&quot;solid&quot;*

Specifies a solid line.

#### *&quot;dot&quot;*

Specifies a line consisting of dots.

#### *&quot;dash&quot;*

Specifies a line consisting of dashes.

#### *&quot;longDash&quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&quot;dashDot&quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&quot;longDashDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&quot;longDashDotDot&quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.title.border.width `Number`*(default: 0)*

The width of the border.

### valueAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.title.font `String`*(default: &quot;16px Arial,Helvetica,sans-serif&quot;)*

The font style of the title.

### valueAxis.title.margin `Number | Object`*(default: 5)*

The margin of the title.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 0px (by default)
    margin: { top: 1, left: 1 }

### valueAxis.title.padding `Number | Object`*(default: 0)*

The padding of the title.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### valueAxis.title.position `String`*(default: &quot;center&quot;)*

The position of the title.

#### *&quot;top&quot;*

The axis title is positioned on the top (applicable to vertical axis).

#### *&quot;bottom&quot;*

The axis title is positioned on the bottom (applicable to vertical axis).

#### *&quot;left&quot;*

The axis title is positioned on the left (applicable to horizontal axis).

#### *&quot;right&quot;*

&quot;The axis title is positioned on the right (applicable to horizontal axis).

#### *&quot;center&quot;*

&quot;The axis title is positioned in the center.

### valueAxis.title.rotation `Number`*(default: 0)*

The rotation angle of the title.

### valueAxis.title.text `String`

The text of the title.

### valueAxis.title.visible `Boolean`*(default: true)*

The visibility of the title.

### valueAxis.visible `Boolean`*(default: true)*

The visibility of the axis.

### xAxis `Object`

Scatter charts X-axis configuration options.
Includes **all valueAxis options** in addition to:

### xAxis.type `String`*(default: &quot;numeric&quot;)*

The axis type.

Note: The Chart will automatically switch to a date axis if the series X value
is of type Date. Specify type explicitly when such behavior is undesired.

### xAxis.axisCrossingValue `Object | Date | Array`

Value at which the Y axis crosses this axis. (Only for object)

Value indicies at which the Y axes cross the value axis. (Only for array)

Date at which the Y axis crosses this axis. (Only for date)

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

Label settings specific to the date axis.

### xAxis.labels.culture `String`*(default: global culture)*

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.

### xAxis.labels.dateFormats `Object`

Date format strings

#### *&quot;hours&quot;*

&quot;HH:mm&quot;

#### *&quot;days&quot;*

&quot;M/d&quot;

#### *&quot;weeks&quot;*

&quot;M/d&quot;

#### *&quot;months&quot;*

&quot;MMM &#39;yy&quot;

#### *&quot;years&quot;*

&quot;yyyy&quot;

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

### xAxis.axisCrossingValue `Object | Array`
Value at which the first Y axis crosses this axis.

Values at which the Y axes cross this X axis.
&lt;p&gt;
**Note:&amp;nbsp;** Specify a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         ...,
         xAxis: {
             axisCrossingValue: [0, 1000]
         },
         yAxis: [{ }, { name: &quot;secondary&quot; }],
         ...
    });
    &lt;/p&gt;

### yAxis `Object`

### yAxis.type `String`*(default: &quot;numeric&quot;)*

The axis type.

Note: The Chart will automatically switch to a date axis if the series X value
is of type Date. Specify type explicitly when such behavior is undesired.

### yAxis.axisCrossingValue `Object | Date | Array`

Value at which the Y axis crosses this axis. (Only for object)

Value indicies at which the Y axes cross the value axis. (Only for array)

Date at which the Y axis crosses this axis. (Only for date)

### yAxis.baseUnit `String`

The base time interval for the axis labels.
The default baseUnit is determined automatically from the value range. Available options:

* minutes
* hours
* days
* weeks
* months
* years

### yAxis.labels `Object`

Label settings specific to the date axis.

### yAxis.labels.culture `String`*(default: global culture)*

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.

### yAxis.labels.dateFormats `Object`

Date format strings

#### *&quot;hours&quot;*

&quot;HH:mm&quot;

#### *&quot;days&quot;*

&quot;M/d&quot;

#### *&quot;weeks&quot;*

&quot;M/d&quot;

#### *&quot;months&quot;*

&quot;MMM &#39;yy&quot;

#### *&quot;years&quot;*

&quot;yyyy&quot;

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

### yAxis.axisCrossingValue `Object | Array`
Value at which the first Y axis crosses this axis.

Values at which the Y axes cross this X axis.
&lt;p&gt;
**Note:&amp;nbsp;** Specify a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $(&quot;#chart&quot;).kendoChart({
         ...,
         yAxis: {
             axisCrossingValue: [0, 1000]
         },
         xAxis: [{ }, { name: &quot;secondary&quot; }],
         ...
    });
    &lt;/p&gt;

## Methods

### destroy

Prepares the Chart for safe removal from the DOM.

Detaches event handlers and removes data entries in order to avoid memory leaks.

#### Example

    kendo.destroy($(&quot;#chart&quot;));
    $(&quot;#chart&quot;).remove();

### refresh

Reloads the data and repaints the chart.

#### Example

    var chart = $(&quot;#chart&quot;).data(&quot;kendoChart&quot;);

    // refreshes the chart
    chart.refresh();

### svg

Returns the SVG representation of the current chart.
The returned string is a self-contained SVG document
that can be used as is or converted to other formats
using tools like [Inkscape](http://inkscape.org/) and
[ImageMagick](http://www.imagemagick.org/).
Both programs provide command-line interface
suitable for backend processing.

#### Example

    var chart = $(&quot;#chart&quot;).data(&quot;kendoChart&quot;);
    var svgText = chart.svg();

## Events

### axisLabelClick

Fires when an axis label is clicked.

#### Example

    function onAxisLabelClick(e) {
        alert(&quot;Clicked &quot; + e.axis.type + &quot; axis label with value: &quot; + e.value);
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
Applicable only for data bound category axis.

##### e.element `Object`

The DOM element of the label.

### dataBound

Fires when the chart has received data from the data source
and is about to render it.

#### Example

    function onDataBound(e) {
        // Series data is now available
    }

### plotAreaClick

Fires when plot area is clicked.

#### Example

    function onPlotAreaClick(e) {
        alert(&quot;Clicked X axis value: &quot; + e.x);
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
        alert(&quot;Clicked value: &quot; + e.value);
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
        alert(&quot;Hovered value: &quot; + e.value);
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
