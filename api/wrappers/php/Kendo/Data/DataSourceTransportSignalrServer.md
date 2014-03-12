---
title: DataSourceTransportSignalrServer
slug: php-data-datasourcetransportsignalrserver
tags: api, php
publish: true
---

# \Kendo\Data\DataSourceTransportSignalrServer

A PHP class representing the server setting of DataSourceTransportSignalr.


## Methods

### create
Specifies the name of the server-side method of the SignalR hub responsible for creating data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrServer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $server = new \Kendo\Data\DataSourceTransportSignalrServer();
    $server->create('value');
    ?>

### destroy
Specifies the name of the server-side method of the SignalR hub responsible for destroying data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrServer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $server = new \Kendo\Data\DataSourceTransportSignalrServer();
    $server->destroy('value');
    ?>

### read
Specifies the name of the server-side method of the SignalR hub responsible for reading data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrServer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $server = new \Kendo\Data\DataSourceTransportSignalrServer();
    $server->read('value');
    ?>

### update
Specifies the name of the server-side method of the SignalR hub responsible for updating data items.

#### Returns
`\Kendo\Data\DataSourceTransportSignalrServer`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $server = new \Kendo\Data\DataSourceTransportSignalrServer();
    $server->update('value');
    ?>

