---
title: sparkline-categoryAxisItem-notes-dataItem-label
---

# \<kendo:sparkline-categoryAxisItem-notes-dataItem-label\>

The label of the note.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem>
        <kendo:sparkline-categoryAxisItem-notes-dataItem-label></kendo:sparkline-categoryAxisItem-notes-dataItem-label>
    </kendo:sparkline-categoryAxisItem-notes-dataItem>

## Configuration Attributes

### background `java.lang.String`

The background color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label background="background">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### color `java.lang.String`

The text color of the note label. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label color="color">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### font `java.lang.String`

The font style of the note label.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label font="font">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### format `java.lang.String`

The format used to display the note label. Uses kendo.format. Contains one placeholder ("{0}") which represents the category value.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label format="format">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### position `java.lang.String`

The position of the category axis note label.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label position="position">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### rotation `float`

The rotation angle of the label. By default the label are not rotated.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label rotation="rotation">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### template `java.lang.String`

The template which renders the labels.The fields which can be used in the template are:

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label template="template">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### text `java.lang.String`

The label note text.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label text="text">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

### visible `boolean`

If set to true the chart will display the category notes label. By default the category notes label are visible.

#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label visible="visible">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>


##  Configuration JSP Tags

### kendo:sparkline-categoryAxisItem-notes-dataItem-label-border

The border of the label.

More documentation is available at [kendo:sparkline-categoryAxisItem-notes-dataItem-label-border](/api/wrappers/jsp/sparkline/categoryaxisitem-notes-dataitem-label-border).

#### Example

    <kendo:sparkline-categoryAxisItem-notes-dataItem-label>
        <kendo:sparkline-categoryAxisItem-notes-dataItem-label-border></kendo:sparkline-categoryAxisItem-notes-dataItem-label-border>
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>


## Event Attributes

### template `String`

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label template="handle_template">
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:sparkline-categoryAxisItem-notes-dataItem-label-template

The template which renders the labels.The fields which can be used in the template are:


#### Example
    <kendo:sparkline-categoryAxisItem-notes-dataItem-label>
        <kendo:sparkline-categoryAxisItem-notes-dataItem-label-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:sparkline-categoryAxisItem-notes-dataItem-label-template>
    </kendo:sparkline-categoryAxisItem-notes-dataItem-label>

