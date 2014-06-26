---
title: chart-seriesItem-extremes
---

# \<kendo:chart-seriesItem-extremes\>

The chart series extremes configuration.

#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-extremes></kendo:chart-seriesItem-extremes>
    </kendo:chart-seriesItem>

## Configuration Attributes

### background `java.lang.String`

The background color of the series outliers.

#### Example
    <kendo:chart-seriesItem-extremes background="background">
    </kendo:chart-seriesItem-extremes>

### border `java.lang.String`

The border of the extremes. Further configuration is available via [kendo:chart-seriesItem-extremes-border](#kendo-chart-seriesItem-extremes-border). 

#### Example
    <kendo:chart-seriesItem-extremes border="border">
    </kendo:chart-seriesItem-extremes>

### rotation `float`

The rotation angle of the extremes.

#### Example
    <kendo:chart-seriesItem-extremes rotation="rotation">
    </kendo:chart-seriesItem-extremes>

### size `float`

The extremes size in pixels.

#### Example
    <kendo:chart-seriesItem-extremes size="size">
    </kendo:chart-seriesItem-extremes>

### type `java.lang.String`

The extremes shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.

#### Example
    <kendo:chart-seriesItem-extremes type="type">
    </kendo:chart-seriesItem-extremes>


##  Configuration JSP Tags

### kendo:chart-seriesItem-extremes-border

The border of the extremes.

More documentation is available at [kendo:chart-seriesItem-extremes-border](/api/wrappers/jsp/chart/seriesitem-extremes-border).

#### Example

    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-border></kendo:chart-seriesItem-extremes-border>
    </kendo:chart-seriesItem-extremes>


## Event Attributes

### background `String`

The background color of the series outliers.


#### Example
    <kendo:chart-seriesItem-extremes background="handle_background">
    </kendo:chart-seriesItem-extremes>
    <script>
        function handle_background(e) {
            // Code to handle the background event.
        }
    </script>

### size `String`

The extremes size in pixels.


#### Example
    <kendo:chart-seriesItem-extremes size="handle_size">
    </kendo:chart-seriesItem-extremes>
    <script>
        function handle_size(e) {
            // Code to handle the size event.
        }
    </script>

### type `String`

The extremes shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.


#### Example
    <kendo:chart-seriesItem-extremes type="handle_type">
    </kendo:chart-seriesItem-extremes>
    <script>
        function handle_type(e) {
            // Code to handle the type event.
        }
    </script>

### rotation `String`

The rotation angle of the extremes.


#### Example
    <kendo:chart-seriesItem-extremes rotation="handle_rotation">
    </kendo:chart-seriesItem-extremes>
    <script>
        function handle_rotation(e) {
            // Code to handle the rotation event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-extremes-background

The background color of the series outliers.


#### Example
    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-background>
            <script>
                function(e) {
                    // Code to handle the background event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-background>
    </kendo:chart-seriesItem-extremes>

### kendo:chart-seriesItem-extremes-size

The extremes size in pixels.


#### Example
    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-size>
            <script>
                function(e) {
                    // Code to handle the size event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-size>
    </kendo:chart-seriesItem-extremes>

### kendo:chart-seriesItem-extremes-type

The extremes shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.


#### Example
    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-type>
            <script>
                function(e) {
                    // Code to handle the type event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-type>
    </kendo:chart-seriesItem-extremes>

### kendo:chart-seriesItem-extremes-rotation

The rotation angle of the extremes.


#### Example
    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-rotation>
            <script>
                function(e) {
                    // Code to handle the rotation event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-rotation>
    </kendo:chart-seriesItem-extremes>

