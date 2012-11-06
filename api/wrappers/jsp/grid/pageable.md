---
title: grid-pageable
slug: jsp-grid-pageable
tags: api, java
publish: true
---

# \<kendo:grid-pageable\>
A JSP tag representing Kendo Pageable.

#### Example
    <kendo:grid>
        <kendo:grid-pageable></kendo:grid-pageable>
    </kendo:grid>


## Configuration Attributes


### pageSize `float`

Defines the number of records which will be displyed.

#### Example
    <kendo:grid pageSize="pageSize">
    </kendo:grid>



### previousNext `boolean`

Defines if buttons for navigating to the first, last, previous and next pages will be shown.

#### Example
    <kendo:grid previousNext="previousNext">
    </kendo:grid>



### numeric `boolean`

Defines if numeric portion of the pager will be shown.

#### Example
    <kendo:grid numeric="numeric">
    </kendo:grid>



### buttonCount `float`

Defines the number of buttons displayed in the numeric pager.

#### Example
    <kendo:grid buttonCount="buttonCount">
    </kendo:grid>



### input `boolean`

Defines if an input element which allows the user to navigate to given page will be displayed.

#### Example
    <kendo:grid input="input">
    </kendo:grid>



### pageSizes `boolean`

Displayes a list with predefined page sizes. An array of values to be displayed can be provided.

#### Example
    <kendo:grid pageSizes="pageSizes">
    </kendo:grid>



### refresh `boolean`

Defines if a refresh button will be displayed.

#### Example
    <kendo:grid refresh="refresh">
    </kendo:grid>



### info `boolean`

Defines if a label showing current paging information will be displayed.

#### Example
    <kendo:grid info="info">
    </kendo:grid>



## Child JSP Tags

### kendo:grid-pageable-messages

Defines texts shown within the pager.

More documentation is available at [kendo:grid-pageable-messages](/api/wrappers/jsp/grid/pageable-messages).

#### Example

    <kendo:grid-pageable>
        <kendo:grid-pageable-messages></kendo:grid-pageable-messages>
    </kendo:grid-pageable>
 
