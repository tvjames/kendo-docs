---
title: kendo.dataviz.ui.Chart
slug: dataviz-kendo.dataviz.ui.chart
tags: api,dataviz
publish: true
---

# kendo.dataviz.ui.Chart SITEFINITY MAOR SITEFINITY WHAT WILL HAPPEN, IDK WHAT WILL HAPPEN!! OH NO! 

## Configuration

### axisDefaults `Object`

Default options for all chart axes.

### categoryAxis `Object`

The category axis configuration options.

### categoryAxis.axisCrossingValue `Object | Date | Array`

Category index at which the first value axis crosses this axis. (Only for object)

Category indicies at which the value axes cross the category axis. (Only for array)

**Note:&amp;amp;nbsp;** Specify an index greater than or equal to the number
of categories to denote the far end of the axis.

#### Example
    &amp;lt;p&amp;gt;
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         categoryAxis: {
             categories: [&amp;quot;A&amp;quot;, &amp;quot;B&amp;quot;],
             axisCrossingValue: [0, 100]
         },
         valueAxis: [{ }, { name: &amp;quot;secondary&amp;quot; }]
         ...
    })
    &amp;lt;/p&amp;gt;

### categoryAxis.categories `Array`

Array of category names.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
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
    // specify the &amp;quot;year&amp;quot; as the field for the category axis
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        dataSource: {
            data: data
        },
        categoryAxis: {
            field: &amp;quot;year&amp;quot;
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

### categoryAxis.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.labels.border.width `Number`*(default: 0)*

The width of the border.

### categoryAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [{
             name: &amp;quot;Series 1&amp;quot;,
             data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003],
             labels: {
                 // labels template
                 template: &amp;quot;Year: #= value #&amp;quot;
             }
         }
    });

### categoryAxis.labels.visible `Boolean`*(default: true)*

The visibility of the labels.

### categoryAxis.line `Object`

Configures the axis line. This will also effect major and minor ticks, but not gridlines.

### categoryAxis.line.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and rgb.

**Note:** This will also effect the major and minor ticks, but not the grid lines.

### categoryAxis.line.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the line.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.line.visible `Boolean`*(default: true)*

The visibility of the lines.

### categoryAxis.line.width `Number`*(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### categoryAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### categoryAxis.majorGridLines.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.majorGridLines.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the grid lines.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

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

### categoryAxis.minorGridLines.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the lines. Any valid CSS color string will work here, including hex and
rgb.

Note that this setting has no effect if the visibility of the minor
grid lines is not set to **true**.

### categoryAxis.minorGridLines.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the grid lines.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.minorGridLines.visible `Boolean`*(default: false)*

The visibility of the lines.

### categoryAxis.minorGridLines.width `Number`*(default: 1&amp;gt; The width of the lines. &amp;lt;p)*

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

#### *&amp;quot;from&amp;quot;*

The start position of the plot band.

#### *&amp;quot;to&amp;quot;*

The end position of the plot band.

#### *&amp;quot;color&amp;quot;*

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

### categoryAxis.title.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### categoryAxis.title.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### categoryAxis.title.border.width `Number`*(default: 0)*

The width of the border.

### categoryAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### categoryAxis.title.font `String`*(default: &amp;quot;16px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the title.

### categoryAxis.title.margin `Number|Object`*(default: 5)*

The margin of the title.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        categoryAxis: {
            title: {
                // sets the top, right, bottom and left margin to 3px.
                margin: 3
            }
        },
        ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        categoryAxis: {
            title: {
                // sets the top and left margin to 1px
                // margin right and bottom are with 0px (by default)
                margin: { top: 1, left: 1 }
            }
        },
        ...
    });

### categoryAxis.title.position `String`*(default: &amp;quot;center&amp;quot;)*

The position of the title.

#### *&amp;quot;top&amp;quot;*

The axis title is positioned on the top (applicable to vertical axis)

#### *&amp;quot;bottom&amp;quot;*

The axis title is positioned on the bottom (applicable to vertical axis)

#### *&amp;quot;left&amp;quot;*

The axis title is positioned on the left (applicable to horizontal axis)

#### *&amp;quot;right&amp;quot;*

The axis title is positioned on the right (applicable to horizontal axis)

#### *&amp;quot;center&amp;quot;*

The axis title is positioned in the center

### categoryAxis.title.rotation `Number`*(default: 0)*

The rotation angle of the title.

### categoryAxis.title.text `String`

The text of the title.

### categoryAxis.title.visible `Boolean`*(default: true)*

The visibility of the title.

### categoryAxis.type `String`*(default: &amp;quot;category&amp;quot;)*

The axis type.

#### *&amp;quot;category&amp;quot;*

Discrete category axis.

#### *&amp;quot;date&amp;quot;*

Specialized axis for displaying chronological data.

### categoryAxis.autoBaseUnitSteps `Object`

Specifies the discrete **baseUnitStep** values when
either **baseUnit** is set to &amp;quot;fit&amp;quot; or **baseUnitStep** is set to &amp;quot;auto&amp;quot;.

The default configuration is as follows:
* `minutes: [1, 2, 5, 15, 30]`
* `hours: [1, 2, 3, 6, 12]`
* `days: [1, 2, 3]`
* `weeks: [1, 2]`
* `months: [1, 2, 3, 6]`
* `years: [1, 2, 3, 5, 10, 25, 50]`

Each setting can be overriden individually.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        categoryAxis: {
            categories: [
                new Date(&amp;quot;2012/02/01 00:00:00&amp;quot;),
                new Date(&amp;quot;2012/02/02 00:00:00&amp;quot;),
                new Date(&amp;quot;2012/02/20 00:00:00&amp;quot;)
            ],
            baseUnitStep: &amp;quot;auto&amp;quot;,
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

Setting **baseUnit** to &amp;quot;fit&amp;quot; will set such base unit and **baseUnitStep**
that the total number of categories does not exceed **maxDateGroups**.

Series data is aggregated for the specified base unit by using the
**series.aggregate** function.

### categoryAxis.baseUnitStep `Object`*(default: 1)*

Sets the step (interval) between categories in base units.
Specifiying &amp;quot;auto&amp;quot; will set the step to such value that the total number of categories does not exceed **maxDateGroups**.

This option is ignored if **baseUnit** is set to &amp;quot;fit&amp;quot;.

### categoryAxis.labels `Object`

Label settings specific to the date axis.

### categoryAxis.labels.culture `String`*(default: global culture)*

Culture to use for formatting the dates. See [Globalization](http://www.kendoui.com/documentation/framework/globalization/overview.aspx) for more information.

### categoryAxis.labels.dateFormats `Object`

Date format strings

#### *&amp;quot;hours&amp;quot;*

&amp;quot;HH:mm&amp;quot;

#### *&amp;quot;days&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;weeks&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;months&amp;quot;*

&amp;quot;MMM &amp;#39;yy&amp;quot;

#### *&amp;quot;years&amp;quot;*

&amp;quot;yyyy&amp;quot;

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

Specifies the week start day when **baseUnit** is set to &amp;quot;weeks&amp;quot;.
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
either **baseUnit** is set to &amp;quot;fit&amp;quot; or **baseUnitStep** is set to &amp;quot;auto&amp;quot;.

This option is ignored in all other cases.

### categoryAxis.visible `Boolean`*(default: true)*

The visibility of the axis.

### chartArea `Object`

The chart area configuration options.
This is the entire visible area of the chart.

### chartArea.background `String`*(default: &amp;quot;white&amp;quot;)*

The background color of the chart area.

### chartArea.opacity `Number`*(default: 1)*

The background opacity of the chart area.

### chartArea.border `Object`

The border of the chart area.

### chartArea.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border.

### chartArea.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        dataSource: {
            transport: {
                 read: &amp;quot;spain-electricity.json&amp;quot;
            }
        },
        series: [{
            field: &amp;quot;value&amp;quot;
        }],
        categoryAxis: {
            field: &amp;quot;year&amp;quot;
        }
    });

    // Alternative configuration
    var dataSource = new kendo.data.DataSource({
        transport: {
             read: &amp;quot;spain-electricity.json&amp;quot;
        }
    });

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        dataSource: dataSource,
        series: [{
            field: &amp;quot;value&amp;quot;
        }],
        categoryAxis: {
            field: &amp;quot;year&amp;quot;
        }
    });

