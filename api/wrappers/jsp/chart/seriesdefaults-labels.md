---
title: chart-seriesDefaults-labels
---

# \<kendo:chart-seriesDefaults-labels\>

The chart series label configuration.

#### Example
    <kendo:chart-seriesDefaults>
        <kendo:chart-seriesDefaults-labels></kendo:chart-seriesDefaults-labels>
    </kendo:chart-seriesDefaults>

## Configuration Attributes

### background `java.lang.String`

The background color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-labels background="background">
    </kendo:chart-seriesDefaults-labels>

### color `java.lang.String`

The text color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-labels color="color">
    </kendo:chart-seriesDefaults-labels>

### font `java.lang.String`

The font style of the labels.

#### Example
    <kendo:chart-seriesDefaults-labels font="font">
    </kendo:chart-seriesDefaults-labels>

### format `java.lang.String`

The format of the labels. Uses kendo.format.

#### Example
    <kendo:chart-seriesDefaults-labels format="format">
    </kendo:chart-seriesDefaults-labels>

### margin `float`

The margin of the labels. A numeric value will set all margins. Further configuration is available via [kendo:chart-seriesDefaults-labels-margin](#kendo-chart-seriesDefaults-labels-margin). 

#### Example
    <kendo:chart-seriesDefaults-labels margin="margin">
    </kendo:chart-seriesDefaults-labels>

### padding `float`

The padding of the labels. A numeric value will set all margins. Further configuration is available via [kendo:chart-seriesDefaults-labels-padding](#kendo-chart-seriesDefaults-labels-padding). 

#### Example
    <kendo:chart-seriesDefaults-labels padding="padding">
    </kendo:chart-seriesDefaults-labels>

### template `java.lang.String`

The template which renders the chart series label.The fields which can be used in the template are:

#### Example
    <kendo:chart-seriesDefaults-labels template="template">
    </kendo:chart-seriesDefaults-labels>

### visible `boolean`

If set to true the chart will display the series labels. By default chart series labels are not displayed.

#### Example
    <kendo:chart-seriesDefaults-labels visible="visible">
    </kendo:chart-seriesDefaults-labels>


##  Configuration JSP Tags

### kendo:chart-seriesDefaults-labels-border

The border of the labels.

More documentation is available at [kendo:chart-seriesDefaults-labels-border](/api/wrappers/jsp/chart/seriesdefaults-labels-border).

#### Example

    <kendo:chart-seriesDefaults-labels>
        <kendo:chart-seriesDefaults-labels-border></kendo:chart-seriesDefaults-labels-border>
    </kendo:chart-seriesDefaults-labels>

### kendo:chart-seriesDefaults-labels-margin

The margin of the labels. A numeric value will set all margins.

More documentation is available at [kendo:chart-seriesDefaults-labels-margin](/api/wrappers/jsp/chart/seriesdefaults-labels-margin).

#### Example

    <kendo:chart-seriesDefaults-labels>
        <kendo:chart-seriesDefaults-labels-margin></kendo:chart-seriesDefaults-labels-margin>
    </kendo:chart-seriesDefaults-labels>

### kendo:chart-seriesDefaults-labels-padding

The padding of the labels. A numeric value will set all margins.

More documentation is available at [kendo:chart-seriesDefaults-labels-padding](/api/wrappers/jsp/chart/seriesdefaults-labels-padding).

#### Example

    <kendo:chart-seriesDefaults-labels>
        <kendo:chart-seriesDefaults-labels-padding></kendo:chart-seriesDefaults-labels-padding>
    </kendo:chart-seriesDefaults-labels>


## Event Attributes

### template `String`

The template which renders the chart series label.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-labels template="handle_template">
    </kendo:chart-seriesDefaults-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-seriesDefaults-labels-template

The template which renders the chart series label.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-labels>
        <kendo:chart-seriesDefaults-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-seriesDefaults-labels-template>
    </kendo:chart-seriesDefaults-labels>

