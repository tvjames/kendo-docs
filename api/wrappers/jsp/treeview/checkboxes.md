---
title: treeView-checkboxes
slug: jsp-treeView-checkboxes
tags: api, java
publish: true
---

# \<kendo:treeView-checkboxes\>
A JSP tag representing Kendo Checkboxes.

#### Example
    <kendo:treeView>
        <kendo:treeView-checkboxes></kendo:treeView-checkboxes>
    </kendo:treeView>


## Configuration Attributes


### checkChildren `boolean`

Indicates whether checkboxes of child items should get checked when the checkbox of a parent item is checked.

#### Example
    <kendo:treeView checkChildren="checkChildren">
    </kendo:treeView>



### template `String`

Template for the checkbox rendering. Used to set the  checkbox name attribute, or to add hidden inputs that will be posted along the checkboxes.

#### Example
    <kendo:treeView template="template">
    </kendo:treeView>