### legend `Object`

The chart legend configuration options.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // set the background color to a dark blue
            background: &amp;quot;#336699&amp;quot;,
            labels: {
                // set the font to a size of 14px
                font: &amp;quot;14px Arial,Helvetica,sans-serif&amp;quot;,
                // set the color to red
                color: &amp;quot;red&amp;quot;
            },
            // move the legend to the left
            position: &amp;quot;left&amp;quot;,
            // move the legend a bit closer to the chart by setting the x offset to 20
            offsetX: 20,
            // move the legend up to the top by setting the y offset to -100
            offsetY: -100,
        }
    });

### legend.background `String`*(default: &amp;quot;white&amp;quot;)*

 The background color of the legend. Any valid CSS color string will work here, including hex and rgb.

### legend.border `Object`

The border of the legend.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            border: {
                // set the border width to 2 pixels
                width: 2,
                // set the color to grey
                color: &amp;quot;grey&amp;quot;,
                // set the dash type to solid. this is the default so we could leave this line out.
                dashType: &amp;quot;solid&amp;quot;
            }
        },
        ...
    });

### legend.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### legend.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

#### Example



### legend.border.width `Number`*(default: 0)*

 The width of the border.

### legend.labels `Object`

Configures the legend labels.

### legend.labels.color `String`*(default: &amp;quot;black&amp;quot;)*

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // sets the top, right, bottom and left margin to 3px.
            margin: 3
        },
        ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // sets the top and left margin to 1px
            // margin right and bottom are with 10px (by default)
            margin: { top: 1, left: 1 }
        },
        ...
    });

### legend.offsetX `Number`*(default: 0)*

 The X offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels to the right of it&amp;#39;s initial position.  A negative value will move the legend
to the left of the current position.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // move the legend to the left side of the chart
            offsetX: 20
        },
        ...
    });

### legend.offsetY `Number`*(default: 0)*

 The Y offset from its position.  The offset is relative to the current position of the legend.
For instance, a value of 20 will move the legend 20 pixels down from it&amp;#39;s initial position.  A negative value will move the legend
upwards from the current position.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // sets the top, right, bottom and left padding to 3px.
            padding: 3
        },
        ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
           // sets the top and left padding to 1px
           // padding right and bottom are with 5px (by default)
           padding: { top: 1, left: 1 }
        },
        ...
    });

### legend.position `String`*(default: right)*

 The positions of the legend.


#### *&amp;quot;top&amp;quot;*

The legend is positioned on the top.

#### *&amp;quot;bottom&amp;quot;*

The legend is positioned on the bottom.

#### *&amp;quot;left&amp;quot;*

The legend is positioned on the left.

#### *&amp;quot;right&amp;quot;*

The legend is positioned on the right.

#### *&amp;quot;custom&amp;quot;*

The legend is positioned using OffsetX and OffsetY.

### legend.visible `Boolean`*(default: true)*

 The visibility of the legend.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        legend: {
            // hide the legend
            visible: false
        },
        ...
    });

### plotArea `Object`

The plot area configuration options. This is the area containing the plotted series.

### plotArea.background `String`*(default: &amp;quot;white&amp;quot;)*

 The background color of the plot area.

### plotArea.opacity `Number`*(default: 1)*

 The background opacity of the plot area.

### plotArea.border `Object`

The border of the plot area.

### plotArea.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### plotArea.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

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

### series.type=&amp;quot;area&amp;quot; `Object`

Available options for area series:

### series.type=&amp;quot;area&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;area&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;area&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;area&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;area&amp;quot;.aggregate `String`*(default: &amp;quot;max&amp;quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;area&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;area&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;area&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;area&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;area&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;area&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;area&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;area&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;area&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;area&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;area&amp;quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&amp;quot;area&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;area&amp;quot;.labels.position `String`*(default: &amp;quot;above&amp;quot;)*

Defines the position of the area labels.


#### *&amp;quot;above&amp;quot;*

The label is positioned at the top of the area chart marker.

#### *&amp;quot;right&amp;quot;*

The label is positioned at the right of the area chart marker.

#### *&amp;quot;below&amp;quot;*

The label is positioned at the bottom of the area chart marker.

#### *&amp;quot;left&amp;quot;*

The label is positioned at the left of the area chart marker.

### series.type=&amp;quot;area&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;area&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &amp;quot;#= value #%&amp;quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;area&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;area&amp;quot;.line `String | Object`

The line of the area chart.

### series.type=&amp;quot;area&amp;quot;.line.color `String`

The line color of the area chart.

### series.type=&amp;quot;area&amp;quot;.line.opacity `Number`*(default: 1)*

 The line opacity of the area chart.

### series.type=&amp;quot;area&amp;quot;.line.width `String`*(default: 4)*

 The line width of the area chart.

### series.type=&amp;quot;area&amp;quot;.markers `Object`

Configures the area markers.

### series.type=&amp;quot;area&amp;quot;.markers.background `String`

The background color of the current series markers.

### series.type=&amp;quot;area&amp;quot;.markers.border `Object`

The border of the markers.

### series.type=&amp;quot;area&amp;quot;.markers.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;area&amp;quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;area&amp;quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&amp;quot;area&amp;quot;.markers.type `String`*(default: &amp;quot;circle&amp;quot;)*

Configures the markers shape type.


#### *&amp;quot;square&amp;quot;*

The marker shape is square.

#### *&amp;quot;triangle&amp;quot;*

The marker shape is triangle.

#### *&amp;quot;circle&amp;quot;*

The marker shape is circle.

### series.type=&amp;quot;area&amp;quot;.markers.visible `Boolean`*(default: false)*

 The markers visibility.

### series.type=&amp;quot;area&amp;quot;.missingValues `String`*(default: &amp;quot;gap&amp;quot;)*

Configures the behavior for handling missing values in area series.


#### *&amp;quot;interpolate&amp;quot;*

The value is interpolated from neighboring points.

#### *&amp;quot;zero&amp;quot;*

The value is assumed to be zero.

#### *&amp;quot;gap&amp;quot;*

The line stops before the missing point and continues after it.

### series.type=&amp;quot;area&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;area&amp;quot;.opacity `Number`*(default: 0.4)*

 The series opacity.

### series.type=&amp;quot;area&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;area&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;area&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;area&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;area&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;area&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;area&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;area&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;area&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;area&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;area&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;area&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;area&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;bar&amp;quot; `Object`

Available options for bar series:

### series.type=&amp;quot;bar&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;bar&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;bar&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;bar&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;bar&amp;quot;.aggregate `String`*(default: &amp;quot;max&amp;quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;bar&amp;quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&amp;quot;bar&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;bar&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;bar&amp;quot;.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;bar&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;bar&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;bar&amp;quot;.colorField `String`

The data field containing the bar color.

### series.type=&amp;quot;bar&amp;quot;.gap `Number`*(default: 1.5)*

 The distance between category clusters.

### series.type=&amp;quot;bar&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;bar&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;bar&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;bar&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;bar&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;bar&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;bar&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;bar&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;bar&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;bar&amp;quot;.labels.margin `Number|Object`*(default: 2)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&amp;quot;bar&amp;quot;.labels.padding `Number|Object`*(default: 2)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;bar&amp;quot;.labels.position `String`*(default: &amp;quot;outsideEnd&amp;quot;)*

Defines the position of the bar labels.


#### *&amp;quot;center&amp;quot;*

The label is positioned at the bar center.

#### *&amp;quot;insideEnd&amp;quot;*

The label is positioned inside, near the end of the bar.

#### *&amp;quot;insideBase&amp;quot;*

The label is positioned inside, near the base of the bar.

#### *&amp;quot;outsideEnd&amp;quot;*

The label is positioned outside, near the end of the bar.
             Not applicable for stacked bar series.

