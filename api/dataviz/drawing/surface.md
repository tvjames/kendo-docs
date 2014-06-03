---
title:kendo.dataviz.drawing.Surface
slug:api-dataviz-drawing-Surface
publish: true
---

# kendo.dataviz.drawing.Surface

An abstract class representing the top-level drawing surface.
This class can't be instantiated directly.

Specific implementations are created via the static `create` method.
The implementations for SVG, Canvas and VML inherit from this base class.

## Example - Creating a drawing surface

        <div id="container"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = d.Surface.create(
                $("#container"),
                { width: "600px", height: "400px" }
            );
        </script>

## Configuration

### width `String` *(default: "100%")*

The width of the surface element.
By default it will expand to fill the width of the container.

### height `String` *(default: "100%")*

The height of the surface element.
By default it will expand to fill the height of the container.

## Methods

### clear

Clears the drawing surface.

### create

Creates a drawing surface matching the browser capabilities.

> This is a static method exposed as Surface.create

## Example - Specifyin a preferred implementation

        <div id="container"></div>
        <script>
            var d = kendo.dataviz.drawing;
            var surface = d.Surface.create(
                $("#container"),
                { width: "600px", height: "400px" },
                "canvas"
            );
        </script>

#### Parameters

##### element `Element`

The DOM element that will host the surface.

##### options `Object`

The options to pass to the surface.

##### preferred `String`

The ID of the preferred surface. Currently the supported values are "svg", "canvas" and "vml".
This parameter will be ignored if the preferred surface is unavailable.

#### Returns

`kendo.dataviz.drawing.Surface` An implementation matching the browser capabilities or caller preference; undefined if none is available.

### draw

Draws the shape on the surface.

#### Parameters

##### shape `kendo.dataviz.drawing.Element`

The shape to draw.

### resize

Resizes the surface to match the size of the container.

#### Parameters

##### force `Boolean` *optional*

Whether to proceed with resizing even if the container dimensions have not changed.

