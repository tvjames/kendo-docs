---
title: DiagramConnectionHover
slug: php-dataviz-ui-diagramconnectionhover
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramConnectionHover

A PHP class representing the hover setting of DiagramConnection.


## Methods

### stroke

Defines the hover stroke configuration.

#### Returns
`\Kendo\Dataviz\UI\DiagramConnectionHover`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramConnectionHoverStroke|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramConnectionHoverStroke](/kendo-ui/api/wrappers/php/Kendo/Dataviz/UI/DiagramConnectionHoverStroke)
    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionHover();
    $stroke = new \Kendo\Dataviz\UI\DiagramConnectionHoverStroke();
    $color = 'value';
    $stroke->color($color);
    $hover->stroke($stroke);
    ?>

#### Example - using array

    <?php
    $hover = new \Kendo\Dataviz\UI\DiagramConnectionHover();
    $color = 'value';
    $hover->stroke(array('color' => $color));
    ?>

