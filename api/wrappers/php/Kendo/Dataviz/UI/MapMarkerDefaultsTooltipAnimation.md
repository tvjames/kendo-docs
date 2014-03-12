---
title: MapMarkerDefaultsTooltipAnimation
slug: php-dataviz-ui-mapmarkerdefaultstooltipanimation
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation

A PHP class representing the animation setting of MapMarkerDefaultsTooltip.


## Methods

### close

The animation that will be used when a Tooltip closes.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationClose|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationClose](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerDefaultsTooltipAnimationClose)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationClose();
    $duration = 1;
    $close->duration($duration);
    $animation->close($close);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation();
    $duration = 1;
    $animation->close(array('duration' => $duration));
    ?>

### open

The animation that will be used when a Tooltip opens.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationOpen|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationOpen](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerDefaultsTooltipAnimationOpen)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation();
    $open = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimationOpen();
    $duration = 1;
    $open->duration($duration);
    $animation->open($open);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerDefaultsTooltipAnimation();
    $duration = 1;
    $animation->open(array('duration' => $duration));
    ?>

