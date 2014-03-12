---
title: DataSourceTransportSignalr
slug: php-data-datasourcetransportsignalr
tags: api, php
publish: true
---

# \Kendo\Data\DataSourceTransportSignalr

A PHP class representing the signalr setting of DataSourceTransport.


## Methods

### client

Specifies the client-side CRUD methods of the SignalR hub.

#### Returns
`\Kendo\Data\DataSourceTransportSignalr`

#### Parameters

##### $value `\Kendo\Data\DataSourceTransportSignalrClient|array`


#### Example - using [\Kendo\Data\DataSourceTransportSignalrClient](/kendo-ui/api/wrappers/php/Kendo/Data/DataSourceTransportSignalrClient)
    <?php
    $signalr = new \Kendo\Data\DataSourceTransportSignalr();
    $client = new \Kendo\Data\DataSourceTransportSignalrClient();
    $create = 'value';
    $client->create($create);
    $signalr->client($client);
    ?>

#### Example - using array

    <?php
    $signalr = new \Kendo\Data\DataSourceTransportSignalr();
    $create = 'value';
    $signalr->client(array('create' => $create));
    ?>

### hub
The SignalR hub object returned by the createHubProxy method. The hub option is mandatory.

#### Returns
`\Kendo\Data\DataSourceTransportSignalr`

#### Parameters

##### $value ``



### promise
The promise returned by the start method of the SignalR connection. The promise option is mandatory.

#### Returns
`\Kendo\Data\DataSourceTransportSignalr`

#### Parameters

##### $value ``



### server

Specifies the server-side CRUD methods of the SignalR hub.

#### Returns
`\Kendo\Data\DataSourceTransportSignalr`

#### Parameters

##### $value `\Kendo\Data\DataSourceTransportSignalrServer|array`


#### Example - using [\Kendo\Data\DataSourceTransportSignalrServer](/kendo-ui/api/wrappers/php/Kendo/Data/DataSourceTransportSignalrServer)
    <?php
    $signalr = new \Kendo\Data\DataSourceTransportSignalr();
    $server = new \Kendo\Data\DataSourceTransportSignalrServer();
    $create = 'value';
    $server->create($create);
    $signalr->server($server);
    ?>

#### Example - using array

    <?php
    $signalr = new \Kendo\Data\DataSourceTransportSignalr();
    $create = 'value';
    $signalr->server(array('create' => $create));
    ?>

