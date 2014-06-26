---
title: MapLayerDefaultsMarker
---

# \Kendo\Dataviz\UI\MapLayerDefaultsMarker

A PHP class representing the marker setting of MapLayerDefaults.


## Methods

### opacity
The the opacity of all marker layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarker`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $marker = new \Kendo\Dataviz\UI\MapLayerDefaultsMarker();
    $marker->opacity(1);
    ?>

### shape
The marker shape. Supported shapes are "pin" and "pinTarget".

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarker`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $marker = new \Kendo\Dataviz\UI\MapLayerDefaultsMarker();
    $marker->shape('value');
    ?>

### tooltip

The default Kendo UI Tooltip options for all marker layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarker`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarkerTooltip)
    <?php
    $marker = new \Kendo\Dataviz\UI\MapLayerDefaultsMarker();
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $autoHide = true;
    $tooltip->autoHide($autoHide);
    $marker->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $marker = new \Kendo\Dataviz\UI\MapLayerDefaultsMarker();
    $autoHide = true;
    $marker->tooltip(array('autoHide' => $autoHide));
    ?>

