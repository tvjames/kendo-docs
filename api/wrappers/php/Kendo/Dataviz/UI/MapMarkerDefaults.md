---
title: MapMarkerDefaults
---

# \Kendo\Dataviz\UI\MapMarkerDefaults

A PHP class representing the markerDefaults setting of Map.


## Methods

### shape
The default marker shape. Supported shapes are "pin" and "pinTarget".

#### Returns
`\Kendo\Dataviz\UI\MapMarkerDefaults`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $markerDefaults = new \Kendo\Dataviz\UI\MapMarkerDefaults();
    $markerDefaults->shape('value');
    ?>

### tooltip

Default Kendo UI Tooltip options for this marker.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerDefaults`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerDefaultsTooltip|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerDefaultsTooltip](/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerDefaultsTooltip)
    <?php
    $markerDefaults = new \Kendo\Dataviz\UI\MapMarkerDefaults();
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltip();
    $autoHide = true;
    $tooltip->autoHide($autoHide);
    $markerDefaults->tooltip($tooltip);
    ?>

#### Example - using array

    <?php
    $markerDefaults = new \Kendo\Dataviz\UI\MapMarkerDefaults();
    $autoHide = true;
    $markerDefaults->tooltip(array('autoHide' => $autoHide));
    ?>

