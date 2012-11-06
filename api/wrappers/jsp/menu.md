---
title: menu
slug: jsp-menu
tags: api, java
publish: true
---

# \<kendo:menu\>
A JSP tag representing Kendo Menu.


## Configuration Attributes


### closeOnClick `boolean`

Specifies that sub menus should close after item selection (provided they won't navigate).

#### Example
    <kendo:menu closeOnClick="closeOnClick">
    </kendo:menu>



### direction `String`

Specifies Menu opening direction. Can be "top", "bottom", "left", "right".
You can also specify different direction for root and sub menu items, separating them with space. The example below will initialize the root menu to open upwards and
its sub menus to the left.

#### Example
    <kendo:menu direction="direction">
    </kendo:menu>



### hoverDelay `float`

Specifies the delay in ms before the menu is opened/closed - used to avoid accidental closure on leaving.

#### Example
    <kendo:menu hoverDelay="hoverDelay">
    </kendo:menu>



### openOnClick `boolean`

Specifies that the root sub menus will be opened on item click.

#### Example
    <kendo:menu openOnClick="openOnClick">
    </kendo:menu>



### orientation `String`

Root menu orientation. Could be horizontal or vertical.

#### Example
    <kendo:menu orientation="orientation">
    </kendo:menu>



### popupCollision `String`

Specifies how Menu should adjust to screen boundaries. By default the strategy is

#### Example
    <kendo:menu popupCollision="popupCollision">
    </kendo:menu>



### close `String`

Fires after a sub menu gets closed.

#### Example
    <kendo:menu close="handle_close">
    </kendo:menu>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### open `String`

Fires before a sub menu gets opened.

#### Example
    <kendo:menu open="handle_open">
    </kendo:menu>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### select `String`

Fires when a menu item gets selected.

#### Example
    <kendo:menu select="handle_select">
    </kendo:menu>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### close `String`

Fires after a sub menu gets closed.

#### Example
    <kendo:menu close="handle_close">
    </kendo:menu>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### open `String`

Fires before a sub menu gets opened.

#### Example
    <kendo:menu open="handle_open">
    </kendo:menu>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### select `String`

Fires when a menu item gets selected.

#### Example
    <kendo:menu select="handle_select">
    </kendo:menu>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>


## Event Tags
  

### kendo:menu-close

Fires after a sub menu gets closed.

#### Example
    <kendo:menu>
        <kendo:menu-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:menu-close>
    </kendo:menu>

 

### kendo:menu-open

Fires before a sub menu gets opened.

#### Example
    <kendo:menu>
        <kendo:menu-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:menu-open>
    </kendo:menu>

 

### kendo:menu-select

Fires when a menu item gets selected.

#### Example
    <kendo:menu>
        <kendo:menu-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:menu-select>
    </kendo:menu>

 

## Child JSP Tags

### kendo:menu-animation

A collection of

More documentation is available at [kendo:menu-animation](/api/wrappers/jsp/menu/animation).

#### Example

    <kendo:menu>
        <kendo:menu-animation></kendo:menu-animation>
    </kendo:menu>
 
### kendo:menu-items

Contains items of Menu

More documentation is available at [kendo:menu-items](/api/wrappers/jsp/menu/items).

#### Example

    <kendo:menu>
        <kendo:menu-items></kendo:menu-items>
    </kendo:menu>
    
