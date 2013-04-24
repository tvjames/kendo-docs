---
title: sparkline-seriesItem-labels
slug: jsp-sparkline-seriesItem-labels
tags: api, java
publish: true
---

# \<kendo:sparkline-seriesItem-labels\>

Configures the series data labels.

#### Example
    <kendo:sparkline-seriesItem>
        <kendo:sparkline-seriesItem-labels></kendo:sparkline-seriesItem-labels>
    </kendo:sparkline-seriesItem>

## Configuration Attributes

### align `String`

Defines the alignment of the labels.** Available for pie series. **

#### Example
    <kendo:sparkline-seriesItem-labels align="align">
    </kendo:sparkline-seriesItem-labels>

### background `String`

The background color of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels background="background">
    </kendo:sparkline-seriesItem-labels>

### color `String`

The text color of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels color="color">
    </kendo:sparkline-seriesItem-labels>

### distance `float`

The distance of the labels.** Available for pie series. **

#### Example
    <kendo:sparkline-seriesItem-labels distance="distance">
    </kendo:sparkline-seriesItem-labels>

### font `String`

The font style of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels font="font">
    </kendo:sparkline-seriesItem-labels>

### format `String`

The format of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels format="format">
    </kendo:sparkline-seriesItem-labels>

### margin `Object`

The margin of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels margin="margin">
    </kendo:sparkline-seriesItem-labels>

### padding `Object`

The padding of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels padding="padding">
    </kendo:sparkline-seriesItem-labels>

### position `String`

Defines the position of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels position="position">
    </kendo:sparkline-seriesItem-labels>

### template `String`

The label template. Template variables:

#### Example
    <kendo:sparkline-seriesItem-labels template="template">
    </kendo:sparkline-seriesItem-labels>

### visible `boolean`

The visibility of the labels.

#### Example
    <kendo:sparkline-seriesItem-labels visible="visible">
    </kendo:sparkline-seriesItem-labels>


##  Configuration JSP Tags

### kendo:sparkline-seriesItem-labels-border

The border of the labels.

More documentation is available at [kendo:sparkline-seriesItem-labels-border](sparkline/seriesitem-labels-border).

#### Example

    <kendo:sparkline-seriesItem-labels>
        <kendo:sparkline-seriesItem-labels-border></kendo:sparkline-seriesItem-labels-border>
    </kendo:sparkline-seriesItem-labels>


## Event Attributes

### template `String`

The label template. Template variables:


#### Example
    <kendo:sparkline-seriesItem-labels template="handle_template">
    </kendo:sparkline-seriesItem-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:sparkline-seriesItem-labels-template

The label template. Template variables:


#### Example
    <kendo:sparkline-seriesItem-labels>
        <kendo:sparkline-seriesItem-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:sparkline-seriesItem-labels-template>
    </kendo:sparkline-seriesItem-labels>

