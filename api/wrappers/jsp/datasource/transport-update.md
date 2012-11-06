---
title: dataSource-transport-update
slug: jsp-dataSource-transport-update
tags: api, java
publish: true
---

# \<kendo:dataSource-transport-update\>
A JSP tag representing Kendo Update.

#### Example
    <kendo:dataSource-transport>
        <kendo:dataSource-transport-update></kendo:dataSource-transport-update>
    </kendo:dataSource-transport>


## Configuration Attributes


### cache `boolean`

If set to false, it will force requested pages not to be cached by the browser. Setting cache to false also appends a query string parameter,

#### Example
    <kendo:dataSource cache="cache">
    </kendo:dataSource>



### contentType `String`

The content-type HTTP header sent to the server. Default is

#### Example
    <kendo:dataSource contentType="contentType">
    </kendo:dataSource>



### dataType `String`

The type of data that you're expecting back from the server. Commonly used values are

#### Example
    <kendo:dataSource dataType="dataType">
    </kendo:dataSource>



### type `String`

The type of request to make (

#### Example
    <kendo:dataSource type="type">
    </kendo:dataSource>



### url `String`

The remote url to call when creating a new record.

#### Example
    <kendo:dataSource url="url">
    </kendo:dataSource>



### data `Object`

Data to be send to the server.
Refer to the

#### Example
    <kendo:dataSource-transport-update data="data">
    </kendo:dataSource-transport-update>


