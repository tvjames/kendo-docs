---
title:kendo.dataviz.drawing.svg.Surface
slug:api-dataviz-drawing-svg-Surface
publish: true
---

# kendo.dataviz.drawing.svg.Surface

A [Surface](./surface) implementation that renders as SVG document.

> Use [Surface.create](./surface#methods-create) to create a drawing surface based on browser capabilities.

## Example - Creating a SVG drawing surface

        <div id="container" style="position: relative; width: 600px; height: 400px;"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = new d.svg.Surface($("#container"));
        </script>

## Methods

### svg

Returns an SVG document that represents the current drawing on the surface.

#### Example - Exporting the current drawing to SVG

        <div id="container"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = new d.svg.Surface($("#container"));
            var svgExport = surface.svg();
        </script>

#### Returns

`String` An SVG document representing the current drawing.

