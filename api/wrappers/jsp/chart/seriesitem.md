---
title: chart-seriesItem
---

# \<kendo:chart-seriesItem\>

The configuration of the chart series.The series type is determined by the value of the type field.
If a type value is missing, the type is assumed to be the one specified in seriesDefaults.

#### Example
    <kendo:chart-series>
        <kendo:chart-seriesItem></kendo:chart-seriesItem>
    </kendo:chart-series>

## Configuration Attributes

### aggregate `java.lang.String`

The aggregate function to apply for date series.This function is used when a category (an year, month, etc.) contains two or more points.
The function return value is displayed instead of the individual points.The supported values are:

#### Example
    <kendo:chart-seriesItem aggregate="aggregate">
    </kendo:chart-seriesItem>

### axis `java.lang.String`

The name of the value axis to use.

#### Example
    <kendo:chart-seriesItem axis="axis">
    </kendo:chart-seriesItem>

### categoryField `java.lang.String`

The data item field which contains the category name or date.

#### Example
    <kendo:chart-seriesItem categoryField="categoryField">
    </kendo:chart-seriesItem>

### closeField `java.lang.String`

The data field containing the close value.

#### Example
    <kendo:chart-seriesItem closeField="closeField">
    </kendo:chart-seriesItem>

### color `java.lang.String`

The series base color. The supported values are:

#### Example
    <kendo:chart-seriesItem color="color">
    </kendo:chart-seriesItem>

### colorField `java.lang.String`

The data item field which contains the series color.

#### Example
    <kendo:chart-seriesItem colorField="colorField">
    </kendo:chart-seriesItem>

### currentField `java.lang.String`

The data item field containing the current value.

#### Example
    <kendo:chart-seriesItem currentField="currentField">
    </kendo:chart-seriesItem>

### dashType `java.lang.String`

The dash type of line chart.The following dash types are supported:

#### Example
    <kendo:chart-seriesItem dashType="dashType">
    </kendo:chart-seriesItem>

### data `java.lang.Object`

The array of data items which represent the series data.Can be set to :

#### Example
    <kendo:chart-seriesItem data="data">
    </kendo:chart-seriesItem>

### downColor `java.lang.String`

The series color when the open value is greater than the close value.

#### Example
    <kendo:chart-seriesItem downColor="downColor">
    </kendo:chart-seriesItem>

### downColorField `java.lang.String`

The data field containing the color applied when the open value is greater than the close value.

#### Example
    <kendo:chart-seriesItem downColorField="downColorField">
    </kendo:chart-seriesItem>

### dynamicHeight `boolean`

When set to false all segments become with the same height, otherwise the height of each segment is based on its value.

#### Example
    <kendo:chart-seriesItem dynamicHeight="dynamicHeight">
    </kendo:chart-seriesItem>

### dynamicSlope `boolean`

When set to true the ratio of the bases of each segment is calculated based on the ratio of currentDataItem.value/nextDataItem.value
The last element is always created like a rectangle since there is no following element.

#### Example
    <kendo:chart-seriesItem dynamicSlope="dynamicSlope">
    </kendo:chart-seriesItem>

### errorHighField `java.lang.String`

The data item field which contains the series.errorBars high value.

#### Example
    <kendo:chart-seriesItem errorHighField="errorHighField">
    </kendo:chart-seriesItem>

### errorLowField `java.lang.String`

The data item field which contains the series.errorBars low value.

#### Example
    <kendo:chart-seriesItem errorLowField="errorLowField">
    </kendo:chart-seriesItem>

### explodeField `java.lang.String`

The data item field which contains a boolean value indicating whether the sector is exploded.

#### Example
    <kendo:chart-seriesItem explodeField="explodeField">
    </kendo:chart-seriesItem>

### field `java.lang.String`

The data item field which contains the series value.

#### Example
    <kendo:chart-seriesItem field="field">
    </kendo:chart-seriesItem>

### fromField `java.lang.String`

The data item field which contains the series from value.

#### Example
    <kendo:chart-seriesItem fromField="fromField">
    </kendo:chart-seriesItem>

### gap `float`

The distance between the category clusters.

#### Example
    <kendo:chart-seriesItem gap="gap">
    </kendo:chart-seriesItem>

### highField `java.lang.String`

The data field containing the high value.

#### Example
    <kendo:chart-seriesItem highField="highField">
    </kendo:chart-seriesItem>

### holeSize `float`

The diameter of the donut hole in pixels.