### series.type=&amp;quot;bar&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;bar&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &amp;quot;#= value #%&amp;quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;bar&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;bar&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;bar&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;bar&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;bar&amp;quot;.overlay.gradient `String`*(default: &amp;quot;glass&amp;quot;)*

 The gradient name.


#### *&amp;quot;glass&amp;quot;*

The bars have glass effect overlay.

#### *&amp;quot;none&amp;quot;*

The bars have no effect overlay.

### series.type=&amp;quot;bar&amp;quot;.spacing `Number`*(default: 0.4)*

 Space between bars.

### series.type=&amp;quot;bar&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;bar&amp;quot;.stack `String`

Indicates that the series should be stacked in a group with the specified name.

### series.type=&amp;quot;bar&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;bar&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;bar&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;bar&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;bar&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;bar&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;bar&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;bar&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;bar&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;bar&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;bar&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                 template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;bar&amp;quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;column&amp;quot; `Object`

Available options for column series:

### series.type=&amp;quot;column&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;column&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;column&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;column&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;column&amp;quot;.aggregate `String`*(default: &amp;quot;max&amp;quot;)*

 Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.


#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;column&amp;quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&amp;quot;column&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;column&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;column&amp;quot;.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;column&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;column&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;column&amp;quot;.colorField `String`

The data field containing the column color.

### series.type=&amp;quot;column&amp;quot;.gap `Number`*(default: 1.5)*

 The distance between category clusters.

### series.type=&amp;quot;column&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;column&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;column&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;column&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;column&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;column&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;column&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;column&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;column&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;column&amp;quot;.labels.margin `Number|Object`*(default: 2)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&amp;quot;column&amp;quot;.labels.padding `Number|Object`*(default: 2)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;column&amp;quot;.labels.position `String`*(default: &amp;quot;outsideEnd&amp;quot;)*

Defines the position of the column labels.


#### *&amp;quot;center&amp;quot;*

The label is positioned at the column center.

#### *&amp;quot;insideEnd&amp;quot;*

The label is positioned inside, near the end of the column.

#### *&amp;quot;insideBase&amp;quot;*

The label is positioned inside, near the base of the column.

#### *&amp;quot;outsideEnd&amp;quot;*

The label is positioned outside, near the end of the column.
             Not applicable for stacked column series.

### series.type=&amp;quot;column&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;column&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &amp;quot;#= value #%&amp;quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;column&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;column&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;column&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;column&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;column&amp;quot;.overlay.gradient `String`*(default: &amp;quot;glass&amp;quot;)*

 The gradient name.


#### *&amp;quot;glass&amp;quot;*

The columns have glass effect overlay.

#### *&amp;quot;none&amp;quot;*

The columns have no effect overlay.

### series.type=&amp;quot;column&amp;quot;.spacing `Number`*(default: 0.4)*

 Space between columns.

### series.type=&amp;quot;column&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;column&amp;quot;.stack `String`

Indicates that the series should be stacked in a group with the specified name.

### series.type=&amp;quot;column&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;column&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;column&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;column&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;column&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;column&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;column&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;column&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;column&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;column&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;column&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                 template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;column&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;bubble&amp;quot; `Object`

Available options for bubble series:

### series.type=&amp;quot;bubble&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;bubble&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;bubble&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;bubble&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;bubble&amp;quot;.border `Object`

The border of the bubble.

### series.type=&amp;quot;bubble&amp;quot;.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;bubble&amp;quot;.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;bubble&amp;quot;.categoryField `String`

The data field containing the bubble category name.

### series.type=&amp;quot;bubble&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;bubble&amp;quot;.colorField `String`

The data field containing the bubble color.

### series.type=&amp;quot;bubble&amp;quot;.data `Array`

Array of data items (optional).
The bubble chart can be bound to an array of arrays with three numbers (X, Y and Size).


#### Example

    // ...
     series:[{
         type: &amp;quot;bubble&amp;quot;,
         data:[[1, 1, 1], [1, 2, 2]],
         name: &amp;quot;Points&amp;quot;
     }]
     // ...

### series.type=&amp;quot;bubble&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;bubble&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;bubble&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;bubble&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;bubble&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;bubble&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;bubble&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;bubble&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;bubble&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;bubble&amp;quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&amp;quot;bubble&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;bubble&amp;quot;.labels.position `String`*(default: &amp;quot;above&amp;quot;)*

Defines the position of the bubble labels.


#### *&amp;quot;above&amp;quot;*

The label is positioned at the top of the bubble chart marker.

#### *&amp;quot;right&amp;quot;*

The label is positioned at the right of the bubble chart marker.

#### *&amp;quot;below&amp;quot;*

The label is positioned at the bottom of the bubble chart marker.

#### *&amp;quot;left&amp;quot;*

The label is positioned at the left of the bubble chart marker.

### series.type=&amp;quot;bubble&amp;quot;.labels.template `String | Function`

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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;bubble&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1, 1], [1, 2, 2], [1, 3, 3]],
                 labels: {
                     // label template
                     template: &amp;quot;#= value.x # - #= value.y # - #= value.size #&amp;quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&amp;quot;bubble&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;bubble&amp;quot;.maxSize `Number`*(default: 100)*

 The max size of the bubble.

### series.type=&amp;quot;bubble&amp;quot;.minSize `Number`*(default: 5)*

 The min size of the bubble.

### series.type=&amp;quot;bubble&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;bubble&amp;quot;.negativeValues `Object`

The settings for negative values.

### series.type=&amp;quot;bubble&amp;quot;.negativeValues.color `String`*(default: &amp;quot;#ffffff&amp;quot;)*

 The color of the negative values.

### series.type=&amp;quot;bubble&amp;quot;.negativeValues.visible `Boolean`*(default: false)*

 The visibility of the negative values.

### series.type=&amp;quot;bubble&amp;quot;.opacity `Number`*(default: 0.6)*

 The series opacity.

### series.type=&amp;quot;bubble&amp;quot;.sizeField `String`

The data field containing the bubble size value.

### series.type=&amp;quot;bubble&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;bubble&amp;quot;.tooltip.format `String`

The tooltip format.
Format variables:


*   **0** - the x value
*   **1** - the y value
*   **2** - the size value
*   **3** - the category name

#### Example

    //sets format of the tooltip
    format: &amp;quot;{0:C}--{1:C}&amp;quot;

### series.type=&amp;quot;bubble&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;bubble&amp;quot;.tooltip.template `String|Function`

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;bubble&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1, 1], [1, 2, 2], [1, 3, 3]],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value.x # - #= value.y # - #= value.size #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;bubble&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;bubble&amp;quot;.visibleInLegendField `String`

A boolean value indicating whether to show the bubble category name in the legend.

### series.type=&amp;quot;bubble&amp;quot;.xAxis `String`*(default: primary)*

 The name of the X axis to use.

### series.type=&amp;quot;bubble&amp;quot;.xField `String`

The data field containing the bubble x value.

### series.type=&amp;quot;bubble&amp;quot;.yAxis `String`*(default: primary)*

 The name of the Y axis to use.

### series.type=&amp;quot;bubble&amp;quot;.yField `String`

The data field containing the bubble y value.

### series.type=&amp;quot;donut&amp;quot; `Object`

Available options for donut series:

### series.type=&amp;quot;donut&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;donut&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;donut&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;donut&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;donut&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;donut&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;donut&amp;quot;.border.dashType `String`*(default: solid)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;donut&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;donut&amp;quot;.categoryField `String`

The data field containing the sector category name.

### series.type=&amp;quot;donut&amp;quot;.colorField `String`

The data field containing the sector color.

### series.type=&amp;quot;donut&amp;quot;.connectors `Object`

The label connectors options.

### series.type=&amp;quot;donut&amp;quot;.connectors.color `String`

The color of the connector line.

### series.type=&amp;quot;donut&amp;quot;.connectors.padding `Number`*(default: 4)*

The padding between the connector line and the label, and connector line and donut chart.

