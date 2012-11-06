---
title: dataSource-transport
slug: jsp-dataSource-transport
tags: api, java
publish: true
---

# \<kendo:dataSource-transport\>
A JSP tag representing Kendo Transport.

#### Example
    <kendo:dataSource>
        <kendo:dataSource-transport></kendo:dataSource-transport>
    </kendo:dataSource>


## Configuration Attributes


### create `String`

Options for remote create data operation, or the URL of the remote service.

#### Example
    <kendo:dataSource create="create">
    </kendo:dataSource>



### destroy `String`

Options for remote destroy data operation, or the URL of the remote service.

#### Example
    <kendo:dataSource destroy="destroy">
    </kendo:dataSource>



### parameterMap `String`

Convert the request parameters from dataSource format to remote service specific format.

#### Example
    <kendo:dataSource parameterMap="handle_parameterMap">
    </kendo:dataSource>
    <script>
        function handle_parameterMap(e) {
            // Code to handle the parameterMap event.
        }
    </script>



### read `String`

Options for remote read data operation, or the URL of the remote service.

#### Example
    <kendo:dataSource read="read">
    </kendo:dataSource>



### update `String`

Options for remote update data operation, or the URL of the remote service.

#### Example
    <kendo:dataSource update="update">
    </kendo:dataSource>



## Child JSP Tags

### kendo:dataSource-transport-create

Options for remote create data operation, or the URL of the remote service.

More documentation is available at [kendo:dataSource-transport-create](/api/wrappers/jsp/datasource/transport-create).

#### Example

    <kendo:dataSource-transport>
        <kendo:dataSource-transport-create></kendo:dataSource-transport-create>
    </kendo:dataSource-transport>
 
### kendo:dataSource-transport-destroy

Options for remote destroy data operation, or the URL of the remote service.

More documentation is available at [kendo:dataSource-transport-destroy](/api/wrappers/jsp/datasource/transport-destroy).

#### Example

    <kendo:dataSource-transport>
        <kendo:dataSource-transport-destroy></kendo:dataSource-transport-destroy>
    </kendo:dataSource-transport>
 
### kendo:dataSource-transport-read

Options for remote read data operation, or the URL of the remote service.

More documentation is available at [kendo:dataSource-transport-read](/api/wrappers/jsp/datasource/transport-read).

#### Example

    <kendo:dataSource-transport>
        <kendo:dataSource-transport-read></kendo:dataSource-transport-read>
    </kendo:dataSource-transport>
 
### kendo:dataSource-transport-update

Options for remote update data operation, or the URL of the remote service.

More documentation is available at [kendo:dataSource-transport-update](/api/wrappers/jsp/datasource/transport-update).

#### Example

    <kendo:dataSource-transport>
        <kendo:dataSource-transport-update></kendo:dataSource-transport-update>
    </kendo:dataSource-transport>
  
