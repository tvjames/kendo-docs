---
title: chart-yAxisItem-crosshair-tooltip
---

# \<kendo:chart-yAxisItem-crosshair-tooltip\>

The crosshar tooltip options.

#### Example
    <kendo:chart-yAxisItem-crosshair>
        <kendo:chart-yAxisItem-crosshair-tooltip></kendo:chart-yAxisItem-crosshair-tooltip>
    </kendo:chart-yAxisItem-crosshair>

## Configuration Attributes

### background `java.lang.String`

The background color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip background="background">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### color `java.lang.String`

The text color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip color="color">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### font `java.lang.String`

The tooltip font.

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip font="font">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### format `java.lang.String`

The format used to display the tooltip. Uses kendo.format. Contains one placeholder ("{0}") which represents the value value.

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip format="format">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### padding `float`

The padding of the crosshair tooltip. A numeric value will set all paddings. Further configuration is available via [kendo:chart-yAxisItem-crosshair-tooltip-padding](#kendo-chart-yAxisItem-crosshair-tooltip-padding). 

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip padding="padding">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### template `java.lang.String`

The template which renders the tooltip.The fields which can be used in the template are:

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip template="template">
    </kendo:chart-yAxisItem-crosshair-tooltip>

### visible `boolean`

If set to true the chart will display the scatter chart y axis crosshair tooltip. By default the scatter chart y axis crosshair tooltip is not visible.

#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip visible="visible">
    </kendo:chart-yAxisItem-crosshair-tooltip>


##  Configuration JSP Tags

### kendo:chart-yAxisItem-crosshair-tooltip-border

The border options.

More documentation is available at [kendo:chart-yAxisItem-crosshair-tooltip-border](/api/wrappers/jsp/chart/yaxisitem-crosshair-tooltip-border).

#### Example

    <kendo:chart-yAxisItem-crosshair-tooltip>
        <kendo:chart-yAxisItem-crosshair-tooltip-border></kendo:chart-yAxisItem-crosshair-tooltip-border>
    </kendo:chart-yAxisItem-crosshair-tooltip>

### kendo:chart-yAxisItem-crosshair-tooltip-padding

The padding of the crosshair tooltip. A numeric value will set all paddings.

More documentation is available at [kendo:chart-yAxisItem-crosshair-tooltip-padding](/api/wrappers/jsp/chart/yaxisitem-crosshair-tooltip-padding).

#### Example

    <kendo:chart-yAxisItem-crosshair-tooltip>
        <kendo:chart-yAxisItem-crosshair-tooltip-padding></kendo:chart-yAxisItem-crosshair-tooltip-padding>
    </kendo:chart-yAxisItem-crosshair-tooltip>


## Event Attributes

### template `String`

The template which renders the tooltip.The fields which can be used in the template are:


#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip template="handle_template">
    </kendo:chart-yAxisItem-crosshair-tooltip>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-yAxisItem-crosshair-tooltip-template

The template which renders the tooltip.The fields which can be used in the template are:


#### Example
    <kendo:chart-yAxisItem-crosshair-tooltip>
        <kendo:chart-yAxisItem-crosshair-tooltip-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-yAxisItem-crosshair-tooltip-template>
    </kendo:chart-yAxisItem-crosshair-tooltip>

