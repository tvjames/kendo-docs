---
title: map-layer
slug: jsp-map-layer
tags: api, java
publish: true
---

# \<kendo:map-layer\>

The configuration of the map layers.
The layer type is determined by the value of the type field.

#### Example
    <kendo:map-layers>
        <kendo:map-layer></kendo:map-layer>
    </kendo:map-layers>

## Configuration Attributes

### attribution `java.lang.String`

The attribution for the layer. Accepts valid HTML.

#### Example
    <kendo:map-layer attribution="attribution">
    </kendo:map-layer>

### autoBind `boolean`

If set to false the layer will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Example
    <kendo:map-layer autoBind="autoBind">
    </kendo:map-layer>

### extent `java.lang.Object`

Specifies the extent of the region covered by this layer.
The layer will be hidden when the specified area is out of view.Accepts a four-element array that specifies the extent covered by this layer:
North-West lat, longitude, South-East latitude, longitude.If not specified, the layer is always visible.

#### Example
    <kendo:map-layer extent="extent">
    </kendo:map-layer>

### key `java.lang.String`

The API key for the layer. Currently supported only for Bing (tm) tile layers.

#### Example
    <kendo:map-layer key="key">
    </kendo:map-layer>

### locationField `java.lang.String`

The data item field which contains the marker location.
The field should be an array with two numbers - latitude and longitude.Requires the dataSource option to be set.

#### Example
    <kendo:map-layer locationField="locationField">
    </kendo:map-layer>

### opacity `java.lang.String`

The the opacity for the layer.

#### Example
    <kendo:map-layer opacity="opacity">
    </kendo:map-layer>

### shape `java.lang.String`

The marker shape. Supported shapes are "pin" and "pinTarget".

#### Example
    <kendo:map-layer shape="shape">
    </kendo:map-layer>

### subdomains `java.lang.Object`

A list of subdomains to use for loading tiles.
Alternating between different subdomains allows more requests to be executed in parallel.

#### Example
    <kendo:map-layer subdomains="subdomains">
    </kendo:map-layer>

### titleField `java.lang.String`

The data item field which contains the marker title.
Requires the dataSource option to be set.

#### Example
    <kendo:map-layer titleField="titleField">
    </kendo:map-layer>

### type `java.lang.String`

The layer type. Supported types are "tile" and "shape".

#### Example
    <kendo:map-layer type="type">
    </kendo:map-layer>

### urlTemplate `java.lang.String`

The URL template for tile layers. Template variables:

#### Example
    <kendo:map-layer urlTemplate="urlTemplate">
    </kendo:map-layer>


##  Configuration JSP Tags

### kendo:map-layer-style

The default style for shapes.

More documentation is available at [kendo:map-layer-style](/kendo-ui/api/wrappers/jsp/map/layer-style).

#### Example

    <kendo:map-layer>
        <kendo:map-layer-style></kendo:map-layer-style>
    </kendo:map-layer>

### kendo:map-layer-tooltip

The default Kendo UI Tooltip options for data-bound markers.

More documentation is available at [kendo:map-layer-tooltip](/kendo-ui/api/wrappers/jsp/map/layer-tooltip).

#### Example

    <kendo:map-layer>
        <kendo:map-layer-tooltip></kendo:map-layer-tooltip>
    </kendo:map-layer>

