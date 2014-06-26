---
title: stockChart-seriesDefaults-labels
---

# \<kendo:stockChart-seriesDefaults-labels\>

Configures the series data labels.

#### Example
    <kendo:stockChart-seriesDefaults>
        <kendo:stockChart-seriesDefaults-labels></kendo:stockChart-seriesDefaults-labels>
    </kendo:stockChart-seriesDefaults>

## Configuration Attributes

### background `java.lang.String`

The background color of the labels. Any valid CSS color string will work here,
including hex and rgb.

#### Example
    <kendo:stockChart-seriesDefaults-labels background="background">
    </kendo:stockChart-seriesDefaults-labels>

### color `java.lang.String`

The text color of the labels. Any valid CSS color string will work here, including hex
and rgb.

#### Example
    <kendo:stockChart-seriesDefaults-labels color="color">
    </kendo:stockChart-seriesDefaults-labels>

### font `java.lang.String`

The font style of the labels.
labels

#### Example
    <kendo:stockChart-seriesDefaults-labels font="font">
    </kendo:stockChart-seriesDefaults-labels>

### format `java.lang.String`

The format of the labels.

#### Example
    <kendo:stockChart-seriesDefaults-labels format="format">
    </kendo:stockChart-seriesDefaults-labels>

### margin `java.lang.Object`

The margin of the labels.

#### Example
    <kendo:stockChart-seriesDefaults-labels margin="margin">
    </kendo:stockChart-seriesDefaults-labels>

### padding `java.lang.Object`

The padding of the labels.

#### Example
    <kendo:stockChart-seriesDefaults-labels padding="padding">
    </kendo:stockChart-seriesDefaults-labels>

### template `java.lang.String`

The label template.
Template variables:

#### Example
    <kendo:stockChart-seriesDefaults-labels template="template">
    </kendo:stockChart-seriesDefaults-labels>

### visible `boolean`

The visibility of the labels.

#### Example
    <kendo:stockChart-seriesDefaults-labels visible="visible">
    </kendo:stockChart-seriesDefaults-labels>


##  Configuration JSP Tags

### kendo:stockChart-seriesDefaults-labels-border

The border of the labels.

More documentation is available at [kendo:stockChart-seriesDefaults-labels-border](/api/wrappers/jsp/stockchart/seriesdefaults-labels-border).

#### Example

    <kendo:stockChart-seriesDefaults-labels>
        <kendo:stockChart-seriesDefaults-labels-border></kendo:stockChart-seriesDefaults-labels-border>
    </kendo:stockChart-seriesDefaults-labels>


## Event Attributes

### template `String`

The label template.
Template variables:


#### Example
    <kendo:stockChart-seriesDefaults-labels template="handle_template">
    </kendo:stockChart-seriesDefaults-labels>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:stockChart-seriesDefaults-labels-template

The label template.
Template variables:


#### Example
    <kendo:stockChart-seriesDefaults-labels>
        <kendo:stockChart-seriesDefaults-labels-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:stockChart-seriesDefaults-labels-template>
    </kendo:stockChart-seriesDefaults-labels>

