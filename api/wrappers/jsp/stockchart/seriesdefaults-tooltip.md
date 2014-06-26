---
title: stockChart-seriesDefaults-tooltip
---

# \<kendo:stockChart-seriesDefaults-tooltip\>

The data point tooltip configuration options.

#### Example
    <kendo:stockChart-seriesDefaults>
        <kendo:stockChart-seriesDefaults-tooltip></kendo:stockChart-seriesDefaults-tooltip>
    </kendo:stockChart-seriesDefaults>

## Configuration Attributes

### background `java.lang.String`

The background color of the tooltip. The default is determined from the series color.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip background="background">
    </kendo:stockChart-seriesDefaults-tooltip>

### color `java.lang.String`

The text color of the tooltip. The default is the same as the series labels color.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip color="color">
    </kendo:stockChart-seriesDefaults-tooltip>

### font `java.lang.String`

The tooltip font.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip font="font">
    </kendo:stockChart-seriesDefaults-tooltip>

### format `java.lang.String`

The tooltip format.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip format="format">
    </kendo:stockChart-seriesDefaults-tooltip>

### padding `java.lang.Object`

The padding of the tooltip.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip padding="padding">
    </kendo:stockChart-seriesDefaults-tooltip>

### template `java.lang.String`

The tooltip template.
Template variables:

#### Example
    <kendo:stockChart-seriesDefaults-tooltip template="template">
    </kendo:stockChart-seriesDefaults-tooltip>

### visible `boolean`

A value indicating if the tooltip should be displayed.

#### Example
    <kendo:stockChart-seriesDefaults-tooltip visible="visible">
    </kendo:stockChart-seriesDefaults-tooltip>


##  Configuration JSP Tags

### kendo:stockChart-seriesDefaults-tooltip-border

The border configuration options.

More documentation is available at [kendo:stockChart-seriesDefaults-tooltip-border](/api/wrappers/jsp/stockchart/seriesdefaults-tooltip-border).

#### Example

    <kendo:stockChart-seriesDefaults-tooltip>
        <kendo:stockChart-seriesDefaults-tooltip-border></kendo:stockChart-seriesDefaults-tooltip-border>
    </kendo:stockChart-seriesDefaults-tooltip>


## Event Attributes

### template `String`

The tooltip template.
Template variables:


#### Example
    <kendo:stockChart-seriesDefaults-tooltip template="handle_template">
    </kendo:stockChart-seriesDefaults-tooltip>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:stockChart-seriesDefaults-tooltip-template

The tooltip template.
Template variables:


#### Example
    <kendo:stockChart-seriesDefaults-tooltip>
        <kendo:stockChart-seriesDefaults-tooltip-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:stockChart-seriesDefaults-tooltip-template>
    </kendo:stockChart-seriesDefaults-tooltip>

