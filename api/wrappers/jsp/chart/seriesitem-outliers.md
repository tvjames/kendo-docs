---
title: chart-seriesItem-outliers
slug: jsp-chart-seriesItem-outliers
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-outliers\>

The chart series outliers configuration.

#### Example
    <kendo:chart-seriesItem>
        <kendo:chart-seriesItem-outliers></kendo:chart-seriesItem-outliers>
    </kendo:chart-seriesItem>

## Configuration Attributes

### background `java.lang.String`

The background color of the series outliers.

#### Example
    <kendo:chart-seriesItem-outliers background="background">
    </kendo:chart-seriesItem-outliers>

### border `java.lang.String`

The border of the outliers. Further configuration is available via [kendo:chart-seriesItem-outliers-border](#kendo-chart-seriesItem-outliers-border). 

#### Example
    <kendo:chart-seriesItem-outliers border="border">
    </kendo:chart-seriesItem-outliers>

### rotation `float`

The rotation angle of the outliers.

#### Example
    <kendo:chart-seriesItem-outliers rotation="rotation">
    </kendo:chart-seriesItem-outliers>

### size `float`

The marker size in pixels.

#### Example
    <kendo:chart-seriesItem-outliers size="size">
    </kendo:chart-seriesItem-outliers>

### type `java.lang.String`

The outliers shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.

#### Example
    <kendo:chart-seriesItem-outliers type="type">
    </kendo:chart-seriesItem-outliers>


##  Configuration JSP Tags

### kendo:chart-seriesItem-outliers-border

The border of the outliers.

More documentation is available at [kendo:chart-seriesItem-outliers-border](/kendo-ui/api/wrappers/jsp/chart/seriesitem-outliers-border).

#### Example

    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-border></kendo:chart-seriesItem-outliers-border>
    </kendo:chart-seriesItem-outliers>


## Event Attributes

### background `String`

The background color of the series outliers.


#### Example
    <kendo:chart-seriesItem-outliers background="handle_background">
    </kendo:chart-seriesItem-outliers>
    <script>
        function handle_background(e) {
            // Code to handle the background event.
        }
    </script>

### size `String`

The marker size in pixels.


#### Example
    <kendo:chart-seriesItem-outliers size="handle_size">
    </kendo:chart-seriesItem-outliers>
    <script>
        function handle_size(e) {
            // Code to handle the size event.
        }
    </script>

### type `String`

The outliers shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.


#### Example
    <kendo:chart-seriesItem-outliers type="handle_type">
    </kendo:chart-seriesItem-outliers>
    <script>
        function handle_type(e) {
            // Code to handle the type event.
        }
    </script>

### rotation `String`

The rotation angle of the outliers.


#### Example
    <kendo:chart-seriesItem-outliers rotation="handle_rotation">
    </kendo:chart-seriesItem-outliers>
    <script>
        function handle_rotation(e) {
            // Code to handle the rotation event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-outliers-background

The background color of the series outliers.


#### Example
    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-background>
            <script>
                function(e) {
                    // Code to handle the background event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-background>
    </kendo:chart-seriesItem-outliers>

### kendo:chart-seriesItem-outliers-size

The marker size in pixels.


#### Example
    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-size>
            <script>
                function(e) {
                    // Code to handle the size event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-size>
    </kendo:chart-seriesItem-outliers>

### kendo:chart-seriesItem-outliers-type

The outliers shape.The supported values are:
* "circle" - the marker shape is circle.
* "square" - the marker shape is square.
* "triangle" - the marker shape is triangle.
* "cross" - the marker shape is cross.


#### Example
    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-type>
            <script>
                function(e) {
                    // Code to handle the type event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-type>
    </kendo:chart-seriesItem-outliers>

### kendo:chart-seriesItem-outliers-rotation

The rotation angle of the outliers.


#### Example
    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-rotation>
            <script>
                function(e) {
                    // Code to handle the rotation event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-rotation>
    </kendo:chart-seriesItem-outliers>