### series.type=&amp;quot;donut&amp;quot;.connectors.width `Number`*(default: 1)*

 The width of the connector line.

### series.type=&amp;quot;donut&amp;quot;.data `Array`

Array of data items (optional).
The donut chart can be bound to an array of numbers or an array of objects
with the following fields:


#### *&amp;quot;value&amp;quot;*

The sector value.

#### *&amp;quot;category&amp;quot;*

The sector category that is shown in the legend.

#### *&amp;quot;color&amp;quot;*

The sector color.

#### *&amp;quot;explode&amp;quot;*

A boolean value indicating whether to explode the sector(available only for the last level of the series).

#### *&amp;quot;visibleInLegend&amp;quot;*

A boolean value indicating whether to show the sector in the legend.


#### Example

    // ...
     series:[{
         type: &amp;quot;donut&amp;quot;,
         data:[{
             value: 40,
             category: &amp;quot;Apples&amp;quot;
         }, {
             value: 60,
             category: &amp;quot;Oranges&amp;quot;,
             color: &amp;quot;#ff6103&amp;quot;
         }],
         name: &amp;quot;Sales in Percent&amp;quot;
     }]
     // ...

### series.type=&amp;quot;donut&amp;quot;.explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded
(available only for the last level of the series).

### series.type=&amp;quot;donut&amp;quot;.holeSize `Number`

The the size of the donut hole.

### series.type=&amp;quot;donut&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;donut&amp;quot;.labels.align `String`*(default: &amp;quot;circle&amp;quot;)*

Defines the alignment of the donut labels.


#### *&amp;quot;circle&amp;quot;*

The labels are positioned in circle around the donut chart.

#### *&amp;quot;column&amp;quot;*

The labels are positioned in columns to the left and right of the donut chart.

### series.type=&amp;quot;donut&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;donut&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;donut&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;donut&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;donut&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;donut&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;donut&amp;quot;.labels.distance `Number`*(default: 35)*

 The distance of the labels.

### series.type=&amp;quot;donut&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial, sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;donut&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;donut&amp;quot;.labels.margin `Number|Object`*(default: 0.5)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&amp;quot;donut&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;donut&amp;quot;.labels.position `String`*(default: &amp;quot;center&amp;quot;)*

Defines the position of the donut labels.


#### *&amp;quot;center&amp;quot;*

The labels are positioned at the center of the donut segments.

#### *&amp;quot;insideEnd&amp;quot;*

The labels are positioned inside, near the end of the donut segments.

#### *&amp;quot;outsideEnd&amp;quot;*

The labels are positioned outside, near the end of the donut segments.
             The labels and the donut segments are connected with connector line.

### series.type=&amp;quot;donut&amp;quot;.labels.template `String | Function`

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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [{
             type: &amp;quot;donut&amp;quot;,
             data: [
                 { value: 200, category: 2000 },
                 { value: 450, category: 2001 },
                 { value: 300, category: 2002 },
                 { value: 125, category: 2003 }
             ],
             labels: {
                 // label template
                 template: &amp;quot;#= value #%&amp;quot;,
                 visible: true
             }
         }]
    });

### series.type=&amp;quot;donut&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;donut&amp;quot;.margin `Number`*(default: 1)*

 The margin around each series
(not available for the last level of the series).

### series.type=&amp;quot;donut&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;donut&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;donut&amp;quot;.overlay.gradient `String`*(default: &amp;quot;roundedBevel&amp;quot;)*

 The gradient name.
Available options are &amp;quot;none&amp;quot; and &amp;quot;roundedCircle&amp;quot;.

### series.type=&amp;quot;donut&amp;quot;.padding `Number`

The padding around the donut chart (equal on all sides).

### series.type=&amp;quot;donut&amp;quot;.size `Number`

The size of the series.

### series.type=&amp;quot;donut&amp;quot;.startAngle `number`*(default: 90)*

 The start angle of the first donut segment.

### series.type=&amp;quot;donut&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;donut&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;donut&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;donut&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;donut&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;donut&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;donut&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;donut&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;donut&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;donut&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [{
                 type: &amp;quot;donut&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
         }]
    });

### series.type=&amp;quot;donut&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;line&amp;quot; `Object`

Available options for line series:

### series.type=&amp;quot;line&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;line&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;line&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;line&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;line&amp;quot;.aggregate `String`*(default: &amp;quot;max&amp;quot;)*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.

#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;line&amp;quot;.axis `String`*(default: primary)*

 The name of the value axis to use.

### series.type=&amp;quot;line&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;line&amp;quot;.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the line.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;line&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;line&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;line&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;line&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;line&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;line&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;line&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;line&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;line&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;line&amp;quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&amp;quot;line&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;line&amp;quot;.labels.position `String`*(default: &amp;quot;above&amp;quot;)*

Defines the position of the line labels.


#### *&amp;quot;above&amp;quot;*

The label is positioned at the top of the line chart marker.

#### *&amp;quot;right&amp;quot;*

The label is positioned at the right of the line chart marker.

#### *&amp;quot;below&amp;quot;*

The label is positioned at the bottom of the line chart marker.

#### *&amp;quot;left&amp;quot;*

The label is positioned at the left of the line chart marker.

### series.type=&amp;quot;line&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;line&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 labels: {
                     // label template
                     template: &amp;quot;#= value #%&amp;quot;,
                     visible: true
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;line&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;line&amp;quot;.markers `Object`

Configures the line markers.

### series.type=&amp;quot;line&amp;quot;.markers.background `String`

The background color of the current series markers.

### series.type=&amp;quot;line&amp;quot;.markers.border `Object`

The border of the markers.

### series.type=&amp;quot;line&amp;quot;.markers.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;line&amp;quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;line&amp;quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&amp;quot;line&amp;quot;.markers.type `String`*(default: &amp;quot;circle&amp;quot;)*

Configures the markers shape type.


#### *&amp;quot;square&amp;quot;*

The marker shape is square.

#### *&amp;quot;triangle&amp;quot;*

The marker shape is triangle.

#### *&amp;quot;circle&amp;quot;*

The marker shape is circle.

### series.type=&amp;quot;line&amp;quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&amp;quot;line&amp;quot;.missingValues `String`*(default: &amp;quot;gap&amp;quot;)*

Configures the behavior for handling missing values in line series.


#### *&amp;quot;interpolate&amp;quot;*

The value is interpolated from neighboring points.

#### *&amp;quot;zero&amp;quot;*

The value is assumed to be zero.

#### *&amp;quot;gap&amp;quot;*

The line stops before the missing point and continues after it.

### series.type=&amp;quot;line&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;line&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;line&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;line&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;line&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;line&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;line&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;line&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;line&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;line&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;line&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;line&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;line&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;line&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         }
    });

### series.type=&amp;quot;line&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;line&amp;quot;.width `String`*(default: 4)*

 The line width of the line chart.

### series.type=&amp;quot;pie&amp;quot; `Object`

Available options for pie series:

### series.type=&amp;quot;pie&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;pie&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;pie&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;pie&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;pie&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;pie&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;pie&amp;quot;.border.dashType `String`*(default: solid)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;pie&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;pie&amp;quot;.categoryField `String`

The data field containing the sector category name.

### series.type=&amp;quot;pie&amp;quot;.colorField `String`

The data field containing the sector color.

### series.type=&amp;quot;pie&amp;quot;.connectors `Object`

The label connectors options.

### series.type=&amp;quot;pie&amp;quot;.connectors.color `String`

The color of the connector line.

### series.type=&amp;quot;pie&amp;quot;.connectors.padding `Number`*(default: 4)*

The padding between the connector line and the label, and connector line and pie chart.

### series.type=&amp;quot;pie&amp;quot;.connectors.width `Number`*(default: 1)*

 The width of the connector line.

### series.type=&amp;quot;pie&amp;quot;.data `Array`

Array of data items (optional).
The pie chart can be bound to an array of numbers or an array of objects
with the following fields:


#### *&amp;quot;value&amp;quot;*

The sector value.

#### *&amp;quot;category&amp;quot;*

