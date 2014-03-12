---
title: DiagramShapeDefaultsConnector
slug: php-dataviz-ui-diagramshapedefaultsconnector
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\DiagramShapeDefaultsConnector

A PHP class representing the connector setting of DiagramShapeDefaultsConnectors.


## Methods

### description


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeDefaultsConnector`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeDefaultsConnector();
    $connector->description('value');
    ?>

### name


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeDefaultsConnector`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeDefaultsConnector();
    $connector->name('value');
    ?>

### position


#### Returns
`\Kendo\Dataviz\UI\DiagramShapeDefaultsConnector`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeDefaultsConnector();
    $connector->position('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $connector = new \Kendo\Dataviz\UI\DiagramShapeDefaultsConnector();
    $connector->position(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

