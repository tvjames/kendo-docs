---
title: MapLayerDefaultsBubble
---

# \Kendo\Dataviz\UI\MapLayerDefaultsBubble

A PHP class representing the bubble setting of MapLayerDefaults.


## Methods

### attribution
The attribution for all bubble layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $bubble->attribution('value');
    ?>

### maxSize
The maximum symbol size for bubble layer symbols.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $bubble->maxSize(1);
    ?>

### minSize
The minimum symbol size for bubble layer symbols.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $bubble->minSize(1);
    ?>

### opacity
The the opacity of all bubble layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $bubble->opacity(1);
    ?>

### style

The default style for bubble layer symbols.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `\Kendo\Dataviz\UI\MapLayerDefaultsBubbleStyle|array`


#### Example - using [\Kendo\Dataviz\UI\MapLayerDefaultsBubbleStyle](/api/wrappers/php/Kendo/Dataviz/UI/MapLayerDefaultsBubbleStyle)
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $style = new \Kendo\Dataviz\UI\MapLayerDefaultsBubbleStyle();
    $fill = new \Kendo\Dataviz\UI\MapLayerDefaultsBubbleStyleFill();
    $style->fill($fill);
    $bubble->style($style);
    ?>

#### Example - using array

    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $fill = new \Kendo\Dataviz\UI\MapLayerDefaultsBubbleStyleFill();
    $bubble->style(array('fill' => $fill));
    ?>

### symbol
The bubble layer symbol type. Supported symbols are "circle" and "square".

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsBubble`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $bubble = new \Kendo\Dataviz\UI\MapLayerDefaultsBubble();
    $bubble->symbol('value');
    ?>

