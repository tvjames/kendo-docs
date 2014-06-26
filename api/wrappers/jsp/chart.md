---
title: chart
---

# \<kendo:chart\>
A JSP wrapper for Kendo UI [Chart](/api/dataviz/chart).

## Configuration Attributes

### autoBind `boolean`

If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Example
    <kendo:chart autoBind="autoBind">
    </kendo:chart>

### renderAs `java.lang.String`

Sets the preferred rendering engine.
If it is not supported by the browser, the Chart will switch to the first available mode.The supported values are:

#### Example
    <kendo:chart renderAs="renderAs">
    </kendo:chart>

### seriesColors `java.lang.Object`

The default colors for the chart's series. When all colors are used, new colors are pulled from the start again.

#### Example
    <kendo:chart seriesColors="seriesColors">
    </kendo:chart>

### theme `java.lang.String`

The chart theme.The supported values are:

#### Example
    <kendo:chart theme="theme">
    </kendo:chart>

### title `java.lang.String`

The chart title configuration options or text. Further configuration is available via [kendo:chart-title](#kendo-chart-title). 

#### Example
    <kendo:chart title="title">
    </kendo:chart>

### transitions `boolean`

If set to true the chart will play animations when displaying the series. By default animations are enabled.

#### Example
    <kendo:chart transitions="transitions">
    </kendo:chart>


##  Configuration JSP Tags

### kendo:chart-categoryAxis

The category axis configuration options.

More documentation is available at [kendo:chart-categoryAxis](/api/wrappers/jsp/chart/categoryaxis).

#### Example

    <kendo:chart>
        <kendo:chart-categoryAxis></kendo:chart-categoryAxis>
    </kendo:chart>

### kendo:chart-chartArea

The chart area configuration options. Represents the entire visible area of the chart.

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

### kendo:chart-panes

The chart panes configuration.Panes are used to split the chart in two or more parts. The panes are ordered from top to bottom.Each axis can be associated with a pane by setting its pane option to the name of the desired pane.
Axis that don't have specified pane are placed in the top (default) pane.Series are moved to the desired pane by associating them with an axis.

More documentation is available at [kendo:chart-panes](/api/wrappers/jsp/chart/panes).

#### Example

    <kendo:chart>
        <kendo:chart-panes></kendo:chart-panes>
    </kendo:chart>

### kendo:chart-plotArea

The plot area configuration options. The plot area is the area which displays the series.

More documentation is available at [kendo:chart-plotArea](/api/wrappers/jsp/chart/plotarea).

#### Example

    <kendo:chart>
        <kendo:chart-plotArea></kendo:chart-plotArea>
    </kendo:chart>

### kendo:chart-series

The configuration of the chart series.The series type is determined by the value of the type field.
If a type value is missing, the type is assumed to be the one specified in seriesDefaults.

More documentation is available at [kendo:chart-series](/api/wrappers/jsp/chart/series).

#### Example

    <kendo:chart>
        <kendo:chart-series></kendo:chart-series>
    </kendo:chart>

### kendo:chart-seriesDefaults

The default options for all series.

More documentation is available at [kendo:chart-seriesDefaults](/api/wrappers/jsp/chart/seriesdefaults).

#### Example

    <kendo:chart>
        <kendo:chart-seriesDefaults></kendo:chart-seriesDefaults>
    </kendo:chart>

### kendo:chart-title

The chart title configuration options or text.

More documentation is available at [kendo:chart-title](/api/wrappers/jsp/chart/title).

#### Example

    <kendo:chart>
        <kendo:chart-title></kendo:chart-title>
    </kendo:chart>

### kendo:chart-tooltip

The chart series tooltip configuration options.

More documentation is available at [kendo:chart-tooltip](/api/wrappers/jsp/chart/tooltip).

#### Example

    <kendo:chart>
        <kendo:chart-tooltip></kendo:chart-tooltip>
    </kendo:chart>

### kendo:chart-valueAxis

The value axis configuration options.

More documentation is available at [kendo:chart-valueAxis](/api/wrappers/jsp/chart/valueaxis).

#### Example

    <kendo:chart>
        <kendo:chart-valueAxis></kendo:chart-valueAxis>
    </kendo:chart>

### kendo:chart-xAxis

The X-axis configuration options of the scatter chart X-axis. Supports all valueAxis options.

More documentation is available at [kendo:chart-xAxis](/api/wrappers/jsp/chart/xaxis).

#### Example

    <kendo:chart>
        <kendo:chart-xAxis></kendo:chart-xAxis>
    </kendo:chart>

### kendo:chart-yAxis

The y axis configuration options of the scatter chart. Supports all valueAxis options.

More documentation is available at [kendo:chart-yAxis](/api/wrappers/jsp/chart/yaxis).

#### Example

    <kendo:chart>
        <kendo:chart-yAxis></kendo:chart-yAxis>
    </kendo:chart>


## Event Attributes

### axisLabelClick `String`

Fired when the user clicks an axis label.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [axisLabelClick](/api/dataviz/chart#events-axisLabelClick) event documentation.

#### Example
    <kendo:chart axisLabelClick="handle_axisLabelClick">
    </kendo:chart>
    <script>
        function handle_axisLabelClick(e) {
            // Code to handle the axisLabelClick event.
        }
    </script>

### legendItemClick `String`

Fires when an legend item is clicked.


For additional information check the [legendItemClick](/api/dataviz/chart#events-legendItemClick) event documentation.

#### Example
    <kendo:chart legendItemClick="handle_legendItemClick">
    </kendo:chart>
    <script>
        function handle_legendItemClick(e) {
            // Code to handle the legendItemClick event.
        }
    </script>

### legendItemHover `String`

Fires when an legend item is hovered.


For additional information check the [legendItemHover](/api/dataviz/chart#events-legendItemHover) event documentation.

#### Example
    <kendo:chart legendItemHover="handle_legendItemHover">
    </kendo:chart>
    <script>
        function handle_legendItemHover(e) {
            // Code to handle the legendItemHover event.
        }
    </script>

### dataBound `String`

Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/dataviz/chart#events-dataBound) event documentation.

#### Example
    <kendo:chart dataBound="handle_dataBound">
    </kendo:chart>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>

### drag `String`

Fired as long as the user is dragging the chart using the mouse or swipe gestures.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [drag](/api/dataviz/chart#events-drag) event documentation.

#### Example
    <kendo:chart drag="handle_drag">
    </kendo:chart>
    <script>
        function handle_drag(e) {
            // Code to handle the drag event.
        }
    </script>

### dragEnd `String`

Fired when the user stops dragging the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dragEnd](/api/dataviz/chart#events-dragEnd) event documentation.

#### Example
    <kendo:chart dragEnd="handle_dragEnd">
    </kendo:chart>
    <script>
        function handle_dragEnd(e) {
            // Code to handle the dragEnd event.
        }
    </script>

### dragStart `String`

Fired when the user starts dragging the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dragStart](/api/dataviz/chart#events-dragStart) event documentation.

#### Example
    <kendo:chart dragStart="handle_dragStart">
    </kendo:chart>
    <script>
        function handle_dragStart(e) {
            // Code to handle the dragStart event.
        }
    </script>

### noteClick `String`

Fired when the user clicks one of the notes.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [noteClick](/api/dataviz/chart#events-noteClick) event documentation.

#### Example
    <kendo:chart noteClick="handle_noteClick">
    </kendo:chart>
    <script>
        function handle_noteClick(e) {
            // Code to handle the noteClick event.
        }
    </script>

### noteHover `String`

Fired when the user hovers one of the notes.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [noteHover](/api/dataviz/chart#events-noteHover) event documentation.

#### Example
    <kendo:chart noteHover="handle_noteHover">
    </kendo:chart>
    <script>
        function handle_noteHover(e) {
            // Code to handle the noteHover event.
        }
    </script>

### plotAreaClick `String`

Fired when the user clicks the plot area.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [plotAreaClick](/api/dataviz/chart#events-plotAreaClick) event documentation.

#### Example
    <kendo:chart plotAreaClick="handle_plotAreaClick">
    </kendo:chart>
    <script>
        function handle_plotAreaClick(e) {
            // Code to handle the plotAreaClick event.
        }
    </script>

### select `String`

Fired when the user modifies the selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [select](/api/dataviz/chart#events-select) event documentation.

#### Example
    <kendo:chart select="handle_select">
    </kendo:chart>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

### selectEnd `String`

Fired when the user completes modifying the selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [selectEnd](/api/dataviz/chart#events-selectEnd) event documentation.

#### Example
    <kendo:chart selectEnd="handle_selectEnd">
    </kendo:chart>
    <script>
        function handle_selectEnd(e) {
            // Code to handle the selectEnd event.
        }
    </script>

### selectStart `String`

Fired when the user starts modifying the axis selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [selectStart](/api/dataviz/chart#events-selectStart) event documentation.

#### Example
    <kendo:chart selectStart="handle_selectStart">
    </kendo:chart>
    <script>
        function handle_selectStart(e) {
            // Code to handle the selectStart event.
        }
    </script>

### seriesClick `String`

Fired when the user clicks the chart series.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [seriesClick](/api/dataviz/chart#events-seriesClick) event documentation.

#### Example
    <kendo:chart seriesClick="handle_seriesClick">
    </kendo:chart>
    <script>
        function handle_seriesClick(e) {
            // Code to handle the seriesClick event.
        }
    </script>

### seriesHover `String`

Fired when the user hovers the chart series.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [seriesHover](/api/dataviz/chart#events-seriesHover) event documentation.

#### Example
    <kendo:chart seriesHover="handle_seriesHover">
    </kendo:chart>
    <script>
        function handle_seriesHover(e) {
            // Code to handle the seriesHover event.
        }
    </script>

### zoom `String`

Fired as long as the user is zooming the chart using the mousewheel.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoom](/api/dataviz/chart#events-zoom) event documentation.

#### Example
    <kendo:chart zoom="handle_zoom">
    </kendo:chart>
    <script>
        function handle_zoom(e) {
            // Code to handle the zoom event.
        }
    </script>

### zoomEnd `String`

Fired when the user stops zooming the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoomEnd](/api/dataviz/chart#events-zoomEnd) event documentation.

#### Example
    <kendo:chart zoomEnd="handle_zoomEnd">
    </kendo:chart>
    <script>
        function handle_zoomEnd(e) {
            // Code to handle the zoomEnd event.
        }
    </script>

### zoomStart `String`

Fired when the user uses the mousewheel to zoom the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoomStart](/api/dataviz/chart#events-zoomStart) event documentation.

#### Example
    <kendo:chart zoomStart="handle_zoomStart">
    </kendo:chart>
    <script>
        function handle_zoomStart(e) {
            // Code to handle the zoomStart event.
        }
    </script>

## Event Tags

### kendo:chart-axisLabelClick

Fired when the user clicks an axis label.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [axisLabelClick](/api/dataviz/chart#events-axisLabelClick) event documentation.

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

### kendo:chart-legendItemClick

Fires when an legend item is clicked.


For additional information check the [legendItemClick](/api/dataviz/chart#events-legendItemClick) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-legendItemClick>
            <script>
                function(e) {
                    // Code to handle the legendItemClick event.
                }
            </script>
        </kendo:chart-legendItemClick>
    </kendo:chart>

### kendo:chart-legendItemHover

Fires when an legend item is hovered.


For additional information check the [legendItemHover](/api/dataviz/chart#events-legendItemHover) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-legendItemHover>
            <script>
                function(e) {
                    // Code to handle the legendItemHover event.
                }
            </script>
        </kendo:chart-legendItemHover>
    </kendo:chart>

### kendo:chart-dataBound

Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/dataviz/chart#events-dataBound) event documentation.

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

### kendo:chart-drag

Fired as long as the user is dragging the chart using the mouse or swipe gestures.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [drag](/api/dataviz/chart#events-drag) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-drag>
            <script>
                function(e) {
                    // Code to handle the drag event.
                }
            </script>
        </kendo:chart-drag>
    </kendo:chart>

### kendo:chart-dragEnd

Fired when the user stops dragging the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dragEnd](/api/dataviz/chart#events-dragEnd) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-dragEnd>
            <script>
                function(e) {
                    // Code to handle the dragEnd event.
                }
            </script>
        </kendo:chart-dragEnd>
    </kendo:chart>

### kendo:chart-dragStart

Fired when the user starts dragging the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dragStart](/api/dataviz/chart#events-dragStart) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-dragStart>
            <script>
                function(e) {
                    // Code to handle the dragStart event.
                }
            </script>
        </kendo:chart-dragStart>
    </kendo:chart>

### kendo:chart-noteClick

Fired when the user clicks one of the notes.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [noteClick](/api/dataviz/chart#events-noteClick) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-noteClick>
            <script>
                function(e) {
                    // Code to handle the noteClick event.
                }
            </script>
        </kendo:chart-noteClick>
    </kendo:chart>

### kendo:chart-noteHover

Fired when the user hovers one of the notes.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [noteHover](/api/dataviz/chart#events-noteHover) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-noteHover>
            <script>
                function(e) {
                    // Code to handle the noteHover event.
                }
            </script>
        </kendo:chart-noteHover>
    </kendo:chart>

### kendo:chart-plotAreaClick

Fired when the user clicks the plot area.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [plotAreaClick](/api/dataviz/chart#events-plotAreaClick) event documentation.

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

### kendo:chart-select

Fired when the user modifies the selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [select](/api/dataviz/chart#events-select) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:chart-select>
    </kendo:chart>

### kendo:chart-selectEnd

Fired when the user completes modifying the selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [selectEnd](/api/dataviz/chart#events-selectEnd) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-selectEnd>
            <script>
                function(e) {
                    // Code to handle the selectEnd event.
                }
            </script>
        </kendo:chart-selectEnd>
    </kendo:chart>

### kendo:chart-selectStart

Fired when the user starts modifying the axis selection.The range units are:The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [selectStart](/api/dataviz/chart#events-selectStart) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-selectStart>
            <script>
                function(e) {
                    // Code to handle the selectStart event.
                }
            </script>
        </kendo:chart-selectStart>
    </kendo:chart>

### kendo:chart-seriesClick

Fired when the user clicks the chart series.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [seriesClick](/api/dataviz/chart#events-seriesClick) event documentation.

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

Fired when the user hovers the chart series.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [seriesHover](/api/dataviz/chart#events-seriesHover) event documentation.

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

### kendo:chart-zoom

Fired as long as the user is zooming the chart using the mousewheel.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoom](/api/dataviz/chart#events-zoom) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-zoom>
            <script>
                function(e) {
                    // Code to handle the zoom event.
                }
            </script>
        </kendo:chart-zoom>
    </kendo:chart>

### kendo:chart-zoomEnd

Fired when the user stops zooming the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoomEnd](/api/dataviz/chart#events-zoomEnd) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-zoomEnd>
            <script>
                function(e) {
                    // Code to handle the zoomEnd event.
                }
            </script>
        </kendo:chart-zoomEnd>
    </kendo:chart>

### kendo:chart-zoomStart

Fired when the user uses the mousewheel to zoom the chart.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [zoomStart](/api/dataviz/chart#events-zoomStart) event documentation.

#### Example
    <kendo:chart>
        <kendo:chart-zoomStart>
            <script>
                function(e) {
                    // Code to handle the zoomStart event.
                }
            </script>
        </kendo:chart-zoomStart>
    </kendo:chart>

