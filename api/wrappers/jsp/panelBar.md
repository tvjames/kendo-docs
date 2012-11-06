---
title: panelBar
slug: jsp-panelBar
tags: api, java
publish: true
---

# \<kendo:panelBar\>
A JSP tag representing Kendo PanelBar.


## Configuration Attributes


### expandMode `String`

Specifies how the

#### Example
    <kendo:panelBar expandMode="expandMode">
    </kendo:panelBar>



### activate `String`

Triggered when an item of a PanelBar is activated.

#### Example
    <kendo:panelBar activate="handle_activate">
    </kendo:panelBar>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### collapse `String`

Triggered when an item of a PanelBar is collapsed.

#### Example
    <kendo:panelBar collapse="handle_collapse">
    </kendo:panelBar>
    <script>
        function handle_collapse(e) {
            // Code to handle the collapse event.
        }
    </script>



### contentLoad `String`

Fires when content is fetched from an AJAX request.

#### Example
    <kendo:panelBar contentLoad="handle_contentLoad">
    </kendo:panelBar>
    <script>
        function handle_contentLoad(e) {
            // Code to handle the contentLoad event.
        }
    </script>



### error `String`

Fires when AJAX request results in an error.

#### Example
    <kendo:panelBar error="handle_error">
    </kendo:panelBar>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### expand `String`

Triggered when an item of a PanelBar is expanded.

#### Example
    <kendo:panelBar expand="handle_expand">
    </kendo:panelBar>
    <script>
        function handle_expand(e) {
            // Code to handle the expand event.
        }
    </script>



### select `String`

Triggered when an item of a PanelBar is selected.

#### Example
    <kendo:panelBar select="handle_select">
    </kendo:panelBar>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### activate `String`

Triggered when an item of a PanelBar is activated.

#### Example
    <kendo:panelBar activate="handle_activate">
    </kendo:panelBar>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### collapse `String`

Triggered when an item of a PanelBar is collapsed.

#### Example
    <kendo:panelBar collapse="handle_collapse">
    </kendo:panelBar>
    <script>
        function handle_collapse(e) {
            // Code to handle the collapse event.
        }
    </script>



### contentLoad `String`

Fires when content is fetched from an AJAX request.

#### Example
    <kendo:panelBar contentLoad="handle_contentLoad">
    </kendo:panelBar>
    <script>
        function handle_contentLoad(e) {
            // Code to handle the contentLoad event.
        }
    </script>



### error `String`

Fires when AJAX request results in an error.

#### Example
    <kendo:panelBar error="handle_error">
    </kendo:panelBar>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### expand `String`

Triggered when an item of a PanelBar is expanded.

#### Example
    <kendo:panelBar expand="handle_expand">
    </kendo:panelBar>
    <script>
        function handle_expand(e) {
            // Code to handle the expand event.
        }
    </script>



### select `String`

Triggered when an item of a PanelBar is selected.

#### Example
    <kendo:panelBar select="handle_select">
    </kendo:panelBar>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>


## Event Tags
  

### kendo:panelBar-activate

Triggered when an item of a PanelBar is activated.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-activate>
            <script>
                function(e) {
                    // Code to handle the activate event.
                }
            </script>
        </kendo:panelBar-activate>
    </kendo:panelBar>

 

### kendo:panelBar-collapse

Triggered when an item of a PanelBar is collapsed.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-collapse>
            <script>
                function(e) {
                    // Code to handle the collapse event.
                }
            </script>
        </kendo:panelBar-collapse>
    </kendo:panelBar>

 

### kendo:panelBar-contentLoad

Fires when content is fetched from an AJAX request.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-contentLoad>
            <script>
                function(e) {
                    // Code to handle the contentLoad event.
                }
            </script>
        </kendo:panelBar-contentLoad>
    </kendo:panelBar>

 

### kendo:panelBar-error

Fires when AJAX request results in an error.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-error>
            <script>
                function(e) {
                    // Code to handle the error event.
                }
            </script>
        </kendo:panelBar-error>
    </kendo:panelBar>

 

### kendo:panelBar-expand

Triggered when an item of a PanelBar is expanded.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-expand>
            <script>
                function(e) {
                    // Code to handle the expand event.
                }
            </script>
        </kendo:panelBar-expand>
    </kendo:panelBar>

 

### kendo:panelBar-select

Triggered when an item of a PanelBar is selected.

#### Example
    <kendo:panelBar>
        <kendo:panelBar-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:panelBar-select>
    </kendo:panelBar>

 

## Child JSP Tags

### kendo:panelBar-animation

A collection of visual animations used when

More documentation is available at [kendo:panelBar-animation](/api/wrappers/jsp/panelbar/animation).

#### Example

    <kendo:panelBar>
        <kendo:panelBar-animation></kendo:panelBar-animation>
    </kendo:panelBar>
 
### kendo:panelBar-items

Contains items of PanelBar

More documentation is available at [kendo:panelBar-items](/api/wrappers/jsp/panelbar/items).

#### Example

    <kendo:panelBar>
        <kendo:panelBar-items></kendo:panelBar-items>
    </kendo:panelBar>
       
