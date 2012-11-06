---
title: chart
slug: jsp-chart
tags: api, java
publish: true
---

# \<kendo:chart\>
A JSP tag representing Kendo Chart.


## Configuration Attributes


### seriesColors `Object`

The default colors for the chart's series. When all colors are used, new colors are pulled from the start again.

#### Example
    <kendo:chart seriesColors="seriesColors">
    </kendo:chart>



### theme `String`

Sets Chart theme. Available themes: default, blueOpal, black.

#### Example
    <kendo:chart theme="theme">
    </kendo:chart>



### transitions `boolean`

A value indicating if transition animations should be played.

#### Example
    <kendo:chart transitions="transitions">
    </kendo:chart>



### axisLabelClick `String`

Fires when an axis label is clicked.

#### Example
    <kendo:chart axisLabelClick="handle_axisLabelClick">
    </kendo:chart>
    <script>
        function handle_axisLabelClick(e) {
            // Code to handle the axisLabelClick event.
        }
    </script>



### dataBound `String`

Fires when the chart has received data from the data source
and is about to render it.

#### Example
    <kendo:chart dataBound="handle_dataBound">
    </kendo:chart>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### plotAreaClick `String`

Fires when plot area is clicked.

#### Example
    <kendo:chart plotAreaClick="handle_plotAreaClick">
    </kendo:chart>
    <script>
        function handle_plotAreaClick(e) {
            // Code to handle the plotAreaClick event.
        }
    </script>



### seriesClick `String`

Fires when chart series are clicked.

#### Example
    <kendo:chart seriesClick="handle_seriesClick">
    </kendo:chart>
    <script>
        function handle_seriesClick(e) {
            // Code to handle the seriesClick event.
        }
    </script>



### seriesHover `String`

Fires when chart series are hovered.

#### Example
    <kendo:chart seriesHover="handle_seriesHover">
    </kendo:chart>
    <script>
        function handle_seriesHover(e) {
            // Code to handle the seriesHover event.
        }
    </script>



### Event Attributes


### axisLabelClick `String`

Fires when an axis label is clicked.

#### Example
    <kendo:chart axisLabelClick="handle_axisLabelClick">
    </kendo:chart>
    <script>
        function handle_axisLabelClick(e) {
            // Code to handle the axisLabelClick event.
        }
    </script>



### dataBound `String`

Fires when the chart has received data from the data source
and is about to render it.

#### Example
    <kendo:chart dataBound="handle_dataBound">
    </kendo:chart>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>



### plotAreaClick `String`

Fires when plot area is clicked.

#### Example
    <kendo:chart plotAreaClick="handle_plotAreaClick">
    </kendo:chart>
    <script>
        function handle_plotAreaClick(e) {
            // Code to handle the plotAreaClick event.
        }
    </script>



### seriesClick `String`

Fires when chart series are clicked.

#### Example
    <kendo:chart seriesClick="handle_seriesClick">
    </kendo:chart>
    <script>
        function handle_seriesClick(e) {
            // Code to handle the seriesClick event.
        }
    </script>



### seriesHover `String`

Fires when chart series are hovered.

#### Example
    <kendo:chart seriesHover="handle_seriesHover">
    </kendo:chart>
    <script>
        function handle_seriesHover(e) {
            // Code to handle the seriesHover event.
        }
    </script>


## Event Tags
           

### kendo:chart-axisLabelClick

Fires when an axis label is clicked.

#### Example
    <kendo:chart>
        <kendo:chart-axisLabelClick>
            <script>
                function(e) {
                    // Code to handle the axisLabelClick event.
                }
            </script>
        </kendo:chart-axisLabelClick>
    </kendo:chart>

 

### kendo:chart-dataBound

Fires when the chart has received data from the data source
and is about to render it.

#### Example
    <kendo:chart>
        <kendo:chart-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:chart-dataBound>
    </kendo:chart>

 

### kendo:chart-plotAreaClick

Fires when plot area is clicked.

#### Example
    <kendo:chart>
        <kendo:chart-plotAreaClick>
            <script>
                function(e) {
                    // Code to handle the plotAreaClick event.
                }
            </script>
        </kendo:chart-plotAreaClick>
    </kendo:chart>

 

