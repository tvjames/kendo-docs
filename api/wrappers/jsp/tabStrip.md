---
title: tabStrip
slug: jsp-tabStrip
tags: api, java
publish: true
---

# \<kendo:tabStrip\>
A JSP tag representing Kendo TabStrip.


## Configuration Attributes


### collapsible `boolean`

Specifies whether the TabStrip should be able to collapse completely when clicking an expanded tab.

#### Example
    <kendo:tabStrip collapsible="collapsible">
    </kendo:tabStrip>



### dataContentField `String`

Sets the field of the data item that provides the text content of
the tab content element.

#### Example
    <kendo:tabStrip dataContentField="dataContentField">
    </kendo:tabStrip>



### dataContentUrlField `String`

Sets the field of the data item that provides the URL for
the ajax loaded tab content.

#### Example
    <kendo:tabStrip dataContentUrlField="dataContentUrlField">
    </kendo:tabStrip>



### dataImageUrlField `String`

Sets the field of the data item that provides the image URL of
the tab.

#### Example
    <kendo:tabStrip dataImageUrlField="dataImageUrlField">
    </kendo:tabStrip>



### dataSpriteCssClass `String`

Sets the field of the data item that provides the CSS class of
the tab.

#### Example
    <kendo:tabStrip dataSpriteCssClass="dataSpriteCssClass">
    </kendo:tabStrip>



### dataTextField `String`

Sets the field of the data item that provides the text name of the tab.

#### Example
    <kendo:tabStrip dataTextField="dataTextField">
    </kendo:tabStrip>



### dataUrlField `String`

Sets the field of the data item that provides the link URL for the
tab.

#### Example
    <kendo:tabStrip dataUrlField="dataUrlField">
    </kendo:tabStrip>



### activate `String`

Triggered just after a tab is being made visible, but before the end of the animation

#### Example
    <kendo:tabStrip activate="handle_activate">
    </kendo:tabStrip>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### contentLoad `String`

Triggered when content is fetched from an AJAX request.

#### Example
    <kendo:tabStrip contentLoad="handle_contentLoad">
    </kendo:tabStrip>
    <script>
        function handle_contentLoad(e) {
            // Code to handle the contentLoad event.
        }
    </script>



### error `String`

Triggered when an AJAX request results in an error.

#### Example
    <kendo:tabStrip error="handle_error">
    </kendo:tabStrip>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### select `String`

Triggered before a tab is selected.

#### Example
    <kendo:tabStrip select="handle_select">
    </kendo:tabStrip>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### activate `String`

Triggered just after a tab is being made visible, but before the end of the animation

#### Example
    <kendo:tabStrip activate="handle_activate">
    </kendo:tabStrip>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### contentLoad `String`

Triggered when content is fetched from an AJAX request.

#### Example
    <kendo:tabStrip contentLoad="handle_contentLoad">
    </kendo:tabStrip>
    <script>
        function handle_contentLoad(e) {
            // Code to handle the contentLoad event.
        }
    </script>



### error `String`

Triggered when an AJAX request results in an error.

#### Example
    <kendo:tabStrip error="handle_error">
    </kendo:tabStrip>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### select `String`

Triggered before a tab is selected.

#### Example
    <kendo:tabStrip select="handle_select">
    </kendo:tabStrip>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>


## Event Tags
  

### kendo:tabStrip-activate

Triggered just after a tab is being made visible, but before the end of the animation

#### Example
    <kendo:tabStrip>
        <kendo:tabStrip-activate>
            <script>
                function(e) {
                    // Code to handle the activate event.
                }
            </script>
        </kendo:tabStrip-activate>
    </kendo:tabStrip>

 

### kendo:tabStrip-contentLoad

Triggered when content is fetched from an AJAX request.

#### Example
    <kendo:tabStrip>
        <kendo:tabStrip-contentLoad>
            <script>
                function(e) {
                    // Code to handle the contentLoad event.
                }
            </script>
        </kendo:tabStrip-contentLoad>
    </kendo:tabStrip>

 

### kendo:tabStrip-error

Triggered when an AJAX request results in an error.

#### Example
    <kendo:tabStrip>
        <kendo:tabStrip-error>
            <script>
                function(e) {
                    // Code to handle the error event.
                }
            </script>
        </kendo:tabStrip-error>
    </kendo:tabStrip>

 

### kendo:tabStrip-select

Triggered before a tab is selected.

#### Example
    <kendo:tabStrip>
        <kendo:tabStrip-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:tabStrip-select>
    </kendo:tabStrip>

 

## Child JSP Tags

### kendo:tabStrip-animation

A collection of visual animations used when

More documentation is available at [kendo:tabStrip-animation](/api/wrappers/jsp/tabstrip/animation).

#### Example

    <kendo:tabStrip>
        <kendo:tabStrip-animation></kendo:tabStrip-animation>
    </kendo:tabStrip>
 
### kendo:tabStrip-items

Contains items of TabStrip

More documentation is available at [kendo:tabStrip-items](/api/wrappers/jsp/tabstrip/items).

#### Example

    <kendo:tabStrip>
        <kendo:tabStrip-items></kendo:tabStrip-items>
    </kendo:tabStrip>
     
