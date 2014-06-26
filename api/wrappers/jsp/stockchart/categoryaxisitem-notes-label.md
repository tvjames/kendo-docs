---
title: stockChart-categoryAxisItem-notes-label
---

# \<kendo:stockChart-categoryAxisItem-notes-label\>

The label of the notes.

#### Example
    <kendo:stockChart-categoryAxisItem-notes>
        <kendo:stockChart-categoryAxisItem-notes-label></kendo:stockChart-categoryAxisItem-notes-label>
    </kendo:stockChart-categoryAxisItem-notes>

## Configuration Attributes

### background `java.lang.String`

The background color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label background="background">
    </kendo:stockChart-categoryAxisItem-notes-label>

### color `java.lang.String`

The text color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label color="color">
    </kendo:stockChart-categoryAxisItem-notes-label>

### font `java.lang.String`

The font style of the label.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label font="font">
    </kendo:stockChart-categoryAxisItem-notes-label>

### format `java.lang.String`

The format used to display the notes label. Uses kendo.format. Contains one placeholder ("{0}") which represents the category value.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label format="format">
    </kendo:stockChart-categoryAxisItem-notes-label>

### position `java.lang.String`

The position of the labels.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label position="position">
    </kendo:stockChart-categoryAxisItem-notes-label>

### rotation `float`

The rotation angle of the label. By default the label are not rotated.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label rotation="rotation">
    </kendo:stockChart-categoryAxisItem-notes-label>

### template `java.lang.String`

The template which renders the labels.The fields which can be used in the template are:

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label template="template">
    </kendo:stockChart-categoryAxisItem-notes-label>

### visible `boolean`

If set to true the chart will display the category notes label. By default the category notes label are visible.

#### Example
    <kendo:stockChart-categoryAxisItem-notes-label visible="visible">
    </kendo:stockChart-categoryAxisItem-notes-label>


##  Configuration JSP Tags

### kendo:stockChart-categoryAxisItem-notes-label-border

The border of the label.

More documentation is available at [kendo:stockChart-categoryAxisItem-notes-label-border](/api/wrappers/jsp/stockchart/categoryaxisitem-notes-label-border).

#### Example

    <kendo:stockChart-categoryAxisItem-notes-label>
        <kendo:stockChart-categoryAxisItem-notes-label-border></kendo:stockChart-categoryAxisItem-notes-label-border>
    </kendo:stockChart-categoryAxisItem-notes-label>


## Event Attributes

### template `String`

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:stockChart-categoryAxisItem-notes-label template="handle_template">
    </kendo:stockChart-categoryAxisItem-notes-label>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:stockChart-categoryAxisItem-notes-label-template

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:stockChart-categoryAxisItem-notes-label>
        <kendo:stockChart-categoryAxisItem-notes-label-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:stockChart-categoryAxisItem-notes-label-template>
    </kendo:stockChart-categoryAxisItem-notes-label>