### kendo:chart-seriesClick

Fires when chart series are clicked.

#### Example
    <kendo:chart>
        <kendo:chart-seriesClick>
            <script>
                function(e) {
                    // Code to handle the seriesClick event.
                }
            </script>
        </kendo:chart-seriesClick>
    </kendo:chart>

 

### kendo:chart-seriesHover

Fires when chart series are hovered.

#### Example
    <kendo:chart>
        <kendo:chart-seriesHover>
            <script>
                function(e) {
                    // Code to handle the seriesHover event.
                }
            </script>
        </kendo:chart-seriesHover>
    </kendo:chart>

 

## Child JSP Tags

### kendo:chart-categoryAxis

The category axis configuration options.

More documentation is available at [kendo:chart-categoryAxis](/api/wrappers/jsp/chart/categoryaxis).

#### Example

    <kendo:chart>
        <kendo:chart-categoryAxis></kendo:chart-categoryAxis>
    </kendo:chart>
 
### kendo:chart-title

The title of the category axis.

More documentation is available at [kendo:chart-title](/api/wrappers/jsp/chart/title).

#### Example

    <kendo:chart>
        <kendo:chart-title></kendo:chart-title>
    </kendo:chart>
 
### kendo:chart-chartArea

The chart area configuration options.
This is the entire visible area of the chart.

More documentation is available at [kendo:chart-chartArea](/api/wrappers/jsp/chart/chartarea).

#### Example

    <kendo:chart>
        <kendo:chart-chartArea></kendo:chart-chartArea>
    </kendo:chart>
 
### kendo:chart-legend

The chart legend configuration options.

More documentation is available at [kendo:chart-legend](/api/wrappers/jsp/chart/legend).

#### Example

    <kendo:chart>
        <kendo:chart-legend></kendo:chart-legend>
    </kendo:chart>
 
### kendo:chart-plotArea

The plot area configuration options. This is the area containing the plotted series.

More documentation is available at [kendo:chart-plotArea](/api/wrappers/jsp/chart/plotarea).

#### Example

    <kendo:chart>
        <kendo:chart-plotArea></kendo:chart-plotArea>
    </kendo:chart>
 
### kendo:chart-series

Array of series definitions.

More documentation is available at [kendo:chart-series](/api/wrappers/jsp/chart/series).

#### Example

    <kendo:chart>
        <kendo:chart-series></kendo:chart-series>
    </kendo:chart>
 
### kendo:chart-tooltip

The data point tooltip configuration options.

More documentation is available at [kendo:chart-tooltip](/api/wrappers/jsp/chart/tooltip).

#### Example

    <kendo:chart>
        <kendo:chart-tooltip></kendo:chart-tooltip>
    </kendo:chart>
 
### kendo:chart-seriesDefaults

Default values for each series.

More documentation is available at [kendo:chart-seriesDefaults](/api/wrappers/jsp/chart/seriesdefaults).

#### Example

    <kendo:chart>
        <kendo:chart-seriesDefaults></kendo:chart-seriesDefaults>
    </kendo:chart>
 
### kendo:chart-valueAxis

The value axis configuration options.

More documentation is available at [kendo:chart-valueAxis](/api/wrappers/jsp/chart/valueaxis).

#### Example

    <kendo:chart>
        <kendo:chart-valueAxis></kendo:chart-valueAxis>
    </kendo:chart>
 
### kendo:chart-xAxis

Scatter charts X-axis configuration options.
Includes

More documentation is available at [kendo:chart-xAxis](/api/wrappers/jsp/chart/xaxis).

#### Example

    <kendo:chart>
        <kendo:chart-xAxis></kendo:chart-xAxis>
    </kendo:chart>
 
### kendo:chart-yAxis

The axis type.

More documentation is available at [kendo:chart-yAxis](/api/wrappers/jsp/chart/yaxis).

#### Example

    <kendo:chart>
        <kendo:chart-yAxis></kendo:chart-yAxis>
    </kendo:chart>
      
