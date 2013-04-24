---
title: chart-valueAxisItem-labels
slug: jsp-chart-valueAxisItem-labels
tags: api, java
publish: true
---

# \<kendo:chart-valueAxisItem-labels\>

The axis labels configuration.

#### Example
    <kendo:chart-valueAxisItem>
        <kendo:chart-valueAxisItem-labels></kendo:chart-valueAxisItem-labels>
    </kendo:chart-valueAxisItem>

## Configuration Attributes

### background `String`

The background color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-valueAxisItem-labels background="background">
    </kendo:chart-valueAxisItem-labels>

### color `String`

The text color of the labels. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-valueAxisItem-labels color="color">
    </kendo:chart-valueAxisItem-labels>

### font `String`

The font style of the labels.

#### Example
    <kendo:chart-valueAxisItem-labels font="font">
    </kendo:chart-valueAxisItem-labels>

### format `String`

The format used to display the labels. Uses kendo.format. Contains one placeholder ("{0}") which represents the category value.

#### Example
    <kendo:chart-valueAxisItem-labels format="format">
    </kendo:chart-valueAxisItem-labels>

### margin `float`

The margin of the labels. A numeric value will set all margins. Further configuration is available via [kendo:chart-valueAxisItem-labels-margin](#kendo-chart-valueAxisItem-labels-margin). 

#### Example
    <kendo:chart-valueAxisItem-labels margin="margin">
    </kendo:chart-valueAxisItem-labels>

### mirror `boolean`

If set to true the chart will mirror the axis labels and ticks. If the labels are normally on the left side of the axis, mirroring the axis will render them to the right.

#### Example
    <kendo:chart-valueAxisItem-labels mirror="mirror">
    </kendo:chart-valueAxisItem-labels>

### padding `float`

The padding of the labels. A numeric value will set all margins. Further configuration is available via [kendo:chart-valueAxisItem-labels-padding](#kendo-chart-valueAxisItem-labels-padding). 

#### Example
    <kendo:chart-valueAxisItem-labels padding="padding">
    </kendo:chart-valueAxisItem-labels>

### rotation `float`

The rotation angle of the labels. By default the labels are not rotated.

#### Example
    <kendo:chart-valueAxisItem-labels rotation="rotation">
    </kendo:chart-valueAxisItem-labels>

### skip `float`

The number of labels to skip. By default no labels are skipped.

#### Example
    <kendo:chart-valueAxisItem-labels skip="skip">
    </kendo:chart-valueAxisItem-labels>

### template `String`

The template which renders the labels.The fields which can be used in the template are:

#### Example
    <kendo:chart-valueAxisItem-labels template="template">
    </kendo:chart-valueAxisItem-labels>

### visible `boolean`

If set to true the chart will display the value axis labels. By default the category axis labels are visible.

#### Example
    <kendo:chart-valueAxisItem-labels visible="visible">
    </kendo:chart-valueAxisItem-labels>


##  Configuration JSP Tags

### kendo:chart-valueAxisItem-labels-border

The border of the labels.

More documentation is available at [kendo:chart-valueAxisItem-labels-border](chart/valueaxisitem-labels-border).

#### Example

    <kendo:chart-valueAxisItem-labels>
        <kendo:chart-valueAxisItem-labels-border></kendo:chart-valueAxisItem-labels-border>
    </kendo:chart-valueAxisItem-labels>

### kendo:chart-valueAxisItem-labels-margin

The margin of the labels. A numeric value will set all margins.

More documentation is available at [kendo:chart-valueAxisItem-labels-margin](chart/valueaxisitem-labels-margin).

#### Example

    <kendo:chart-valueAxisItem-labels>
        <kendo:chart-valueAxisItem-labels-margin></kendo:chart-valueAxisItem-labels-margin>
    </kendo:chart-valueAxisItem-labels>

### kendo:chart-valueAxisItem-labels-padding

The padding of the labels. A numeric value will set all margins.

More documentation is available at [kendo:chart-valueAxisItem-labels-padding](chart/valueaxisitem-labels-padding).

#### Example

    <kendo:chart-valueAxisItem-labels>
        <kendo:chart-valueAxisItem-labels-padding></kendo:chart-valueAxisItem-labels-padding>
    </kendo:chart-valueAxisItem-labels>


## Event Attributes

### template `String`

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:chart-valueAxisItem-labels template="handle_template">
    </kendo:chart-valueAxisItem-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-valueAxisItem-labels-template

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:chart-valueAxisItem-labels>
        <kendo:chart-valueAxisItem-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-valueAxisItem-labels-template>
    </kendo:chart-valueAxisItem-labels>

