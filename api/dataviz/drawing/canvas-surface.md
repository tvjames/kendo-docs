---
title:kendo.dataviz.drawing.canvas.Surface
slug:api-dataviz-drawing-canvas-Surface
publish: true
---

# kendo.dataviz.drawing.canvas.Surface

A [Surface](./surface) implementation that renders as a Canvas element.
Note that the Canvas surface does not trigger [events](./surface#events).

> Use [Surface.create](./surface#methods-create) to create a drawing surface based on browser capabilities.

## Example - Creating a Canvas drawing surface

        <div id="container" style="position: relative; width: 600px; height: 400px;"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = new d.canvas.Surface($("#container"));
        </script>

## Example - Creating any supported surface with preference for Canvas

        <div id="container"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = d.Surface.create($("#container"), "canvas");
        </script>