The sector category that is shown in the legend.

#### *&amp;quot;color&amp;quot;*

The sector color.

#### *&amp;quot;explode&amp;quot;*

A boolean value indicating whether to explode the sector.

#### *&amp;quot;visibleInLegend&amp;quot;*

A boolean value indicating whether to show the sector in the legend.


#### Example

    // ...
     series:[{
         type: &amp;quot;pie&amp;quot;,
         data:[{
             value: 40,
             category: &amp;quot;Apples&amp;quot;
         }, {
             value: 60,
             category: &amp;quot;Oranges&amp;quot;,
             color: &amp;quot;#ff6103&amp;quot;
             }
         ],
         name: &amp;quot;Sales in Percent&amp;quot;
     }]
     // ...

### series.type=&amp;quot;pie&amp;quot;.explodeField `String`

The data field containing a boolean value that indicates if the sector is exploded.

### series.type=&amp;quot;pie&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;pie&amp;quot;.labels.align `String`*(default: &amp;quot;circle&amp;quot;)*

Defines the alignment of the pie labels.


#### *&amp;quot;circle&amp;quot;*

The labels are positioned in circle around the pie chart.

#### *&amp;quot;column&amp;quot;*

The labels are positioned in columns to the left and right of the pie chart.

### series.type=&amp;quot;pie&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;pie&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;pie&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;pie&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;pie&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;pie&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;pie&amp;quot;.labels.distance `Number`*(default: 35)*

 The distance of the labels.

### series.type=&amp;quot;pie&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial, sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;pie&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;pie&amp;quot;.labels.margin `Number|Object`*(default: 0.5)*

 The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and left margin to 1px
    // margin right and bottom are with 2px (by default)
    margin: { top: 1, left: 1 }

### series.type=&amp;quot;pie&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 2px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;pie&amp;quot;.labels.position `String`*(default: &amp;quot;outsideEnd&amp;quot;)*

Defines the position of the pie labels.


#### *&amp;quot;center&amp;quot;*

The labels are positioned at the center of the pie segments.

#### *&amp;quot;insideEnd&amp;quot;*

The labels are positioned inside, near the end of the pie segments.

#### *&amp;quot;outsideEnd&amp;quot;*

The labels are positioned outside, near the end of the pie segments.
             The labels and the pie segments are connected with connector line.

### series.type=&amp;quot;pie&amp;quot;.labels.template `String | Function`

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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;pie&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [
                     { value: 200, category: 2000 },
                     { value: 450, category: 2001 },
                     { value: 300, category: 2002 },
                     { value: 125, category: 2003 }
                 ],
                 labels: {
                     // label template
                     template: &amp;quot;#= value #%&amp;quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&amp;quot;pie&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;pie&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;pie&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;pie&amp;quot;.overlay.gradient `String`*(default: &amp;quot;roundedBevel&amp;quot;)*

 The gradient name.
Available options are &amp;quot;none&amp;quot;, &amp;quot;sharpBevel&amp;quot; and &amp;quot;roundedBevel&amp;quot;.

### series.type=&amp;quot;pie&amp;quot;.padding `Number`

The padding around the pie chart (equal on all sides).

### series.type=&amp;quot;pie&amp;quot;.startAngle `number`*(default: 90)*

 The start angle of the first pie segment.

### series.type=&amp;quot;pie&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;pie&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;pie&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;pie&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;pie&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;pie&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;pie&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;pie&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;pie&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;pie&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value** - the point value
*   **percentage** - the point value represented as a percentage value
*   **category** - the category name
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;pie&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;pie&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;pie&amp;quot;.visibleInLegendField `Number`

A boolean value indicating whether to show the sector in the legend.

### series.type=&amp;quot;pie&amp;quot;.visibleInLegendField `Number`

A boolean value indicating whether to show the sector in the legend.

### series.type=&amp;quot;scatter&amp;quot; `Object`

Available options for scatter series:

### series.type=&amp;quot;scatter&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;scatter&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;scatter&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;scatter&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;scatter&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;scatter&amp;quot;.data `Array`

Array of data items (optional).
The scatter chart can be bound to an array of arrays with two numbers (X and Y).


#### Example

    // ...
     series:[{
         type: &amp;quot;scatter&amp;quot;,
         data:[[1, 1], [1, 2]],
         name: &amp;quot;Points&amp;quot;
     }]
     // ...

### series.type=&amp;quot;scatter&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;scatter&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;scatter&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;scatter&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatter&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;scatter&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatter&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;scatter&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;scatter&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;scatter&amp;quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&amp;quot;scatter&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;scatter&amp;quot;.labels.position `String`*(default: &amp;quot;above&amp;quot;)*

Defines the position of the scatter labels.


#### *&amp;quot;above&amp;quot;*

The label is positioned at the top of the scatter chart marker.

#### *&amp;quot;right&amp;quot;*

The label is positioned at the right of the scatter chart marker.

#### *&amp;quot;below&amp;quot;*

The label is positioned at the bottom of the scatter chart marker.

#### *&amp;quot;left&amp;quot;*

The label is positioned at the left of the scatter chart marker.

### series.type=&amp;quot;scatter&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;scatter&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 labels: {
                     // label template
                     template: &amp;quot;#= value.x # - #= value.y x #&amp;quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&amp;quot;scatter&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;scatter&amp;quot;.markers `Object`

Configures the scatter markers.

### series.type=&amp;quot;scatter&amp;quot;.markers.background `String`

The background color of the current series markers.

### series.type=&amp;quot;scatter&amp;quot;.markers.border `Object`

The border of the markers.

### series.type=&amp;quot;scatter&amp;quot;.markers.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatter&amp;quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatter&amp;quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&amp;quot;scatter&amp;quot;.markers.type `String`*(default: &amp;quot;circle&amp;quot;)*

Configures the markers shape type.


#### *&amp;quot;square&amp;quot;*

The marker shape is square.

#### *&amp;quot;triangle&amp;quot;*

The marker shape is triangle.

#### *&amp;quot;circle&amp;quot;*

The marker shape is circle.

### series.type=&amp;quot;scatter&amp;quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&amp;quot;scatter&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;scatter&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;scatter&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;scatter&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;{0:C}--{1:C}&amp;quot;

### series.type=&amp;quot;scatter&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;scatter&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;scatter&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value.x # - #= value.y #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;scatter&amp;quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;scatter&amp;quot;.xAxis `String`*(default: primary)*

The name of the X axis to use.

### series.type=&amp;quot;scatter&amp;quot;.yAxis `String`*(default: primary)*

The name of the Y axis to use.

### series.type=&amp;quot;scatterLine&amp;quot; `Object`

Available options for scatter line series:

### series.type=&amp;quot;scatterLine&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;scatterLine&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;scatterLine&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;scatterLine&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;scatterLine&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;scatterLine&amp;quot;.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the line.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;scatterLine&amp;quot;.data `Array`

Array of data items (optional).
The scatter chart can be bound to an array of arrays with two numbers (X and Y).

#### Example

    // ...
     series:[{
         type: &amp;quot;scatterLine&amp;quot;,
         data:[[1, 1], [1, 2]],
         name: &amp;quot;Points&amp;quot;
     }]
     // ...

### series.type=&amp;quot;scatterLine&amp;quot;.labels `Object`

Configures the series data labels.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.background `String`

The background color of the labels.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.border `Object`

The border of the labels.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.color `String`

The text color of the labels.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;{0:C}--{1:C}&amp;quot;

### series.type=&amp;quot;scatterLine&amp;quot;.labels.margin `Number|Object`*(default: { left: 5, right: 5})*

The margin of the labels.

#### Example

    // sets the top, right, bottom and left margin to 3px.
    margin: 3

    // sets the top and bottom margin to 1px
    // margin left and right are with 5px (by default)
    margin: { top: 1, bottom: 1 }

### series.type=&amp;quot;scatterLine&amp;quot;.labels.padding `Number|Object`*(default: 0)*

 The padding of the labels.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // padding right and bottom are with 0px (by default)
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;scatterLine&amp;quot;.labels.position `String`*(default: &amp;quot;above&amp;quot;)*

Defines the position of the scatter labels.


#### *&amp;quot;above&amp;quot;*

The label is positioned at the top of the scatter chart marker.

#### *&amp;quot;right&amp;quot;*

The label is positioned at the right of the scatter chart marker.

#### *&amp;quot;below&amp;quot;*

The label is positioned at the bottom of the scatter chart marker.

#### *&amp;quot;left&amp;quot;*

The label is positioned at the left of the scatter chart marker.

### series.type=&amp;quot;scatterLine&amp;quot;.labels.template `String | Function`

The label template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    // chart intialization
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;scatterLine&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 labels: {
                     // label template
                     template: &amp;quot;#= value.x # - #= value.y #&amp;quot;,
                     visible: true
                 }
             }
         ]
    });

