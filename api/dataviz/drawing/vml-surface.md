---
title:kendo.dataviz.drawing.vml.Surface
slug:api-dataviz-drawing-vml-Surface
publish: true
---

# kendo.dataviz.drawing.vml.Surface

A [Surface](./surface) implementation that renders as VML document.

> Use [Surface.create](./surface#methods-create) to create a drawing surface based on browser capabilities.

## Example - Creating an VML drawing surface

        <div id="container" style="position: relative; width: 600px; height: 400px;"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = new d.vml.Surface($("#container"));
        </script>

