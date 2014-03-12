---
title: DiagramConnectionDefaultsHover
slug: php-dataviz-ui-diagramconnectiondefaultshover
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramConnectionDefaultsHover

A PHP class representing the hover setting of DiagramConnectionDefaults.


## Methods

### stroke

Defines the hover stroke configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionDefaultsHover`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionDefaultsHoverStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionDefaultsHoverStroke](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionDefaultsHoverStroke)
    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHover();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHoverStroke();
    $color = 'value';
    $stroke->color($color);
    $hover->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionDefaultsHover();
    $color = 'value';
    $hover->stroke(array('color' => $color));
    ?>