### series.type=&amp;quot;scatterLine&amp;quot;.labels.visible `Boolean`*(default: false)*

 The visibility of the labels.

### series.type=&amp;quot;scatterLine&amp;quot;.markers `Object`

Configures the scatter markers.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.background `String`

The background color of the current series markers.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.border `Object`

The border of the markers.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.size `Number`*(default: 6)*

 The marker size.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.type `String`*(default: &amp;quot;circle&amp;quot;)*

Configures the markers shape type.


#### *&amp;quot;square&amp;quot;*

The marker shape is square.

#### *&amp;quot;triangle&amp;quot;*

The marker shape is triangle.

#### *&amp;quot;circle&amp;quot;*

The marker shape is circle.

### series.type=&amp;quot;scatterLine&amp;quot;.markers.visible `Boolean`*(default: true)*

 The markers visibility.

### series.type=&amp;quot;scatterLine&amp;quot;.missingValues `String`*(default: &amp;quot;gap&amp;quot;)*

Configures the behavior for handling missing values in scatter series.


#### *&amp;quot;interpolate&amp;quot;*

The value is interpolated from neighboring points.

#### *&amp;quot;zero&amp;quot;*

The value is assumed to be zero.

#### *&amp;quot;gap&amp;quot;*

The line stops before the missing point and continues after it.

### series.type=&amp;quot;scatterLine&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;scatterLine&amp;quot;.opacity `Number`*(default: 1)*

 The series opacity.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.template `String|Function`

The tooltip template.
Template variables:


*   **value.x** - the x value
*   **value.y** - the y value
*   **series** - the data series
*   **dataItem** - the original data item used to construct the point.
        Will be null if binding to array.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;scatterLine&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[1, 1], [1, 2], [1, 3]],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value.x # - #= value.y #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;scatterLine&amp;quot;.tooltip.visible `Boolean`*(default: false)*

 A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;scatterLine&amp;quot;.width `Number`*(default: 1)*

 The line width of the scatter line chart.

### series.type=&amp;quot;scatterLine&amp;quot;.xAxis `String`*(default: primary)*

 The name of the X axis to use.

### series.type=&amp;quot;scatterLine&amp;quot;.yAxis `String`*(default: primary)*

 The name of the Y axis to use.

### series.type=&amp;quot;verticalArea&amp;quot;

Vertical area series use the same options as area series.
The category axis is rendered vertically instead of horizontally.

### series.type=&amp;quot;verticalLine&amp;quot;

Vertical line series accepts the same parameters as line series.
The line and the category axis are now vertical instead of horizontal.

### series.type=&amp;quot;candlestick&amp;quot; `Object`

Available options for candlestick series.

### series.type=&amp;quot;candlestick&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;candlestick&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;candlestick&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;candlestick&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;candlestick&amp;quot;.aggregates `Object`*(default: { open: &amp;quot;max&amp;quot;, high: &amp;quot;max&amp;quot;, close: &amp;quot;min&amp;quot;, low: &amp;quot;max&amp;quot; })*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return values are displayed instead of the individual points.

#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;candlestick&amp;quot;.axis `String`*(default: primary)*

The name of the value axis to use.

### series.type=&amp;quot;candlestick&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;candlestick&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;candlestick&amp;quot;.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;candlestick&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;candlestick&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;candlestick&amp;quot;.colorField `String`

The data field containing the point color.

### series.type=&amp;quot;candlestick&amp;quot;.downColor `String`

The series color when open value is smoller then close value.

### series.type=&amp;quot;candlestick&amp;quot;.downColorField `String`

The data field containing the body color.

### series.type=&amp;quot;candlestick&amp;quot;.openField `String`

The data field containing the open value.

### series.type=&amp;quot;candlestick&amp;quot;.highField `String`

The data field containing the high value.

### series.type=&amp;quot;candlestick&amp;quot;.lowField `String`

The data field containing the low value.

### series.type=&amp;quot;candlestick&amp;quot;.closeField `String`

The data field containing the close value.

### series.type=&amp;quot;candlestick&amp;quot;.gap `Number`*(default: 1)*

The distance between category clusters.

### series.type=&amp;quot;candlestick&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;candlestick&amp;quot;.opacity `Number`*(default: 1)*

The series opacity.

### series.type=&amp;quot;candlestick&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;candlestick&amp;quot;.overlay.gradient `String`*(default: &amp;quot;glass&amp;quot;)*

The gradient name.

#### *&amp;quot;glass&amp;quot;*

The bars have glass effect overlay.

#### *&amp;quot;none&amp;quot;*

The bars have no effect overlay.

### series.type=&amp;quot;candlestick&amp;quot;.spacing `Number`*(default: 0.3)*

Space between points.

### series.type=&amp;quot;candlestick&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.border.width `Number`*(default: 0)*

The width of the border.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The tooltip font.

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.format `String`

The tooltip format. Format variables:

0 - the open value
1 - the high value
2 - the low value
3 - the close value
4 - the category name

#### Example

    // sets format of the tooltip
    format: &amp;quot;{0:C}--{1:C}--{2:C}--{3:C}&amp;quot;

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.template `String|Function`

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;candlestick&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[300, 450, 125, 200]],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value.open #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;candlestick&amp;quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;candlestick&amp;quot;.line `Object`

The line of the candlestick chart.

### series.type=&amp;quot;candlestick&amp;quot;.line.color `String`

The line color of the candlestick chart.

### series.type=&amp;quot;candlestick&amp;quot;.line.opacity `Number`*(default: 1)*

The line opacity of the candlestick chart.

### series.type=&amp;quot;candlestick&amp;quot;.line.width `String`*(default: 2)*

The line width of the candlestick chart.

### series.type=&amp;quot;ohlc&amp;quot; `Object`

Available options for ohlc series.

### series.type=&amp;quot;ohlc&amp;quot;.data `Array`

Array of data points.

### series.type=&amp;quot;ohlc&amp;quot;.field `String`

The data field containing the series value.

### series.type=&amp;quot;ohlc&amp;quot;.groupNameTemplate `String`

Name template for auto-generated
series when binding to grouped data.

Template variables:

*   **series** - the series options
*   **group** - the data group
*   **group.field** - the name of the field used for grouping
*   **group.value** - the field value for this group.

### series.type=&amp;quot;ohlc&amp;quot;.name `String`

The series name visible in the legend.

### series.type=&amp;quot;ohlc&amp;quot;.aggregates `Object`*(default: { open: &amp;quot;max&amp;quot;, high: &amp;quot;max&amp;quot;, close: &amp;quot;min&amp;quot;, low: &amp;quot;max&amp;quot; })*

Aggregate function for date series.
This function is used when a category (an year, month, etc.) contains two or more points.
The function return values are displayed instead of the individual points.

#### *&amp;quot;max&amp;quot;*

The highest value for the date period.

#### *&amp;quot;min&amp;quot;*

The lowest value for the date period.

#### *&amp;quot;sum&amp;quot;*

The sum of all values for the date period.

#### *&amp;quot;count&amp;quot;*

The number of values for the date period.

#### *&amp;quot;avg&amp;quot;*

The average of all values for the date period.

#### *function (values, series)*

User-defined aggregate function.

