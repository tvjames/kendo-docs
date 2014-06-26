---
title: toolBar
---

# \<kendo:toolBar\>
A JSP wrapper for Kendo UI [ToolBar](/api/web/toolbar).

## Configuration Attributes

### resizable `boolean`

If resizable is set to true the widget will detect changes in the viewport width and hides the overflowing controls in the command overflow popup.

#### Example
    <kendo:toolBar resizable="resizable">
    </kendo:toolBar>


##  Configuration JSP Tags

### kendo:toolBar-items

A JavaScript array that contains the ToolBar's commands configuration.

More documentation is available at [kendo:toolBar-items](/api/wrappers/jsp/toolbar/items).

#### Example

    <kendo:toolBar>
        <kendo:toolBar-items></kendo:toolBar-items>
    </kendo:toolBar>


## Event Attributes

### click `String`

Fires when the user clicks a command button.


For additional information check the [click](/api/web/toolbar#events-click) event documentation.

#### Example
    <kendo:toolBar click="handle_click">
    </kendo:toolBar>
    <script>
        function handle_click(e) {
            // Code to handle the click event.
        }
    </script>

### close `String`

Fires when the SplitButton's popup closes.


For additional information check the [close](/api/web/toolbar#events-close) event documentation.

#### Example
    <kendo:toolBar close="handle_close">
    </kendo:toolBar>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>

### open `String`

Fires when the Split Button's popup opens.


For additional information check the [open](/api/web/toolbar#events-open) event documentation.

#### Example
    <kendo:toolBar open="handle_open">
    </kendo:toolBar>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>

### toggle `String`

Fires when the user changes the checked state of a toggle button.


For additional information check the [toggle](/api/web/toolbar#events-toggle) event documentation.

#### Example
    <kendo:toolBar toggle="handle_toggle">
    </kendo:toolBar>
    <script>
        function handle_toggle(e) {
            // Code to handle the toggle event.
        }
    </script>

### overflowClose `String`

Fires when the overflow popup container is about to close.


For additional information check the [overflowClose](/api/web/toolbar#events-overflowClose) event documentation.

#### Example
    <kendo:toolBar overflowClose="handle_overflowClose">
    </kendo:toolBar>
    <script>
        function handle_overflowClose(e) {
            // Code to handle the overflowClose event.
        }
    </script>

### overflowOpen `String`

Fires when the overflow popup container is about to open.


For additional information check the [overflowOpen](/api/web/toolbar#events-overflowOpen) event documentation.

#### Example
    <kendo:toolBar overflowOpen="handle_overflowOpen">
    </kendo:toolBar>
    <script>
        function handle_overflowOpen(e) {
            // Code to handle the overflowOpen event.
        }
    </script>

## Event Tags

### kendo:toolBar-click

Fires when the user clicks a command button.


For additional information check the [click](/api/web/toolbar#events-click) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-click>
            <script>
                function(e) {
                    // Code to handle the click event.
                }
            </script>
        </kendo:toolBar-click>
    </kendo:toolBar>

### kendo:toolBar-close

Fires when the SplitButton's popup closes.


For additional information check the [close](/api/web/toolbar#events-close) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:toolBar-close>
    </kendo:toolBar>

### kendo:toolBar-open

Fires when the Split Button's popup opens.


For additional information check the [open](/api/web/toolbar#events-open) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:toolBar-open>
    </kendo:toolBar>

### kendo:toolBar-toggle

Fires when the user changes the checked state of a toggle button.


For additional information check the [toggle](/api/web/toolbar#events-toggle) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-toggle>
            <script>
                function(e) {
                    // Code to handle the toggle event.
                }
            </script>
        </kendo:toolBar-toggle>
    </kendo:toolBar>

### kendo:toolBar-overflowClose

Fires when the overflow popup container is about to close.


For additional information check the [overflowClose](/api/web/toolbar#events-overflowClose) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-overflowClose>
            <script>
                function(e) {
                    // Code to handle the overflowClose event.
                }
            </script>
        </kendo:toolBar-overflowClose>
    </kendo:toolBar>

### kendo:toolBar-overflowOpen

Fires when the overflow popup container is about to open.


For additional information check the [overflowOpen](/api/web/toolbar#events-overflowOpen) event documentation.

#### Example
    <kendo:toolBar>
        <kendo:toolBar-overflowOpen>
            <script>
                function(e) {
                    // Code to handle the overflowOpen event.
                }
            </script>
        </kendo:toolBar-overflowOpen>
    </kendo:toolBar>

