---
title: MapLayer
slug: php-dataviz-ui-maplayer
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapLayer

A PHP class representing the layer setting of MapLayers.


## Methods

### attribution
The attribution for the layer. Accepts valid HTML.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->attribution('value');
    ?>

### autoBind
If set to false the layer will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->autoBind(true);
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/kendo-ui/api/wrappers/php/kendo/data/datasource)

    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $dataSource = new \Kendo\Data\DataSource();
    $layer->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $schema = new \Kendo\Data\DataSourceSchema();
    $layer->dataSource(array('schema' => $schema));
    ?>

### extent
Specifies the extent of the region covered by this layer.
The layer will be hidden when the specified area is out of view.Accepts a four-element array that specifies the extent covered by this layer:
North-West lat, longitude, South-East latitude, longitude.If not specified, the layer is always visible.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->extent(new array());
    ?>

### key
The API key for the layer. Currently supported only for Bing (tm) tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->key('value');
    ?>

### locationField
The data item field which contains the marker location.
The field should be an array with two numbers - latitude and longitude.Requires the dataSource option to be set.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->locationField('value');
    ?>

### opacity
The the opacity for the layer.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->opacity('value');
    ?>

### shape
The marker shape. Supported shapes are "pin" and "pinTarget".

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->shape('value');
    ?>

### style

The default style for shapes.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerStyle|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerStyle](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerStyle)
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $style = new \Kendo\Dataviz\UI\MapLayerStyle();
    $fill = new \Kendo\Dataviz\UI\MapLayerStyleFill();
    $style->fill($fill);
    $layer->style($style);
    ?>

#### Example - using array

    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $fill = new \Kendo\Dataviz\UI\MapLayerStyleFill();
    $layer->style(array('fill' => $fill));
    ?>

### subdomains
A list of subdomains to use for loading tiles.
Alternating between different subdomains allows more requests to be executed in parallel.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->subdomains(new array());
    ?>

### titleField
The data item field which contains the marker title.
Requires the dataSource option to be set.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->titleField('value');
    ?>

### tooltip

The default Kendo UI Tooltip options for data-bound markers.

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerTooltip](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerTooltip)
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $autoHide = true;
    $tooltip->autoHide($autoHide);
    $layer->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $autoHide = true;
    $layer->tooltip(array('autoHide' => $autoHide));
    ?>

### type
The layer type. Supported types are "tile" and "shape".

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->type('value');
    ?>

### urlTemplate
The URL template for tile layers. Template variables:

#### Returns
`\Kendo\Dataviz\UI\MapLayer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layer = new \Kendo\Dataviz\UI\MapLayer();
    $layer->urlTemplate('value');
    ?>

