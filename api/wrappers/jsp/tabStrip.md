---
title: tabStrip
---

# \<kendo:tabStrip\>
A JSP wrapper for Kendo UI [TabStrip](/api/web/tabstrip).

## Configuration Attributes

### animation `boolean`

A collection of visual animations used when TabStrip tab are selected through
user interactions. Setting this option to false will disable all animations. Further configuration is available via [kendo:tabStrip-animation](#kendo-tabStrip-animation). 

#### Example
    <kendo:tabStrip animation="animation">
    </kendo:tabStrip>

### collapsible `boolean`

Specifies whether the TabStrip should be able to collapse completely when clicking an expanded tab.

#### Example
    <kendo:tabStrip collapsible="collapsible">
    </kendo:tabStrip>

### contentUrls `java.lang.Object`

Sets an array with the URLs from which the tabs content to be loaded from. If only specific tabs should be loaded via Ajax, then you should set the URLs to the corresponding positions in the array and set the other elements to null.

#### Example
    <kendo:tabStrip contentUrls="contentUrls">
    </kendo:tabStrip>

### dataContentField `java.lang.String`

Sets the field of the data item that provides the text content of
the tab content element.

#### Example
    <kendo:tabStrip dataContentField="dataContentField">
    </kendo:tabStrip>

### dataContentUrlField `java.lang.String`

Sets the field of the data item that provides the URL for
the ajax loaded tab content.

#### Example
    <kendo:tabStrip dataContentUrlField="dataContentUrlField">
    </kendo:tabStrip>

### dataImageUrlField `java.lang.String`

Sets the field of the data item that provides the image URL of
the tab.

#### Example
    <kendo:tabStrip dataImageUrlField="dataImageUrlField">
    </kendo:tabStrip>

### dataSpriteCssClass `java.lang.String`

Sets the field of the data item that provides the CSS class of
the tab.

#### Example
    <kendo:tabStrip dataSpriteCssClass="dataSpriteCssClass">
    </kendo:tabStrip>

### dataTextField `java.lang.String`

Sets the field of the data item that provides the text name of the tab.

#### Example
    <kendo:tabStrip dataTextField="dataTextField">
    </kendo:tabStrip>

### dataUrlField `java.lang.String`

Sets the field of the data item that provides the link URL for the
tab.

#### Example
    <kendo:tabStrip dataUrlField="dataUrlField">
    </kendo:tabStrip>

### navigatable `boolean`

Specifies whether the TabStrip should be keyboard navigatable.

#### Example
    <kendo:tabStrip navigatable="navigatable">
    </kendo:tabStrip>


##  Configuration JSP Tags

### kendo:tabStrip-animation

A collection of visual animations used when TabStrip tab are selected through
user interactions. Setting this option to false will disable all animations.

More documentation is available at [kendo:tabStrip-animation](/api/wrappers/jsp/tabstrip/animation).

#### Example

    <kendo:tabStrip>
        <kendo:tabStrip-animation></kendo:tabStrip-animation>
    </kendo:tabStrip>

### kendo:tabStrip-items

Contains the items of the tabstrip widget

More documentation is available at [kendo:tabStrip-items](/api/wrappers/jsp/tabstrip/items).

#### Example

    <kendo:tabStrip>
        <kendo:tabStrip-items></kendo:tabStrip-items>
    </kendo:tabStrip>


## Event Attributes

### activate `String`

Triggered after a tab is being made visible and its animation complete. Before Q2 2014 this event was invoked after tab show, but before the end of the animation.


For additional information check the [activate](/api/web/tabstrip#events-activate) event documentation.

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


For additional information check the [contentLoad](/api/web/tabstrip#events-contentLoad) event documentation.

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


For additional information check the [error](/api/web/tabstrip#events-error) event documentation.

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


For additional information check the [select](/api/web/tabstrip#events-select) event documentation.

#### Example
    <kendo:tabStrip select="handle_select">
    </kendo:tabStrip>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

### show `String`

Triggered just after a tab is being made visible, but before the end of the animation. Before Q2 2014 this event was called activate.


For additional information check the [show](/api/web/tabstrip#events-show) event documentation.

#### Example
    <kendo:tabStrip show="handle_show">
    </kendo:tabStrip>
    <script>
        function handle_show(e) {
            // Code to handle the show event.
        }
    </script>

## Event Tags

### kendo:tabStrip-activate

Triggered after a tab is being made visible and its animation complete. Before Q2 2014 this event was invoked after tab show, but before the end of the animation.


For additional information check the [activate](/api/web/tabstrip#events-activate) event documentation.

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


For additional information check the [contentLoad](/api/web/tabstrip#events-contentLoad) event documentation.

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


For additional information check the [error](/api/web/tabstrip#events-error) event documentation.

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


For additional information check the [select](/api/web/tabstrip#events-select) event documentation.

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

### kendo:tabStrip-show

Triggered just after a tab is being made visible, but before the end of the animation. Before Q2 2014 this event was called activate.


For additional information check the [show](/api/web/tabstrip#events-show) event documentation.

#### Example
    <kendo:tabStrip>
        <kendo:tabStrip-show>
            <script>
                function(e) {
                    // Code to handle the show event.
                }
            </script>
        </kendo:tabStrip-show>
    </kendo:tabStrip>

