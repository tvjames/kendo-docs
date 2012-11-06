---
title: dataSource-schema
slug: jsp-dataSource-schema
tags: api, java
publish: true
---

# \<kendo:dataSource-schema\>
A JSP tag representing Kendo Schema.

#### Example
    <kendo:dataSource>
        <kendo:dataSource-schema></kendo:dataSource-schema>
    </kendo:dataSource>


## Configuration Attributes


### aggregates `String`

Specifies the field from the response which contains the aggregate results. If set to a function - the function will be called to
return the aggregate results for the current response.

#### Example
    <kendo:dataSource aggregates="aggregates">
    </kendo:dataSource>



### data `String`

Specifies the field from the response which contains the data items. If set to a function - the function will be called to
return the data items for the current response.

#### Example
    <kendo:dataSource data="data">
    </kendo:dataSource>



### errors `String`

Specifies the field from the response which contains any errors. If set to a function - the function will be called to
return the errors for the current response (if present). If there are any errors the

#### Example
    <kendo:dataSource errors="errors">
    </kendo:dataSource>



### groups `String`

Specifies the field from the response which contains the groups. If set to a function - the function will be called to
return the groups for the current response.

#### Example
    <kendo:dataSource groups="groups">
    </kendo:dataSource>



### model `Object`

Describes the

#### Example
    <kendo:dataSource model="model">
    </kendo:dataSource>



### parse `String`

Executed before the server response is used. Appropriate for preprocessing or parsing of the server response.

#### Example
    <kendo:dataSource parse="handle_parse">
    </kendo:dataSource>
    <script>
        function handle_parse(e) {
            // Code to handle the parse event.
        }
    </script>



### total `String`

Specifies the field from the response which contains the total number of data items. If set to a function - the function will be called to
return the total number of data items for the current response.

#### Example
    <kendo:dataSource total="total">
    </kendo:dataSource>



### type `String`

Specify the type of the response - XML or JSON. The only supported values are

#### Example
    <kendo:dataSource type="type">
    </kendo:dataSource>



## Child JSP Tags
 
