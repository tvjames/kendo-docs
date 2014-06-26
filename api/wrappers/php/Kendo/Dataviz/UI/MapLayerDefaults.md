---
title: MapLayerDefaults
---

# \Kendo\Dataviz\UI\MapLayerDefaults

A PHP class representing the layerDefaults setting of Map.


## Methods

### bing

The default configuration for Bing (tm) tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsBing|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsBing](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsBing)
    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $bing = new \Kendo\Dataviz\UI\MapLayerDefaultsBing();
    $attribution = 'value';
    $bing->attribution($attribution);
    $layerDefaults->bing($bing);
    ?>

#### Example - using array

    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $attribution = 'value';
    $layerDefaults->bing(array('attribution' => $attribution));
    ?>

### bubble

The default configuration for bubble layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsBubble|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsBubble](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsBubble)
    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $attribution = 'value';
    $bubble->attribution($attribution);
    $layerDefaults->bubble($bubble);
    ?>

#### Example - using array

    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $attribution = 'value';
    $layerDefaults->bubble(array('attribution' => $attribution));
    ?>

### marker

The default configuration for marker layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsMarker|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarker](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarker)
    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $marker = new \Kendo\Dataviz\UI\MapLayerDefaultsMarker();
    $opacity = 1;
    $marker->opacity($opacity);
    $layerDefaults->marker($marker);
    ?>

#### Example - using array

    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $opacity = 1;
    $layerDefaults->marker(array('opacity' => $opacity));
    ?>

### shape

The default configuration for shape layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsShape|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsShape](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsShape)
    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $shape = new \Kendo\Dataviz\UI\MapLayerDefaultsShape();
    $attribution = 'value';
    $shape->attribution($attribution);
    $layerDefaults->shape($shape);
    ?>

#### Example - using array

    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $attribution = 'value';
    $layerDefaults->shape(array('attribution' => $attribution));
    ?>

### tile

The default configuration for tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsTile|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsTile](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsTile)
    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $tile = new \Kendo\Dataviz\UI\MapLayerDefaultsTile();
    $attribution = 'value';
    $tile->attribution($attribution);
    $layerDefaults->tile($tile);
    ?>

#### Example - using array

    <?php
    $layerDefaults = new \Kendo\Dataviz\UI\MapLayerDefaults();
    $attribution = 'value';
    $layerDefaults->tile(array('attribution' => $attribution));
    ?>

