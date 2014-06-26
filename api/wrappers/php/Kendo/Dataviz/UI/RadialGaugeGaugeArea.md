---
title: RadialGaugeGaugeArea
---

# \Kendo\Dataviz\UI\RadialGaugeGaugeArea

A PHP class representing the gaugeArea setting of RadialGauge.


## Methods

### background
The background of the gauge area.
Any valid CSS color string will work here, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\RadialGaugeGaugeArea`

#### Parameters

##### $value ``



### border

The border of the gauge area.

#### Returns
`\Kendo\Dataviz\UI\RadialGaugeGaugeArea`

#### Parameters

##### $value `\Kendo\Dataviz\UI\RadialGaugeGaugeAreaBorder|array`


#### Example - using [\Kendo\Dataviz\UI\RadialGaugeGaugeAreaBorder](/api/wrappers/php/Kendo/Dataviz/UI/RadialGaugeGaugeAreaBorder)
    <?php
    $gaugeArea = new \Kendo\Dataviz\UI\RadialGaugeGaugeArea();
    $border = new \Kendo\Dataviz\UI\RadialGaugeGaugeAreaBorder();
    $color = 'value';
    $border->color($color);
    $gaugeArea->border($border);
    ?>

#### Example - using array

    <?php
    $gaugeArea = new \Kendo\Dataviz\UI\RadialGaugeGaugeArea();
    $color = 'value';
    $gaugeArea->border(array('color' => $color));
    ?>

### height
The height of the gauge area.  By default, the vertical gauge is 200px and
the horizontal one is 60px.

#### Returns
`\Kendo\Dataviz\UI\RadialGaugeGaugeArea`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $gaugeArea = new \Kendo\Dataviz\UI\RadialGaugeGaugeArea();
    $gaugeArea->height(1);
    ?>

### margin
The margin of the gauge area.

#### Returns
`\Kendo\Dataviz\UI\RadialGaugeGaugeArea`

#### Parameters

##### $value `float|`



#### Example  - using float
    <?php
    $gaugeArea = new \Kendo\Dataviz\UI\RadialGaugeGaugeArea();
    $gaugeArea->margin(1);
    ?>

### width
The width of the gauge area.  By default the vertical gauge is 60px
and horizontal gauge is 200px.

#### Returns
`\Kendo\Dataviz\UI\RadialGaugeGaugeArea`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $gaugeArea = new \Kendo\Dataviz\UI\RadialGaugeGaugeArea();
    $gaugeArea->width(1);
    ?>

