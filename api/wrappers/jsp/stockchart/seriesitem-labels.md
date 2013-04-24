---
title: stockChart-seriesItem-labels
slug: jsp-stockChart-seriesItem-labels
tags: api, java
publish: true
---

# \<kendo:stockChart-seriesItem-labels\>

Configures the series data labels.

#### Example
    <kendo:stockChart-seriesItem>
        <kendo:stockChart-seriesItem-labels></kendo:stockChart-seriesItem-labels>
    </kendo:stockChart-seriesItem>

## Configuration Attributes

### background `String`

The background color of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels background="background">
    </kendo:stockChart-seriesItem-labels>

### color `String`

The text color of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels color="color">
    </kendo:stockChart-seriesItem-labels>

### font `String`

The font style of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels font="font">
    </kendo:stockChart-seriesItem-labels>

### format `String`

The format of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels format="format">
    </kendo:stockChart-seriesItem-labels>

### margin `Object`

The margin of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels margin="margin">
    </kendo:stockChart-seriesItem-labels>

### padding `Object`

The padding of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels padding="padding">
    </kendo:stockChart-seriesItem-labels>

### position `String`

Defines the position of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels position="position">
    </kendo:stockChart-seriesItem-labels>

### template `String`

The label template. Template variables:

#### Example
    <kendo:stockChart-seriesItem-labels template="template">
    </kendo:stockChart-seriesItem-labels>

### visible `boolean`

The visibility of the labels.

#### Example
    <kendo:stockChart-seriesItem-labels visible="visible">
    </kendo:stockChart-seriesItem-labels>


##  Configuration JSP Tags

### kendo:stockChart-seriesItem-labels-border

The border of the labels.

More documentation is available at [kendo:stockChart-seriesItem-labels-border](stockchart/seriesitem-labels-border).

#### Example

    <kendo:stockChart-seriesItem-labels>
        <kendo:stockChart-seriesItem-labels-border></kendo:stockChart-seriesItem-labels-border>
    </kendo:stockChart-seriesItem-labels>


## Event Attributes

### template `String`

The label template. Template variables:


#### Example
    <kendo:stockChart-seriesItem-labels template="handle_template">
    </kendo:stockChart-seriesItem-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:stockChart-seriesItem-labels-template

The label template. Template variables:


#### Example
    <kendo:stockChart-seriesItem-labels>
        <kendo:stockChart-seriesItem-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:stockChart-seriesItem-labels-template>
    </kendo:stockChart-seriesItem-labels>

