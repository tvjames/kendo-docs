---
title: MapMarker
slug: php-dataviz-ui-mapmarker
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapMarker

A PHP class representing the marker setting of MapMarkers.


## Methods

### location
The marker location on the map. Coordinates are listed as [Latitude, Longitude].

#### Returns
`\Kendo\Dataviz\UI\MapMarker`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $marker = new \Kendo\Dataviz\UI\MapMarker();
    $marker->location(new array());
    ?>

### shape
The marker shape. Supported shapes are "pin" and "pinTarget".

#### Returns
`\Kendo\Dataviz\UI\MapMarker`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $marker = new \Kendo\Dataviz\UI\MapMarker();
    $marker->shape('value');
    ?>

### title
The marker title. Displayed as browser tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapMarker`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $marker = new \Kendo\Dataviz\UI\MapMarker();
    $marker->title('value');
    ?>

### tooltip

Kendo UI Tooltip options for this marker.

#### Returns
`\Kendo\Dataviz\UI\MapMarker`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerTooltip](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerTooltip)
    <?php
    $marker = new \Kendo\Dataviz\UI\MapMarker();
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $autoHide = true;
    $tooltip->autoHide($autoHide);
    $marker->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $marker = new \Kendo\Dataviz\UI\MapMarker();
    $autoHide = true;
    $marker->tooltip(array('autoHide' => $autoHide));
    ?>

