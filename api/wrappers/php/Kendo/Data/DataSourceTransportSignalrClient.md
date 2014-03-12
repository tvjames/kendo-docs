---
title: DataSourceTransportSignalrClient
slug: php-data-datasourcetransportsignalrclient
tags: api, php
publish: true
---

# \Kendo\Data\DataSourceTransportSignalrClient

A PHP class representing the client setting of DataSourceTransportSignalr.


## Methods

### create
Specifies the name of the client-side method of the SignalR hub responsible for creating data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrClient`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $client = new \Kendo\Data\DataSourceTransportSignalrClient();
    $client->create('value');
    ?>

### destroy
Specifies the name of the client-side method of the SignalR hub responsible for destroying data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrClient`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $client = new \Kendo\Data\DataSourceTransportSignalrClient();
    $client->destroy('value');
    ?>

### read
Specifies the name of the client-side method of the SignalR hub responsible for reading data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrClient`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $client = new \Kendo\Data\DataSourceTransportSignalrClient();
    $client->read('value');
    ?>

### update
Specifies the name of the client-side method of the SignalR hub responsible for updating data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrClient`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $client = new \Kendo\Data\DataSourceTransportSignalrClient();
    $client->update('value');
    ?>

