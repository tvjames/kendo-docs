---
title: MapMarkerTooltipAnimation
slug: php-dataviz-ui-mapmarkertooltipanimation
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapMarkerTooltipAnimation

A PHP class representing the animation setting of MapMarkerTooltip.


## Methods

### close

The animation that will be used when a Tooltip closes.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerTooltipAnimationClose|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerTooltipAnimationClose](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerTooltipAnimationClose)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimationClose();
    $duration = 1;
    $close->duration($duration);
    $animation->close($close);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimation();
    $duration = 1;
    $animation->close(array('duration' => $duration));
    ?>

### open

The animation that will be used when a Tooltip opens.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerTooltipAnimationOpen|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerTooltipAnimationOpen](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerTooltipAnimationOpen)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimation();
    $open = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimationOpen();
    $duration = 1;
    $open->duration($duration);
    $animation->open($open);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimation();
    $duration = 1;
    $animation->open(array('duration' => $duration));
    ?>

