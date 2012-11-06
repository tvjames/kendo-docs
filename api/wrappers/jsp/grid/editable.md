---
title: grid-editable
slug: jsp-grid-editable
tags: api, java
publish: true
---

# \<kendo:grid-editable\>
A JSP tag representing Kendo Editable.

#### Example
    <kendo:grid>
        <kendo:grid-editable></kendo:grid-editable>
    </kendo:grid>


## Configuration Attributes


### confirmation `boolean`

Defines the text that will be used in confirmation box when delete an item.

#### Example
    <kendo:grid confirmation="confirmation">
    </kendo:grid>



### destroy `boolean`

Indicates whether item should be deleted when click on delete button.

#### Example
    <kendo:grid destroy="destroy">
    </kendo:grid>



### mode `String`

Indicates which of the available edit modes(incell(default)/inline/popup) will be used

#### Example
    <kendo:grid mode="mode">
    </kendo:grid>



### template `String`

Template which will be use during popup editing

#### Example
    <kendo:grid template="template">
    </kendo:grid>



### update `boolean`

Indicates whether item should be switched to edit mode on click.

#### Example
    <kendo:grid update="update">
    </kendo:grid>


