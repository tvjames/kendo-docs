---
title: MapLayerTooltipAnimation
---

# \Kendo\Dataviz\UI\MapLayerTooltipAnimation

A PHP class representing the animation setting of MapLayerTooltip.


## Methods

### close

The animation that will be used when a Tooltip closes.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerTooltipAnimationClose|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerTooltipAnimationClose](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerTooltipAnimationClose)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapLayerTooltipAnimationClose();
    $duration = 1;
    $close->duration($duration);
    $animation->close($close);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerTooltipAnimation();
    $duration = 1;
    $animation->close(array('duration' => $duration));
    ?>

### open

The animation that will be used when a Tooltip opens.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltipAnimation`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerTooltipAnimationOpen|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerTooltipAnimationOpen](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerTooltipAnimationOpen)
    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerTooltipAnimation();
    $open = new \Kendo\Dataviz\UI\MapLayerTooltipAnimationOpen();
    $duration = 1;
    $open->duration($duration);
    $animation->open($open);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\Dataviz\UI\MapLayerTooltipAnimation();
    $duration = 1;
    $animation->open(array('duration' => $duration));
    ?>

