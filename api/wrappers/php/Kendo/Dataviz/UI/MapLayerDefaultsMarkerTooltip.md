---
title: MapLayerDefaultsMarkerTooltip
slug: php-dataviz-ui-maplayerdefaultsmarkertooltip
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip

A PHP class representing the tooltip setting of MapLayerDefaultsMarker.


## Methods

### animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarkerTooltipAnimation)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $animation = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationClose();
    $animation->close($close);
    $tooltip->animation($animation);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $close = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipAnimationClose();
    $tooltip->animation(array('close' => $close));
    ?>

### autoHide
Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->autoHide(true);
    ?>

### callout
Specifies if the tooltip callout will be displayed.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->callout(true);
    ?>

### content

The text or a function which result will be shown within the tooltip.
By default the tooltip will display the target element title attribute content.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction|\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipContent|array`




#### Example  - using string
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->content('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->content(new \Kendo\JavaScriptFunction('function() { }'));
    ?>


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipContent](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsMarkerTooltipContent)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $content = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltipContent();
    $url = 'value';
    $content->url($url);
    $tooltip->content($content);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $url = 'value';
    $tooltip->content(array('url' => $url));
    ?>

### height
The height (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->height(1);
    ?>

### iframe
Explicitly states whether content iframe should be created.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->iframe(true);
    ?>

### position
The position relative to the target element, at which the tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->position('value');
    ?>

### showAfter
Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->showAfter(1);
    ?>

### showOn
The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->showOn('value');
    ?>

### template
The template which renders the tooltip content.The fields which can be used in the template are:

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->template('value');
    ?>

### width
The width (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapLayerDefaultsMarkerTooltip();
    $tooltip->width(1);
    ?>

