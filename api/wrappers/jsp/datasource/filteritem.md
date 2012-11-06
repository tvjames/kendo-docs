---
title: dataSource-filterItem
slug: jsp-dataSource-filterItem
tags: api, java
publish: true
---

# \<kendo:dataSource-filterItem\>
A JSP tag representing Kendo FilterItem.

#### Example
    <kendo:dataSource-filter>
        <kendo:dataSource-filterItem></kendo:dataSource-filterItem>
    </kendo:dataSource-filter>


## Configuration Attributes


### operator `String`

Specifies the filter operator. One of the following values "eq", "neq", "lt", "lte", "gt", "gte", "startswith", "endswith", "contains".

#### Example
    <kendo:dataSource operator="operator">
    </kendo:dataSource>



### field `String`

Specifies the field to filter by.

#### Example
    <kendo:dataSource field="field">
    </kendo:dataSource>



### value `Object`

Specifies the value to filter for.

#### Example
    <kendo:dataSource value="value">
    </kendo:dataSource>


