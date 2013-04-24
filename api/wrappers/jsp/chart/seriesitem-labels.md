---
title: chart-seriesItem-labels
slug: jsp-chart-seriesItem-labels
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-labels\>

The chart series label configuration.

#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-labels></kendo:chart-seriesItem-labels>
    </kendo:chart-seriesItem>

## Configuration Attributes

### align `String`

The label alignment when series.type is set to "donut" or "pie".The supported values are:

#### Example
    <kendo:chart-seriesItem-labels align="align">
    </kendo:chart-seriesItem-labels>

### background `String`

The background color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem-labels background="background">
    </kendo:chart-seriesItem-labels>

### color `String`

The text color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem-labels color="color">
    </kendo:chart-seriesItem-labels>

### distance `float`

The distance of the labels when series.type is set to "donut" or "pie".

#### Example
    <kendo:chart-seriesItem-labels distance="distance">
    </kendo:chart-seriesItem-labels>

### font `String`

The font style of the labels.

#### Example
    <kendo:chart-seriesItem-labels font="font">
    </kendo:chart-seriesItem-labels>

### format `String`

The format of the labels. Uses kendo.format.

#### Example
    <kendo:chart-seriesItem-labels format="format">
    </kendo:chart-seriesItem-labels>

### margin `float`

The margin of the labels. A numeric value will set all margins. Further configuration is available via [kendo:chart-seriesItem-labels-margin](#kendo-chart-seriesItem-labels-margin). 

#### Example
    <kendo:chart-seriesItem-labels margin="margin">
    </kendo:chart-seriesItem-labels>

### padding `float`

The padding of the labels. A numeric value will set all paddings. Further configuration is available via [kendo:chart-seriesItem-labels-padding](#kendo-chart-seriesItem-labels-padding). 

#### Example
    <kendo:chart-seriesItem-labels padding="padding">
    </kendo:chart-seriesItem-labels>

### position `String`

The position of the labels.

#### Example
    <kendo:chart-seriesItem-labels position="position">
    </kendo:chart-seriesItem-labels>

### template `String`

The template which renders the chart series label.The fields which can be used in the template are:

#### Example
    <kendo:chart-seriesItem-labels template="template">
    </kendo:chart-seriesItem-labels>

### visible `boolean`

If set to true the chart will display the series labels. By default chart series labels are not displayed.

#### Example
    <kendo:chart-seriesItem-labels visible="visible">
    </kendo:chart-seriesItem-labels>


##  Configuration JSP Tags

### kendo:chart-seriesItem-labels-border

The border of the labels.

More documentation is available at [kendo:chart-seriesItem-labels-border](chart/seriesitem-labels-border).

#### Example

    <kendo:chart-seriesItem-labels>
        <kendo:chart-seriesItem-labels-border></kendo:chart-seriesItem-labels-border>
    </kendo:chart-seriesItem-labels>

### kendo:chart-seriesItem-labels-margin

The margin of the labels. A numeric value will set all margins.

More documentation is available at [kendo:chart-seriesItem-labels-margin](chart/seriesitem-labels-margin).

#### Example

    <kendo:chart-seriesItem-labels>
        <kendo:chart-seriesItem-labels-margin></kendo:chart-seriesItem-labels-margin>
    </kendo:chart-seriesItem-labels>

### kendo:chart-seriesItem-labels-padding

The padding of the labels. A numeric value will set all paddings.

More documentation is available at [kendo:chart-seriesItem-labels-padding](chart/seriesitem-labels-padding).

#### Example

    <kendo:chart-seriesItem-labels>
        <kendo:chart-seriesItem-labels-padding></kendo:chart-seriesItem-labels-padding>
    </kendo:chart-seriesItem-labels>


## Event Attributes

### template `String`

The template which renders the chart series label.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesItem-labels template="handle_template">
    </kendo:chart-seriesItem-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-labels-template

The template which renders the chart series label.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesItem-labels>
        <kendo:chart-seriesItem-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-seriesItem-labels-template>
    </kendo:chart-seriesItem-labels>

