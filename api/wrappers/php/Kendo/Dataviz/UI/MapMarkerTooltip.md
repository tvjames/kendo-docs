---
title: MapMarkerTooltip
---

# \Kendo\Dataviz\UI\MapMarkerTooltip

A PHP class representing the tooltip setting of MapMarker.


## Methods

### animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapMarkerTooltipAnimation|array`


#### Example - using [\Kendo\Dataviz\UI\MapMarkerTooltipAnimation](/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerTooltipAnimation)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $animation = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimation();
    $close = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimationClose();
    $animation->close($close);
    $tooltip->animation($animation);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $close = new \Kendo\Dataviz\UI\MapMarkerTooltipAnimationClose();
    $tooltip->animation(array('close' => $close));
    ?>

### autoHide
Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->autoHide(true);
    ?>

### callout
Specifies if the tooltip callout will be displayed.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->callout(true);
    ?>

### content

The text or a function which result will be shown within the tooltip.
By default the tooltip will display the target element title attribute content.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction|\Kendo\Dataviz\UI\MapMarkerTooltipContent|array`




#### Example  - using string
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->content('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->content(new \Kendo\JavaScriptFunction('function() { }'));
    ?>


#### Example - using [\Kendo\Dataviz\UI\MapMarkerTooltipContent](/api/wrappers/php/Kendo/Dataviz/UI/MapMarkerTooltipContent)
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $content = new \Kendo\Dataviz\UI\MapMarkerTooltipContent();
    $url = 'value';
    $content->url($url);
    $tooltip->content($content);
    ?>

#### Example - using array

    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $url = 'value';
    $tooltip->content(array('url' => $url));
    ?>

### height
The height (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->height(1);
    ?>

### iframe
Explicitly states whether content iframe should be created.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->iframe(true);
    ?>

### position
The position relative to the target element, at which tlhe tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->position('value');
    ?>

### showAfter
Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->showAfter(1);
    ?>

### showOn
The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->showOn('value');
    ?>

### template
The template which renders the tooltip content.The fields which can be used in the template are:

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->template('value');
    ?>

### width
The width (in pixels) of the tooltip.

#### Returns
`\Kendo\Dataviz\UI\MapMarkerTooltip`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tooltip = new \Kendo\Dataviz\UI\MapMarkerTooltip();
    $tooltip->width(1);
    ?>