### series.type=&amp;quot;ohlc&amp;quot;.axis `String`*(default: primary)*

The name of the value axis to use.

### series.type=&amp;quot;ohlc&amp;quot;.border `Object`

The border of the series.

### series.type=&amp;quot;ohlc&amp;quot;.border.color `String`*(default: the color of the curren series)*

The color of the border.

### series.type=&amp;quot;ohlc&amp;quot;.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### series.type=&amp;quot;ohlc&amp;quot;.border.width `Number`*(default: 1)*

 The width of the border.

### series.type=&amp;quot;ohlc&amp;quot;.color `String`

The series base color.

### series.type=&amp;quot;ohlc&amp;quot;.colorField `String`

The data field containing the point color.

### series.type=&amp;quot;ohlc&amp;quot;.openField `String`

The data field containing the open value.

### series.type=&amp;quot;ohlc&amp;quot;.highField `String`

The data field containing the high value.

### series.type=&amp;quot;ohlc&amp;quot;.lowField `String`

The data field containing the low value.

### series.type=&amp;quot;ohlc&amp;quot;.closeField `String`

The data field containing the close value.

### series.type=&amp;quot;ohlc&amp;quot;.gap `Number`*(default: 1)*

The distance between category clusters.

### series.type=&amp;quot;ohlc&amp;quot;.name `String`

The series name.

### series.type=&amp;quot;ohlc&amp;quot;.opacity `Number`*(default: 1)*

The series opacity.

### series.type=&amp;quot;ohlc&amp;quot;.overlay `Object`

The effects overlay.

### series.type=&amp;quot;ohlc&amp;quot;.spacing `Number`*(default: 0.3)*

Space between points.

### series.type=&amp;quot;ohlc&amp;quot;.stack `Boolean`*(default: false)*

A value indicating if the series should be stacked.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip `Object`

The data point tooltip configuration options.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.background `String`

The background color of the tooltip. The default is determined from the series color.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.border `Object`

The border configuration options.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.border.width `Number`*(default: 0)*

The width of the border.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The tooltip font.

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.format `String`

The tooltip format. Format variables:

0 - the open value
1 - the high value
2 - the low value
3 - the close value
4 - the category name

#### Example

    // sets format of the tooltip
    format: &amp;quot;{0:C}--{1:C}--{2:C}--{3:C}&amp;quot;

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.padding `Number|Object`

The padding of the tooltip.

#### Example

    // sets the top, right, bottom and left padding to 3px.
    padding: 3

    // sets the top and left padding to 1px
    // right and bottom padding are left at their default values
    padding: { top: 1, left: 1 }

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.template `String|Function`

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 type: &amp;quot;ohlc&amp;quot;,
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [[300, 450, 125, 200]],
                 tooltip: {
                     visible: true,
                     template: &amp;quot;#= category # - #= value.open #&amp;quot;
                 }
             }
         ]
    });

### series.type=&amp;quot;ohlc&amp;quot;.tooltip.visible `Boolean`*(default: false)*

A value indicating if the tooltip should be displayed.

### series.type=&amp;quot;ohlc&amp;quot;.line `Object`

The line of the ohlc chart.

### series.type=&amp;quot;ohlc&amp;quot;.line.color `String`

The line color of the ohlc chart.

### series.type=&amp;quot;ohlc&amp;quot;.line.opacity `Number`*(default: 1)*

The line opacity of the ohlc chart.

### series.type=&amp;quot;ohlc&amp;quot;.line.width `String`*(default: 2)*

The line width of the ohlc chart.

### seriesColors `Array`

The default colors for the chart&amp;#39;s series. When all colors are used, new colors are pulled from the start again.

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

### seriesDefaults.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border.

### seriesDefaults.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the margin on all sides to 1
                margin: 1,
                // format the labels as currency
                format: &amp;quot;C&amp;quot;
            }
        },
        ...
    });

### seriesDefaults.labels.background `String`

The background color of the labels. Any valid CSS color string will work here,
including hex and rgb.

### seriesDefaults.labels.border `Object`

The border of the labels.

### seriesDefaults.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### seriesDefaults.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### seriesDefaults.labels.border.width `Number`*(default: 0)*

 The width of the border.

### seriesDefaults.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, inlcuding hex
and rgb.

### seriesDefaults.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.
labels

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        seriesDefault: {
            // adjust the default label appearence for all series
            labels: {
                // set the font size to 14px
                font: &amp;quot;14px Arial,Helvetica,sans-serif&amp;quot;
            }
        },
        ...
    });

### seriesDefaults.labels.format `String`

The format of the labels.

#### Example

    //sets format of the labels
    format: &amp;quot;C&amp;quot;

### seriesDefaults.labels.margin `Number|Object`*(default: 0)*

 The margin of the labels.

#### Example

    $(&amp;quot;#chart).kendoChart({
         labels: {
             // sets the top, right, bottom and left margin to 3px.
             margin: 3
         },
         ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         seriesDefault: {
             labels: {
                 // label template
                 template: &amp;quot;#= value  #%&amp;quot;,
                 visible: true
             }
         },
         series: [
             {
                 name: &amp;quot;Series 1&amp;quot;,
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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
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

### seriesDefaults.tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### seriesDefaults.tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### seriesDefaults.tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### seriesDefaults.tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### seriesDefaults.tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         seriesDefaults: {
             tooltip: {
                 visible: true,
                 template: &amp;quot;#= category # - #= value #&amp;quot;
             }
         },
         series: [
             {
                 name: &amp;quot;Series 1&amp;quot;,
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

### title.align `String`*(default: &amp;quot;center&amp;quot;)*

 The alignment of the title.

#### *&amp;quot;left&amp;quot;*

The text is aligned to the left.

#### *&amp;quot;center&amp;quot;*

The text is aligned to the middle.

#### *&amp;quot;right&amp;quot;*

The text is aligned to the right.

### title.background `String`*(default: &amp;quot;white&amp;quot;)*

 The background color of the title.

### title.border `Object`

The border of the title.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        // set border options on the title
        title: {
            border: {
                // set the border color to a dark blue
                color: &amp;quot;#336699&amp;quot;,
                // set the width of the border to 2 pixels
                width: 2,
                // set the border style to long dashes
                dashType: &amp;quot;longDash&amp;quot;
            }
        },
        ...
    });

### title.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### title.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

 The dash type of the border.


#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### title.border.width `Number`*(default: 0)*

 The width of the border.

### title.font `String`*(default: &amp;quot;16px Arial,Helvetica,sans-serif&amp;quot;)*

 The font of the title.

### title.margin `Number | Object`*(default: 5)*

 The margin of the title.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        // sets the top, right, bottom and left margin to 3px.
        title: {
            margin: 3
        },
        ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        // sets the top, right, bottom and left padding to 3px.
        title: {
            padding: 3
        },
        ...
    });
    //
    $(&amp;quot;#chart&amp;quot;).kendoChart({
        // sets the top and left padding to 1px
        // padding right and bottom are with 5px (by default)
        title: {
            padding: { top: 1, left: 1 }
        },
        ...
    });

### title.position `String`*(default: &amp;quot;top&amp;quot;)*

 The position of the title.


#### *&amp;quot;top&amp;quot;*

The title is positioned on the top.

#### *&amp;quot;bottom&amp;quot;*

The title is positioned on the bottom.

### title.text `String`

The title of the chart. You can also set the text directly for a title with default options.

#### Example

    $(&amp;quot;#chart &amp;quot;).kendoChart({
        title: {
            text: &amp;quot;Sales data&amp;quot;
        },
        ...
    });

    $(&amp;quot;#chart &amp;quot;).kendoChart({
        title: &amp;quot;Sales data&amp;quot;,
        ...
    });


### title.visible `Boolean`*(default: false)*

 The visibility of the title.

