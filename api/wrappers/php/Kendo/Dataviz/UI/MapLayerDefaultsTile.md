---
title: MapLayerDefaultsTile
slug: php-dataviz-ui-maplayerdefaultstile
tags: api, php
publish: true
---

# \Kendo\Dataviz\UI\MapLayerDefaultsTile

A PHP class representing the tile setting of MapLayerDefaults.


## Methods

### attribution
The attribution of all tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsTile`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tile = new \Kendo\Dataviz\UI\MapLayerDefaultsTile();
    $tile->attribution('value');
    ?>

### opacity
The the opacity of all tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsTile`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $tile = new \Kendo\Dataviz\UI\MapLayerDefaultsTile();
    $tile->opacity(1);
    ?>

### subdomains
The subdomain of all tile layers.

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsTile`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $tile = new \Kendo\Dataviz\UI\MapLayerDefaultsTile();
    $tile->subdomains(new array());
    ?>

### urlTemplate
The URL template for tile layers. Template variables:

#### Returns
`\Kendo\Dataviz\UI\MapLayerDefaultsTile`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tile = new \Kendo\Dataviz\UI\MapLayerDefaultsTile();
    $tile->urlTemplate('value');
    ?>