#### Example
    <kendo:chart-seriesItem holeSize="holeSize">
    </kendo:chart-seriesItem>

### line `java.lang.String`

The chart line configuration options. Further configuration is available via [kendo:chart-seriesItem-line](#kendo-chart-seriesItem-line). 

#### Example
    <kendo:chart-seriesItem line="line">
    </kendo:chart-seriesItem>

### lowField `java.lang.String`

The data field containing the low value.

#### Example
    <kendo:chart-seriesItem lowField="lowField">
    </kendo:chart-seriesItem>

### lowerField `java.lang.String`

The data item field which contains the series lower value.

#### Example
    <kendo:chart-seriesItem lowerField="lowerField">
    </kendo:chart-seriesItem>

### margin `float`

The margin around each donut series (ring). A numeric value will set all margins. Further configuration is available via [kendo:chart-seriesItem-margin](#kendo-chart-seriesItem-margin). 

#### Example
    <kendo:chart-seriesItem margin="margin">
    </kendo:chart-seriesItem>

### maxSize `float`

The maximum size of the chart bubble series marker.

#### Example
    <kendo:chart-seriesItem maxSize="maxSize">
    </kendo:chart-seriesItem>

### meanField `java.lang.String`

The data item field which contains the series mean value.

#### Example
    <kendo:chart-seriesItem meanField="meanField">
    </kendo:chart-seriesItem>

### medianField `java.lang.String`

The data item field which contains the series median value.

#### Example
    <kendo:chart-seriesItem medianField="medianField">
    </kendo:chart-seriesItem>

### minSize `float`

The minimum size of the chart bubble series marker.

#### Example
    <kendo:chart-seriesItem minSize="minSize">
    </kendo:chart-seriesItem>

### missingValues `java.lang.String`

The behavior for handling missing values. The supported values are:

#### Example
    <kendo:chart-seriesItem missingValues="missingValues">
    </kendo:chart-seriesItem>

### name `java.lang.String`

The name of the chart series which is visible in the legend.

#### Example
    <kendo:chart-seriesItem name="name">
    </kendo:chart-seriesItem>

### neckRatio `float`

specifies the ratio top-base/bottom-base of the whole chart. neckRatio set to three means the top base is three times smaller than the bottom base.

#### Example
    <kendo:chart-seriesItem neckRatio="neckRatio">
    </kendo:chart-seriesItem>

### negativeColor `java.lang.String`

The color to use for bar, column or waterfall series with negative values. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem negativeColor="negativeColor">
    </kendo:chart-seriesItem>

### noteTextField `java.lang.String`

The data item field which contains the series note text.

#### Example
    <kendo:chart-seriesItem noteTextField="noteTextField">
    </kendo:chart-seriesItem>

### opacity `float`

The series opacity. By default the series are opaque.

#### Example
    <kendo:chart-seriesItem opacity="opacity">
    </kendo:chart-seriesItem>

### openField `java.lang.String`

The data field containing the open value.

#### Example
    <kendo:chart-seriesItem openField="openField">
    </kendo:chart-seriesItem>

### outliersField `java.lang.String`

The data item field which contains the series outliers value.

#### Example
    <kendo:chart-seriesItem outliersField="outliersField">
    </kendo:chart-seriesItem>

### padding `float`

The padding around the chart (equal on all sides).

#### Example
    <kendo:chart-seriesItem padding="padding">
    </kendo:chart-seriesItem>

### q1Field `java.lang.String`

The data item field which contains the series q1 value.

#### Example
    <kendo:chart-seriesItem q1Field="q1Field">
    </kendo:chart-seriesItem>

### q3Field `java.lang.String`

The data item field which contains the series q3 value.

#### Example
    <kendo:chart-seriesItem q3Field="q3Field">
    </kendo:chart-seriesItem>

### segmentSpacing `float`

The space in pixels between the different segments of the funnel chart.

#### Example
    <kendo:chart-seriesItem segmentSpacing="segmentSpacing">
    </kendo:chart-seriesItem>

### size `float`

The or radius of the chart donut series in pixels. If not set, the available space is split evenly between the series.

#### Example
    <kendo:chart-seriesItem size="size">
    </kendo:chart-seriesItem>

### sizeField `java.lang.String`

The data field containing the bubble size value.

#### Example
    <kendo:chart-seriesItem sizeField="sizeField">
    </kendo:chart-seriesItem>

### spacing `float`

The space between the chart series as proportion of the series width.

#### Example
    <kendo:chart-seriesItem spacing="spacing">
    </kendo:chart-seriesItem>

### stack `java.lang.Object`

A boolean value indicating if the series should be stacked.
A string value is interpreted as series.stack.group. Further configuration is available via [kendo:chart-seriesItem-stack](#kendo-chart-seriesItem-stack). 

#### Example
    <kendo:chart-seriesItem stack="stack">
    </kendo:chart-seriesItem>

### startAngle `float`

The start angle (degrees) of the first donut or pie segment.Angles increase clockwise and zero is to the left. Negative values are acceptable.

#### Example
    <kendo:chart-seriesItem startAngle="startAngle">
    </kendo:chart-seriesItem>

### style `java.lang.String`

The supported values are:

#### Example
    <kendo:chart-seriesItem style="style">
    </kendo:chart-seriesItem>

### summaryField `java.lang.String`

The data item field which contains the summary type for waterfall series.
Summary columns are optional and can be one of two types:

#### Example
    <kendo:chart-seriesItem summaryField="summaryField">
    </kendo:chart-seriesItem>

### targetField `java.lang.String`

The data item field containing the target value.

#### Example
    <kendo:chart-seriesItem targetField="targetField">
    </kendo:chart-seriesItem>

### toField `java.lang.String`

The data item field which contains the series to value.

#### Example
    <kendo:chart-seriesItem toField="toField">
    </kendo:chart-seriesItem>

### type `java.lang.String`

The type of the series.The supported values are:

#### Example
    <kendo:chart-seriesItem type="type">
    </kendo:chart-seriesItem>

### upperField `java.lang.String`

The data item field which contains the series upper value.

#### Example
    <kendo:chart-seriesItem upperField="upperField">
    </kendo:chart-seriesItem>

### visibleInLegend `boolean`

A value indicating whether to show the point category name (for bubble, donut and pie series)
or series name (for other available series types) in the legend.

#### Example
    <kendo:chart-seriesItem visibleInLegend="visibleInLegend">
    </kendo:chart-seriesItem>

### visibleInLegendField `java.lang.String`

The data item field which indicates whether to show the point category name in the legend.

#### Example
    <kendo:chart-seriesItem visibleInLegendField="visibleInLegendField">
    </kendo:chart-seriesItem>

### width `float`

The line width.

#### Example
    <kendo:chart-seriesItem width="width">
    </kendo:chart-seriesItem>

### xAxis `java.lang.String`

The name of the X axis to use.For polar series the xAxis range is expressed in degrees.

#### Example
    <kendo:chart-seriesItem xAxis="xAxis">
    </kendo:chart-seriesItem>

### xErrorHighField `java.lang.String`

The data item field which contains the series.errorBars xAxis high value.

#### Example
    <kendo:chart-seriesItem xErrorHighField="xErrorHighField">
    </kendo:chart-seriesItem>

### xErrorLowField `java.lang.String`

The data item field which contains the series.errorBars xAxis low value.

#### Example
    <kendo:chart-seriesItem xErrorLowField="xErrorLowField">
    </kendo:chart-seriesItem>

### xField `java.lang.String`

The data item field containing the X value.

#### Example
    <kendo:chart-seriesItem xField="xField">
    </kendo:chart-seriesItem>

### yAxis `java.lang.String`

The name of the Y axis to use.** Available for bubble, scatter, scatterLine and polar series. **

#### Example
    <kendo:chart-seriesItem yAxis="yAxis">
    </kendo:chart-seriesItem>

### yErrorHighField `java.lang.String`

The data item field which contains the series.errorBars yAxis high value.

#### Example
    <kendo:chart-seriesItem yErrorHighField="yErrorHighField">
    </kendo:chart-seriesItem>

### yErrorLowField `java.lang.String`

The data item field which contains the series.errorBars yAxis low value.

#### Example
    <kendo:chart-seriesItem yErrorLowField="yErrorLowField">
    </kendo:chart-seriesItem>

### yField `java.lang.String`

The data item field containing the Y value.

#### Example
    <kendo:chart-seriesItem yField="yField">
    </kendo:chart-seriesItem>


##  Configuration JSP Tags

### kendo:chart-seriesItem-border

The border of the chart series.

More documentation is available at [kendo:chart-seriesItem-border](/api/wrappers/jsp/chart/seriesitem-border).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-border></kendo:chart-seriesItem-border>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-connectors

The label connectors options.

More documentation is available at [kendo:chart-seriesItem-connectors](/api/wrappers/jsp/chart/seriesitem-connectors).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-connectors></kendo:chart-seriesItem-connectors>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-errorBars

The error bars of the chart series.

More documentation is available at [kendo:chart-seriesItem-errorBars](/api/wrappers/jsp/chart/seriesitem-errorbars).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-errorBars></kendo:chart-seriesItem-errorBars>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-extremes

The chart series extremes configuration.

More documentation is available at [kendo:chart-seriesItem-extremes](/api/wrappers/jsp/chart/seriesitem-extremes).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-extremes></kendo:chart-seriesItem-extremes>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-highlight

The chart series highlighting configuration options.

More documentation is available at [kendo:chart-seriesItem-highlight](/api/wrappers/jsp/chart/seriesitem-highlight).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-highlight></kendo:chart-seriesItem-highlight>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-labels

The chart series label configuration.

More documentation is available at [kendo:chart-seriesItem-labels](/api/wrappers/jsp/chart/seriesitem-labels).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-labels></kendo:chart-seriesItem-labels>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-line

The chart line configuration options.

More documentation is available at [kendo:chart-seriesItem-line](/api/wrappers/jsp/chart/seriesitem-line).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-line></kendo:chart-seriesItem-line>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-margin

The margin around each donut series (ring). A numeric value will set all margins.

More documentation is available at [kendo:chart-seriesItem-margin](/api/wrappers/jsp/chart/seriesitem-margin).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-margin></kendo:chart-seriesItem-margin>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-markers

The chart series marker configuration.

More documentation is available at [kendo:chart-seriesItem-markers](/api/wrappers/jsp/chart/seriesitem-markers).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-markers></kendo:chart-seriesItem-markers>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-negativeValues

The options for displaying the chart negative bubble values.

More documentation is available at [kendo:chart-seriesItem-negativeValues](/api/wrappers/jsp/chart/seriesitem-negativevalues).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-negativeValues></kendo:chart-seriesItem-negativeValues>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-notes

The series notes configuration.

More documentation is available at [kendo:chart-seriesItem-notes](/api/wrappers/jsp/chart/seriesitem-notes).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-notes></kendo:chart-seriesItem-notes>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-outliers

The chart series outliers configuration.

More documentation is available at [kendo:chart-seriesItem-outliers](/api/wrappers/jsp/chart/seriesitem-outliers).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-outliers></kendo:chart-seriesItem-outliers>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-overlay

The chart series overlay options.

More documentation is available at [kendo:chart-seriesItem-overlay](/api/wrappers/jsp/chart/seriesitem-overlay).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-overlay></kendo:chart-seriesItem-overlay>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-stack

A boolean value indicating if the series should be stacked.
A string value is interpreted as series.stack.group.

More documentation is available at [kendo:chart-seriesItem-stack](/api/wrappers/jsp/chart/seriesitem-stack).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-stack></kendo:chart-seriesItem-stack>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-target

The configuration options of the target

More documentation is available at [kendo:chart-seriesItem-target](/api/wrappers/jsp/chart/seriesitem-target).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-target></kendo:chart-seriesItem-target>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-tooltip

The chart series tooltip configuration options.

More documentation is available at [kendo:chart-seriesItem-tooltip](/api/wrappers/jsp/chart/seriesitem-tooltip).

#### Example

    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-tooltip></kendo:chart-seriesItem-tooltip>
    </kendo:chart-seriesItem>


## Event Attributes

### color `String`

The series base color. The supported values are:


#### Example
    <kendo:chart-seriesItem color="handle_color">
    </kendo:chart-seriesItem>
    <script>
        function handle_color(e) {
            // Code to handle the color event.
        }
    </script>

### downColor `String`

The series color when the open value is greater than the close value.


#### Example
    <kendo:chart-seriesItem downColor="handle_downColor">
    </kendo:chart-seriesItem>
    <script>
        function handle_downColor(e) {
            // Code to handle the downColor event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-color

The series base color. The supported values are:


#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-color>
            <script>
                function(e) {
                    // Code to handle the color event.
                }
            </script>
        </kendo:chart-seriesItem-color>
    </kendo:chart-seriesItem>

### kendo:chart-seriesItem-downColor

The series color when the open value is greater than the close value.


#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-downColor>
            <script>
                function(e) {
                    // Code to handle the downColor event.
                }
            </script>
        </kendo:chart-seriesItem-downColor>
    </kendo:chart-seriesItem>

