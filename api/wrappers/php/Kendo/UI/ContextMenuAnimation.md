---
title: ContextMenuAnimation
---

# \Kendo\UI\ContextMenuAnimation

A PHP class representing the animation setting of ContextMenu.


## Methods

### close

The animation that will be used when closing sub menus.

#### Returns
`\Kendo\UI\ContextMenuAnimation`

#### Parameters

##### $value `\Kendo\UI\ContextMenuAnimationClose|array`


#### Example - using [\Kendo\UI\ContextMenuAnimationClose](/api/wrappers/php/Kendo/UI/ContextMenuAnimationClose)
    <?php
    $animation = new \Kendo\UI\ContextMenuAnimation();
    $close = new \Kendo\UI\ContextMenuAnimationClose();
    $duration = 1;
    $close->duration($duration);
    $animation->close($close);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\UI\ContextMenuAnimation();
    $duration = 1;
    $animation->close(array('duration' => $duration));
    ?>

### open

The animation that will be used when opening sub menus.

#### Returns
`\Kendo\UI\ContextMenuAnimation`

#### Parameters

##### $value `\Kendo\UI\ContextMenuAnimationOpen|array`


#### Example - using [\Kendo\UI\ContextMenuAnimationOpen](/api/wrappers/php/Kendo/UI/ContextMenuAnimationOpen)
    <?php
    $animation = new \Kendo\UI\ContextMenuAnimation();
    $open = new \Kendo\UI\ContextMenuAnimationOpen();
    $duration = 1;
    $open->duration($duration);
    $animation->open($open);
    ?>

#### Example - using array

    <?php
    $animation = new \Kendo\UI\ContextMenuAnimation();
    $duration = 1;
    $animation->open(array('duration' => $duration));
    ?>

