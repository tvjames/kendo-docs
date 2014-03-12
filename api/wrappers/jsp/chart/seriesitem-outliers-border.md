---
title: chart-seriesItem-outliers-border
slug: jsp-chart-seriesItem-outliers-border
tags: api, java
publish: true
---

# \<kendo:chart-seriesItem-outliers-border\>

The border of the outliers.

#### Example
    <kendo:chart-seriesItem-outliers>
        <kendo:chart-seriesItem-outliers-border></kendo:chart-seriesItem-outliers-border>
    </kendo:chart-seriesItem-outliers>

## Configuration Attributes

### color `java.lang.String`

The color of the border. Accepts a valid CSS color string, including hex and rgb.

#### Example
    <kendo:chart-seriesItem-outliers-border color="color">
    </kendo:chart-seriesItem-outliers-border>

### width `float`

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.

#### Example
    <kendo:chart-seriesItem-outliers-border width="width">
    </kendo:chart-seriesItem-outliers-border>


## Event Attributes

### color `String`

The color of the border. Accepts a valid CSS color string, including hex and rgb.


#### Example
    <kendo:chart-seriesItem-outliers-border color="handle_color">
    </kendo:chart-seriesItem-outliers-border>
    <script>
        function handle_color(e) {
            // Code to handle the color event.
        }
    </script>

### width `String`

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.


#### Example
    <kendo:chart-seriesItem-outliers-border width="handle_width">
    </kendo:chart-seriesItem-outliers-border>
    <script>
        function handle_width(e) {
            // Code to handle the width event.
        }
    </script>

## Event Tags

### kendo:chart-seriesItem-outliers-border-color

The color of the border. Accepts a valid CSS color string, including hex and rgb.


#### Example
    <kendo:chart-seriesItem-outliers-border>
        <kendo:chart-seriesItem-outliers-border-color>
            <script>
                function(e) {
                    // Code to handle the color event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-border-color>
    </kendo:chart-seriesItem-outliers-border>

### kendo:chart-seriesItem-outliers-border-width

The width of the border in pixels. By default the border width is set to zero which means that the border will not appear.


#### Example
    <kendo:chart-seriesItem-outliers-border>
        <kendo:chart-seriesItem-outliers-border-width>
            <script>
                function(e) {
                    // Code to handle the width event.
                }
            </script>
        </kendo:chart-seriesItem-outliers-border-width>
    </kendo:chart-seriesItem-outliers-border>