#### Example

    $(&amp;quot;#chart &amp;quot;).kendoChart({
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

### tooltip.border.color `String`*(default: &amp;quot;black&amp;quot;)*

 The color of the border.

### tooltip.border.width `Number`*(default: 0)*

 The width of the border.

### tooltip.color `String`

The text color of the tooltip. The default is the same as the series labels color.

### tooltip.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

 The tooltip font.

### tooltip.format `String`

The tooltip format.

#### Example

    //sets format of the tooltip
    format: &amp;quot;C&amp;quot;

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

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [{
             name: &amp;quot;Series 1&amp;quot;,
             data: [200, 450, 300, 125]
         }],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         tooltip: {
             visible: true,
             template: &amp;quot;#= category # - #= value #&amp;quot;
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

**Note:&amp;amp;nbsp;** Specify an index greater than or equal to the number
of categories to denote the far end of the axis.

#### Example
    &amp;lt;p&amp;gt;
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         categoryAxis: [{
             categories: [&amp;quot;A&amp;quot;, &amp;quot;B&amp;quot;]
         }, {
             categories: [&amp;quot;C&amp;quot;, &amp;quot;D&amp;quot;]
         }],
         valueAxis: {
             axisCrossingValues: [0, 1]
         },
         ...
    })
    &amp;lt;/p&amp;gt;

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

### valueAxis.labels.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border. Any valid CSS color string will work here, including
hex and rgb.

### valueAxis.labels.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.labels.border.width `Number`*(default: 0)*

The width of the border.

### valueAxis.labels.color `String`

The text color of the labels. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.labels.font `String`*(default: &amp;quot;12px Arial,Helvetica,sans-serif&amp;quot;)*

The font style of the labels.

### valueAxis.labels.format `String`

The format of the labels.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        valueAxis: {
           labels: {
               // set the format to currency
               format: &amp;quot;C&amp;quot;
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
    $(&amp;quot;#chart&amp;quot;).kendoChart({
         title: {
             text: &amp;quot;My Chart Title&amp;quot;
         },
         series: [
             {
                 name: &amp;quot;Series 1&amp;quot;,
                 data: [200, 450, 300, 125]
             }
         ],
         categoryAxis: {
             categories: [2000, 2001, 2002, 2003]
         },
         valueAxis: {
             labels: {
                 // labels template
                 template: &amp;quot;#= value #%&amp;quot;
             }
         }
    });

### valueAxis.labels.visible `Boolean`*(default: true)*

The visibility of the labels.

### valueAxis.line `Object`

Configures the axis line. This will also affect the major and minor ticks, but not the grid lines.

### valueAxis.line.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.line.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the line.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.line.visible `Boolean`*(default: true)*

The visibility of the line.

### valueAxis.line.width `Number`*(default: 1)*

The width of the line. This will also effect the major and minor ticks, but
not the grid lines.

### valueAxis.majorGridLines `Object`

Configures the major grid lines. These are the lines that are an extension of the major ticks through the
body of the chart.

### valueAxis.majorGridLines.color `String`*(default: &amp;quot;black&amp;quot;)*

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

### valueAxis.minorGridLines.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the lines.

Note that this has no effect if the visibility of the minor grid lines is not set to **true**.

### valueAxis.minorGridLines.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the minor grid lines.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

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

#### *&amp;quot;from&amp;quot;*

The start position of the plot band in axis units.

#### *&amp;quot;to&amp;quot;*

The end position of the plot band in axis units.

#### *&amp;quot;color&amp;quot;*

The color of the plot band.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
        ...,
        valueAxis: {
            plotBands: [{
                from: 0.2,
                to: 0.4,
                color: &amp;quot;green&amp;quot;
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

### valueAxis.title.border.color `String`*(default: &amp;quot;black&amp;quot;)*

The color of the border.

### valueAxis.title.border.dashType `String`*(default: &amp;quot;solid&amp;quot;)*

The dash type of the border.

#### *&amp;quot;solid&amp;quot;*

Specifies a solid line.

#### *&amp;quot;dot&amp;quot;*

Specifies a line consisting of dots.

#### *&amp;quot;dash&amp;quot;*

Specifies a line consisting of dashes.

#### *&amp;quot;longDash&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash.

#### *&amp;quot;dashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of dash-dot.

#### *&amp;quot;longDashDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot.

#### *&amp;quot;longDashDotDot&amp;quot;*

Specifies a line consisting of a repeating pattern of long-dash-dot-dot.

### valueAxis.title.border.width `Number`*(default: 0)*

The width of the border.

### valueAxis.title.color `String`

The text color of the title. Any valid CSS color string will work here, including hex and rgb.

### valueAxis.title.font `String`*(default: &amp;quot;16px Arial,Helvetica,sans-serif&amp;quot;)*

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

### valueAxis.title.position `String`*(default: &amp;quot;center&amp;quot;)*

The position of the title.

#### *&amp;quot;top&amp;quot;*

The axis title is positioned on the top (applicable to vertical axis).

#### *&amp;quot;bottom&amp;quot;*

The axis title is positioned on the bottom (applicable to vertical axis).

#### *&amp;quot;left&amp;quot;*

The axis title is positioned on the left (applicable to horizontal axis).

#### *&amp;quot;right&amp;quot;*

&amp;quot;The axis title is positioned on the right (applicable to horizontal axis).

#### *&amp;quot;center&amp;quot;*

&amp;quot;The axis title is positioned in the center.

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

### xAxis.type `String`*(default: &amp;quot;numeric&amp;quot;)*

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

#### *&amp;quot;hours&amp;quot;*

&amp;quot;HH:mm&amp;quot;

#### *&amp;quot;days&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;weeks&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;months&amp;quot;*

&amp;quot;MMM &amp;#39;yy&amp;quot;

#### *&amp;quot;years&amp;quot;*

&amp;quot;yyyy&amp;quot;

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
&amp;lt;p&amp;gt;
**Note:&amp;amp;nbsp;** Specify a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         ...,
         xAxis: {
             axisCrossingValue: [0, 1000]
         },
         yAxis: [{ }, { name: &amp;quot;secondary&amp;quot; }],
         ...
    });
    &amp;lt;/p&amp;gt;

### yAxis `Object`

### yAxis.type `String`*(default: &amp;quot;numeric&amp;quot;)*

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

#### *&amp;quot;hours&amp;quot;*

&amp;quot;HH:mm&amp;quot;

#### *&amp;quot;days&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;weeks&amp;quot;*

&amp;quot;M/d&amp;quot;

#### *&amp;quot;months&amp;quot;*

&amp;quot;MMM &amp;#39;yy&amp;quot;

#### *&amp;quot;years&amp;quot;*

&amp;quot;yyyy&amp;quot;

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
&amp;lt;p&amp;gt;
**Note:&amp;amp;nbsp;** Specify a value greater than or equal to the
axis maximum value to denote the far end of the axis.

#### Example

    $(&amp;quot;#chart&amp;quot;).kendoChart({
         ...,
         yAxis: {
             axisCrossingValue: [0, 1000]
         },
         xAxis: [{ }, { name: &amp;quot;secondary&amp;quot; }],
         ...
    });
    &amp;lt;/p&amp;gt;

## Methods

### destroy

Prepares the Chart for safe removal from the DOM.

Detaches event handlers and removes data entries in order to avoid memory leaks.

#### Example

    kendo.destroy($(&amp;quot;#chart&amp;quot;));
    $(&amp;quot;#chart&amp;quot;).remove();

### refresh

Reloads the data and repaints the chart.

#### Example

    var chart = $(&amp;quot;#chart&amp;quot;).data(&amp;quot;kendoChart&amp;quot;);

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

    var chart = $(&amp;quot;#chart&amp;quot;).data(&amp;quot;kendoChart&amp;quot;);
    var svgText = chart.svg();

## Events

### axisLabelClick

Fires when an axis label is clicked.

#### Example

    function onAxisLabelClick(e) {
        alert(&amp;quot;Clicked &amp;quot; + e.axis.type + &amp;quot; axis label with value: &amp;quot; + e.value);
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
        alert(&amp;quot;Clicked X axis value: &amp;quot; + e.x);
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
        alert(&amp;quot;Clicked value: &amp;quot; + e.value);
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
        alert(&amp;quot;Hovered value: &amp;quot; + e.value);
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
