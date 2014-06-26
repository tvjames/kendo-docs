---
title: chart-seriesDefaults-notes-label
---

# \<kendo:chart-seriesDefaults-notes-label\>

The label of the notes.

#### Example
    <kendo:chart-seriesDefaults-notes>
        <kendo:chart-seriesDefaults-notes-label></kendo:chart-seriesDefaults-notes-label>
    </kendo:chart-seriesDefaults-notes>

## Configuration Attributes

### background `java.lang.String`

The background color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-notes-label background="background">
    </kendo:chart-seriesDefaults-notes-label>

### color `java.lang.String`

The text color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesDefaults-notes-label color="color">
    </kendo:chart-seriesDefaults-notes-label>

### font `java.lang.String`

The font style of the label.

#### Example
    <kendo:chart-seriesDefaults-notes-label font="font">
    </kendo:chart-seriesDefaults-notes-label>

### format `java.lang.String`

The format used to display the notes label. Uses kendo.format. Contains one placeholder ("{0}") which represents the axis value.

#### Example
    <kendo:chart-seriesDefaults-notes-label format="format">
    </kendo:chart-seriesDefaults-notes-label>

### position `java.lang.String`

The position of the labels.

#### Example
    <kendo:chart-seriesDefaults-notes-label position="position">
    </kendo:chart-seriesDefaults-notes-label>

### rotation `float`

The rotation angle of the label. By default the label are not rotated.

#### Example
    <kendo:chart-seriesDefaults-notes-label rotation="rotation">
    </kendo:chart-seriesDefaults-notes-label>

### template `java.lang.String`

The template which renders the labels.The fields which can be used in the template are:

#### Example
    <kendo:chart-seriesDefaults-notes-label template="template">
    </kendo:chart-seriesDefaults-notes-label>

### visible `boolean`

If set to true the chart will display the seriesDefaults notes label. By default the seriesDefaults notes label are visible.

#### Example
    <kendo:chart-seriesDefaults-notes-label visible="visible">
    </kendo:chart-seriesDefaults-notes-label>


##  Configuration JSP Tags

### kendo:chart-seriesDefaults-notes-label-border

The border of the label.

More documentation is available at [kendo:chart-seriesDefaults-notes-label-border](/api/wrappers/jsp/chart/seriesdefaults-notes-label-border).

#### Example

    <kendo:chart-seriesDefaults-notes-label>
        <kendo:chart-seriesDefaults-notes-label-border></kendo:chart-seriesDefaults-notes-label-border>
    </kendo:chart-seriesDefaults-notes-label>


## Event Attributes

### template `String`

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-notes-label template="handle_template">
    </kendo:chart-seriesDefaults-notes-label>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:chart-seriesDefaults-notes-label-template

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:chart-seriesDefaults-notes-label>
        <kendo:chart-seriesDefaults-notes-label-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:chart-seriesDefaults-notes-label-template>
    </kendo:chart-seriesDefaults-notes-label>

