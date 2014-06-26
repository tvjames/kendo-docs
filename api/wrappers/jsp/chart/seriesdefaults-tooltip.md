---
title: chart-seriesDefaults-tooltip
---

# \<kendo:chart-seriesDefaults-tooltip\>

The chart series tooltip configuration options.

#### Example
    <kendo:chart-seriesDefaults>
        <kendo:chart-seriesDefaults-tooltip></kendo:chart-seriesDefaults-tooltip>
    </kendo:chart-seriesDefaults>

## Configuration Attributes

### background `java.lang.String`

The background color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-tooltip background="background">
    </kendo:chart-seriesDefaults-tooltip>

### color `java.lang.String`

The text color of the tooltip. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-tooltip color="color">
    </kendo:chart-seriesDefaults-tooltip>

### font `java.lang.String`

The tooltip font.

#### Example
    <kendo:chart-seriesDefaults-tooltip font="font">
    </kendo:chart-seriesDefaults-tooltip>

### format `java.lang.String`

The format of the labels. Uses kendo.format.Format placeholders:

#### Example
    <kendo:chart-seriesDefaults-tooltip format="format">
    </kendo:chart-seriesDefaults-tooltip>

### padding `float`

The padding of the tooltip. A numeric value will set all paddings. Further configuration is available via [kendo:chart-seriesDefaults-tooltip-padding](#kendo-chart-seriesDefaults-tooltip-padding). 

#### Example
    <kendo:chart-seriesDefaults-tooltip padding="padding">
    </kendo:chart-seriesDefaults-tooltip>

### template `java.lang.String`

The template which renders the tooltip.The fields which can be used in the template are:

#### Example
    <kendo:chart-seriesDefaults-tooltip template="template">
    </kendo:chart-seriesDefaults-tooltip>

### visible `boolean`

If set to true the chart will display the series tooltip. By default the series tooltip is not displayed.

#### Example
    <kendo:chart-seriesDefaults-tooltip visible="visible">
    </kendo:chart-seriesDefaults-tooltip>


##  Configuration JSP Tags

### kendo:chart-seriesDefaults-tooltip-border

The border configuration options.

More documentation is available at [kendo:chart-seriesDefaults-tooltip-border](/api/wrappers/jsp/chart/seriesdefaults-tooltip-border).

#### Example

    <kendo:chart-seriesDefaults-tooltip>
        <kendo:chart-seriesDefaults-tooltip-border></kendo:chart-seriesDefaults-tooltip-border>
    </kendo:chart-seriesDefaults-tooltip>

### kendo:chart-seriesDefaults-tooltip-padding

The padding of the tooltip. A numeric value will set all paddings.

More documentation is available at [kendo:chart-seriesDefaults-tooltip-padding](/api/wrappers/jsp/chart/seriesdefaults-tooltip-padding).

#### Example

    <kendo:chart-seriesDefaults-tooltip>
        <kendo:chart-seriesDefaults-tooltip-padding></kendo:chart-seriesDefaults-tooltip-padding>
    </kendo:chart-seriesDefaults-tooltip>


## Event Attributes

### template `String`

The template which renders the tooltip.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-tooltip template="handle_template">
    </kendo:chart-seriesDefaults-tooltip>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-seriesDefaults-tooltip-template

The template which renders the tooltip.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-tooltip>
        <kendo:chart-seriesDefaults-tooltip-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-seriesDefaults-tooltip-template>
    </kendo:chart-seriesDefaults-tooltip>

