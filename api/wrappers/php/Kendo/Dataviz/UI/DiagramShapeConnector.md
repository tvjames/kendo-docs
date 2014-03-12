---
title: DiagramShapeConnector
slug: php-dataviz-ui-diagramshapeconnector
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramShapeConnector

A PHP class representing the connector setting of DiagramShapeConnectors.


## Methods

### description


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeConnector`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeConnector();
    $connector->description('value');
    ?>

### name


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeConnector`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeConnector();
    $connector->name('value');
    ?>

### position


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeConnector`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeConnector();
    $connector->position('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeConnector();
    $connector->position(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

