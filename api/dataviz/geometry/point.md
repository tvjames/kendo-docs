---
title:kendo.dataviz.geometry.Point
slug:api-dataviz-geometry-Point
publish: true
---

# kendo.dataviz.geometry.Point

A point representing a location (x, y) in two-dimensional coordinate space.

## Example - Creating a point
        <script>
            var geo = kendo.dataviz.geometry;
            var point = new geo.Point(10, 20);
        </script>

## Methods

### clone

Creates a new instance with the same coordinates.

#### Returns

`kendo.dataviz.geometry.Point` A new Point instance with the same coordinates.


### distanceTo

Calculates the distance to another point.

#### Parameters

##### point `kendo.dataviz.geometry.Point`

The point to calculate the distance to.

#### Returns

`Number` The straight line distance to the given point.


### equals

Compares this point with another instance.

#### Parameters

##### point `kendo.dataviz.geometry.Point`

The point to compare with.

#### Returns

`Boolean` true if the point coordinates match; false otherwise.


### get

Gets the specified coordinate value.

#### Parameters

##### field `String`

The coordinate field name - "x" or "y".

#### Returns

`Number` The current coordinate value.


### multiply

Multiplies the point coordinates by a given value.

#### Parameters

##### value `Number`

The value to multiply the coordinates with.

#### Returns

`kendo.dataviz.geometry.Point` The current Point instance.


### multiplyCopy

Multiplies the coordinates of a copy of the point by a given value.
The callee coordinates will remain unchanged.

#### Parameters

##### value `Number`

The value to multiply the coordinates with.

#### Returns

`kendo.dataviz.geometry.Point` The new Point instance.


### round

Rounds the point coordinates to the specified number of fractional digits.

#### Parameters

##### digits `Number`

Number of fractional digits.

#### Returns

`kendo.dataviz.geometry.Point` The current Point instance.


### set

Sets the specified coordinate to a new value.

#### Parameters

##### field `String`

The coordinate field name - "x" or "y".

##### value `Number`

The new coordinate value.

#### Returns

`kendo.dataviz.geometry.Point` The current Point instance.


### toString

Formats the point value to a string.

#### Parameters

##### digits `Number`

(Optional) Number of fractional digits.

##### separator `String` *(default: " ")*

The separator to place between coordinates.

#### Returns

`String` A string representation of the point, e.g. "10 20".


### transform

Applies a transformation to the point coordinates.
The current coordinates will be overriden.

#### Parameters

##### tansformation `kendo.dataviz.geometry.Transformation|kendo.dataviz.geometry.TransformationMatrix`

The transformation to apply.

#### Returns

`kendo.dataviz.geometry.Point` The current Point instance.


### transformCopy

Applies a transformation on a copy of the current point.
The callee coordinates will remain unchanged.

#### Parameters

##### tansformation `kendo.dataviz.geometry.Transformation|kendo.dataviz.geometry.TransformationMatrix`

The transformation to apply.

#### Returns

`kendo.dataviz.geometry.Point` The new Point instance.

