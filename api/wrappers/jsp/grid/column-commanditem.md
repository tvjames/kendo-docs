---
title: grid-column-commandItem
slug: jsp-grid-column-commandItem
tags: api, java
publish: true
---

# \<kendo:grid-column-commandItem\>
A JSP tag representing Kendo CommandItem.

#### Example
    <kendo:grid-column-command>
        <kendo:grid-column-commandItem></kendo:grid-column-commandItem>
    </kendo:grid-column-command>


## Configuration Attributes


### name `String`

The unique name of the command. The supported built-in commands are: "create", "cancel", "save", "destroy".

#### Example
    <kendo:grid name="name">
    </kendo:grid>



### text `String`

The text displayed by the command.

#### Example
    <kendo:grid text="text">
    </kendo:grid>



### className `String`

The CSS class of the command.

#### Example
    <kendo:grid className="className">
    </kendo:grid>



### click `String`

The JavaScript function executed when the user clicks the command button.

#### Example
    <kendo:grid click="handle_click">
    </kendo:grid>
    <script>
        function handle_click(e) {
            // Code to handle the click event.
        }
    </script>



## Child JSP Tags
 
