---
title: chart-seriesItem-errorBars
slug: jsp-chart-seriesItem-errorBars
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-errorBars\>

The error bars of the chart series.

#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-errorBars></kendo:chart-seriesItem-errorBars>
    </kendo:chart-seriesItem>

## Configuration Attributes

### color `java.lang.String`

The color of the error bars. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem-errorBars color="color">
    </kendo:chart-seriesItem-errorBars>

### endCaps `boolean`

If set to false, the error bars caps will not be displayed. By default the caps are visible.

#### Example
    <kendo:chart-seriesItem-errorBars endCaps="endCaps">
    </kendo:chart-seriesItem-errorBars>

### value `java.lang.String`

The error bars value.The following value types are supported:

#### Example
    <kendo:chart-seriesItem-errorBars value="value">
    </kendo:chart-seriesItem-errorBars>

### xValue `java.lang.String`

The xAxis error bars value. See the series.errorBars.value option for a list of the supported value types.

#### Example
    <kendo:chart-seriesItem-errorBars xValue="xValue">
    </kendo:chart-seriesItem-errorBars>

### yValue `java.lang.String`

The yAxis error bars value. See the series.errorBars.value option for a list of the supported value types.

#### Example
    <kendo:chart-seriesItem-errorBars yValue="yValue">
    </kendo:chart-seriesItem-errorBars>


##  Configuration JSP Tags

### kendo:chart-seriesItem-errorBars-line

The error bars line options.

More documentation is available at [kendo:chart-seriesItem-errorBars-line](/kendo-ui/api/wrappers/jsp/chart/seriesitem-errorbars-line).

#### Example

    <kendo:chart-seriesItem-errorBars>
        <kendo:chart-seriesItem-errorBars-line></kendo:chart-seriesItem-errorBars-line>
    </kendo:chart-seriesItem-errorBars>


## Event Attributes

### value `String`

The error bars value.The following value types are supported:


#### Example
    <kendo:chart-seriesItem-errorBars value="handle_value">
    </kendo:chart-seriesItem-errorBars>
    <script>
        function handle_value(e) {
            // Code to handle the value event.
        }
    </script>

### xValue `String`

The xAxis error bars value. See the series.errorBars.value option for a list of the supported value types.


#### Example
    <kendo:chart-seriesItem-errorBars xValue="handle_xValue">
    </kendo:chart-seriesItem-errorBars>
    <script>
        function handle_xValue(e) {
            // Code to handle the xValue event.
        }
    </script>

### yValue `String`

The yAxis error bars value. See the series.errorBars.value option for a list of the supported value types.


#### Example
    <kendo:chart-seriesItem-errorBars yValue="handle_yValue">
    </kendo:chart-seriesItem-errorBars>
    <script>
        function handle_yValue(e) {
            // Code to handle the yValue event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-errorBars-value

The error bars value.The following value types are supported:


#### Example
    <kendo:chart-seriesItem-errorBars>
        <kendo:chart-seriesItem-errorBars-value>
            <script>
                function(e) {
                    // Code to handle the value event.
                }
            </script>
        </kendo:chart-seriesItem-errorBars-value>
    </kendo:chart-seriesItem-errorBars>

### kendo:chart-seriesItem-errorBars-xValue

The xAxis error bars value. See the series.errorBars.value option for a list of the supported value types.


#### Example
    <kendo:chart-seriesItem-errorBars>
        <kendo:chart-seriesItem-errorBars-xValue>
            <script>
                function(e) {
                    // Code to handle the xValue event.
                }
            </script>
        </kendo:chart-seriesItem-errorBars-xValue>
    </kendo:chart-seriesItem-errorBars>

### kendo:chart-seriesItem-errorBars-yValue

The yAxis error bars value. See the series.errorBars.value option for a list of the supported value types.


#### Example
    <kendo:chart-seriesItem-errorBars>
        <kendo:chart-seriesItem-errorBars-yValue>
            <script>
                function(e) {
                    // Code to handle the yValue event.
                }
            </script>
        </kendo:chart-seriesItem-errorBars-yValue>
    </kendo:chart-seriesItem-errorBars>

