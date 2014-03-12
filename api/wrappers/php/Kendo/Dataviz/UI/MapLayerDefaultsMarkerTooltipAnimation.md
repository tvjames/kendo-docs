---
title: MapLayerDefaultsMarkerTooltipAnimation
slug: php-dataviz-ui-maplayerdefaultsmarkertooltipanimation
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation

A PHP class representing the animation setting of MapLayerDefaultsMarkerTooltip.


## Methods

### close

The animation that will be used when a Tooltip closes.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationClose|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationClose](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarkerTooltipAnimationClose)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationClose();
    $duration = 1;
    $close->duration($duration);
    $animation->close($close);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation();
    $duration = 1;
    $animation->close(array('duration' => $duration));
    ?>

### open

The animation that will be used when a Tooltip opens.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationOpen|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationOpen](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarkerTooltipAnimationOpen)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation();
    $open = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationOpen();
    $duration = 1;
    $open->duration($duration);
    $animation->open($open);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation();
    $duration = 1;
    $animation->open(array('duration' => $duration));
    ?>

