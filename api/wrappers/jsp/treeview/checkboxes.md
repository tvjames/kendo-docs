---
title: treeView-checkboxes
slug: jsp-treeView-checkboxes
tags: api, java
publish: true
---

# \<kendo:treeView-checkboxes\>

If true or an object, renders checkboxes within each treeview item.

#### Example
    <kendo:treeView>
        <kendo:treeView-checkboxes></kendo:treeView-checkboxes>
    </kendo:treeView>

## Configuration Attributes

### checkChildren `boolean`

Indicates whether checkboxes of child items should get checked when the checkbox of a parent item is checked.

#### Example
    <kendo:treeView-checkboxes checkChildren="checkChildren">
    </kendo:treeView-checkboxes>

### name `String`

Indicates the name of the checkbox inputs that will be posted to the server.

#### Example
    <kendo:treeView-checkboxes name="name">
    </kendo:treeView-checkboxes>

### template `String`

Template for the checkbox rendering. Used to set the  checkbox name attribute, or to add hidden inputs that will be posted along the checkboxes.

#### Example
    <kendo:treeView-checkboxes template="template">
    </kendo:treeView-checkboxes>


## Event Attributes

### template `String`

Template for the checkbox rendering. Used to set the  checkbox name attribute, or to add hidden inputs that will be posted along the checkboxes.


#### Example
    <kendo:treeView-checkboxes template="handle_template">
    </kendo:treeView-checkboxes>
    <script>
        function handle_template(e) {
            // Code to handle the template event.
        }
    </script>

## Event Tags

### kendo:treeView-checkboxes-template

Template for the checkbox rendering. Used to set the  checkbox name attribute, or to add hidden inputs that will be posted along the checkboxes.


#### Example
    <kendo:treeView-checkboxes>
        <kendo:treeView-checkboxes-template>
            <script>
                function(e) {
                    // Code to handle the template event.
                }
            </script>
        </kendo:treeView-checkboxes-template>
    </kendo:treeView-checkboxes>

