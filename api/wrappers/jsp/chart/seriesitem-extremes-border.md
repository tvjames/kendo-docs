---
title: chart-seriesItem-extremes-border
slug: jsp-chart-seriesItem-extremes-border
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-extremes-border\>

The border of the extremes.

#### Example
    <kendo:chart-seriesItem-extremes>
        <kendo:chart-seriesItem-extremes-border></kendo:chart-seriesItem-extremes-border>
    </kendo:chart-seriesItem-extremes>

## Configuration Attributes

### color `java.lang.String`

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem-extremes-border color="color">
    </kendo:chart-seriesItem-extremes-border>

### width `float`

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example
    <kendo:chart-seriesItem-extremes-border width="width">
    </kendo:chart-seriesItem-extremes-border>


## Event Attributes

### color `String`

The color of the border. Accepts a valid CSS color string, including hex and rgb.


#### Example
    <kendo:chart-seriesItem-extremes-border color="handle_color">
    </kendo:chart-seriesItem-extremes-border>
    <script>
        function handle_color(e) {
            // Code to handle the color event.
        }
    </script>

### width `String`

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.


#### Example
    <kendo:chart-seriesItem-extremes-border width="handle_width">
    </kendo:chart-seriesItem-extremes-border>
    <script>
        function handle_width(e) {
            // Code to handle the width event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-extremes-border-color

The color of the border. Accepts a valid CSS color string, including hex and rgb.


#### Example
    <kendo:chart-seriesItem-extremes-border>
        <kendo:chart-seriesItem-extremes-border-color>
            <script>
                function(e) {
                    // Code to handle the color event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-border-color>
    </kendo:chart-seriesItem-extremes-border>

### kendo:chart-seriesItem-extremes-border-width

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.


#### Example
    <kendo:chart-seriesItem-extremes-border>
        <kendo:chart-seriesItem-extremes-border-width>
            <script>
                function(e) {
                    // Code to handle the width event.
                }
            </script>
        </kendo:chart-seriesItem-extremes-border-width>
    </kendo:chart-seriesItem-extremes-border>

