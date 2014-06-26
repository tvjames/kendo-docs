---
title: MapLayerTooltip
---

# \Kendo\Dataviz\UI\MapLayerTooltip

A PHP class representing the tooltip setting of MapLayer.


## Methods

### animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerTooltipAnimation|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerTooltipAnimation](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerTooltipAnimation)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $animation = new \Kendo\Dataviz\UI\MapLayerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapLayerTooltipAnimationClose();
    $animation->close($close);
    $tooltip->animation($animation);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $close = new \Kendo\Dataviz\UI\MapLayerTooltipAnimationClose();
    $tooltip->animation(array('close' => $close));
    ?>

### autoHide
Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->autoHide(true);
    ?>

### callout
Specifies if the tooltip callout will be displayed.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->callout(true);
    ?>

### content

The text or a function which result will be shown within the tooltip.
By default the tooltip will display the target element title attribute content.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction|\Kendo\Dataviz\UI\MapLayerTooltipContent|array`




#### Example  - using string
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->content('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->content(new \Kendo\JavaScriptFunction('function() { }'));
    ?>


#### Example - using [\Kendo\Dataviz\UI\MapLayerTooltipContent](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerTooltipContent)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $content = new \Kendo\Dataviz\UI\MapLayerTooltipContent();
    $url = 'value';
    $content->url($url);
    $tooltip->content($content);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $url = 'value';
    $tooltip->content(array('url' => $url));
    ?>

### height
The height (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->height(1);
    ?>

### iframe
Explicitly states whether content iframe should be created.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->iframe(true);
    ?>

### position
The position relative to the target element, at which the tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->position('value');
    ?>

### showAfter
Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->showAfter(1);
    ?>

### showOn
The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->showOn('value');
    ?>

### template
The template which renders the tooltip content.The fields which can be used in the template are:

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->template('value');
    ?>

### width
The width (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapLayerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerTooltip();
    $tooltip->width(1);
    ?>

