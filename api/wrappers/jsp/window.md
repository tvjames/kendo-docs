---
title: window
slug: jsp-window
tags: api, java
publish: true
---

# \<kendo:window\>
A JSP tag representing Kendo Window.


## Configuration Attributes


### actions `Object`

The buttons for interacting with the window. Predefined array values are "Close", "Refresh", "Minimize",
and "Maximize".

#### Example
    <kendo:window actions="actions">
    </kendo:window>



### appendTo `Object`

The element that the Window will be appended to.
Note that this

#### Example
    <kendo:window appendTo="appendTo">
    </kendo:window>



### content `Object`

Specifies a URL or request options that the window should load its content from. For remote URLs, a
container iframe element is automatically created.

#### Example
    <kendo:window content="content">
    </kendo:window>



### draggable `boolean`

Enables (

#### Example
    <kendo:window draggable="draggable">
    </kendo:window>



### iframe `boolean`

Explicitly states whether content iframe should be created.

#### Example
    <kendo:window iframe="iframe">
    </kendo:window>



### maxHeight `float`

The maximum height (in pixels) that may be achieved by resizing the window.

#### Example
    <kendo:window maxHeight="maxHeight">
    </kendo:window>



### maxWidth `float`

The maximum width (in pixels) that may be achieved by resizing the window.

#### Example
    <kendo:window maxWidth="maxWidth">
    </kendo:window>



### minHeight `float`

The minimum height (in pixels) that may be achieved by resizing the window.

#### Example
    <kendo:window minHeight="minHeight">
    </kendo:window>



### minWidth `float`

The minimum width (in pixels) that may be achieved by resizing the window.

#### Example
    <kendo:window minWidth="minWidth">
    </kendo:window>



### modal `boolean`

Specifies whether the window should show a modal overlay over the page.

#### Example
    <kendo:window modal="modal">
    </kendo:window>



### resizable `boolean`

Enables (

#### Example
    <kendo:window resizable="resizable">
    </kendo:window>



### title `String`

The text in the window title bar.

#### Example
    <kendo:window title="title">
    </kendo:window>



### visible `boolean`

Specifies whether the window will be initially visible.

#### Example
    <kendo:window visible="visible">
    </kendo:window>



### activate `String`

Triggered when a Window has finished its opening animation.

#### Example
    <kendo:window activate="handle_activate">
    </kendo:window>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### close `String`

Triggered when a Window is closed (by a user or through the close() method).

#### Example
    <kendo:window close="handle_close">
    </kendo:window>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### deactivate `String`

Triggered when a Window has finished its closing animation.

#### Example
    <kendo:window deactivate="handle_deactivate">
    </kendo:window>
    <script>
        function handle_deactivate(e) {
            // Code to handle the deactivate event.
        }
    </script>



### dragend `String`

Triggered when a Window has been moved by a user.

#### Example
    <kendo:window dragend="handle_dragend">
    </kendo:window>
    <script>
        function handle_dragend(e) {
            // Code to handle the dragend event.
        }
    </script>



### dragstart `String`

Triggered when the user starts to move the window.

#### Example
    <kendo:window dragstart="handle_dragstart">
    </kendo:window>
    <script>
        function handle_dragstart(e) {
            // Code to handle the dragstart event.
        }
    </script>



### error `String`

Triggered when an AJAX request for content fails.

#### Example
    <kendo:window error="handle_error">
    </kendo:window>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### open `String`

Triggered when a Window is opened (i.e. the open() method is called).

#### Example
    <kendo:window open="handle_open">
    </kendo:window>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### refresh `String`

Triggered when the content of a Window has finished loading via AJAX,
when the window iframe has finished loading, or when the refresh button
has been clicked on a window with static content.

#### Example
    <kendo:window refresh="handle_refresh">
    </kendo:window>
    <script>
        function handle_refresh(e) {
            // Code to handle the refresh event.
        }
    </script>



### resize `String`

Triggered when a Window has been resized by a user.

#### Example
    <kendo:window resize="handle_resize">
    </kendo:window>
    <script>
        function handle_resize(e) {
            // Code to handle the resize event.
        }
    </script>



### Event Attributes


### activate `String`

Triggered when a Window has finished its opening animation.

#### Example
    <kendo:window activate="handle_activate">
    </kendo:window>
    <script>
        function handle_activate(e) {
            // Code to handle the activate event.
        }
    </script>



### close `String`

Triggered when a Window is closed (by a user or through the close() method).

#### Example
    <kendo:window close="handle_close">
    </kendo:window>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### deactivate `String`

Triggered when a Window has finished its closing animation.

#### Example
    <kendo:window deactivate="handle_deactivate">
    </kendo:window>
    <script>
        function handle_deactivate(e) {
            // Code to handle the deactivate event.
        }
    </script>



### dragend `String`

Triggered when a Window has been moved by a user.

#### Example
    <kendo:window dragend="handle_dragend">
    </kendo:window>
    <script>
        function handle_dragend(e) {
            // Code to handle the dragend event.
        }
    </script>



### dragstart `String`

Triggered when the user starts to move the window.

#### Example
    <kendo:window dragstart="handle_dragstart">
    </kendo:window>
    <script>
        function handle_dragstart(e) {
            // Code to handle the dragstart event.
        }
    </script>



### error `String`

Triggered when an AJAX request for content fails.

#### Example
    <kendo:window error="handle_error">
    </kendo:window>
    <script>
        function handle_error(e) {
            // Code to handle the error event.
        }
    </script>



### open `String`

Triggered when a Window is opened (i.e. the open() method is called).

#### Example
    <kendo:window open="handle_open">
    </kendo:window>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### refresh `String`

Triggered when the content of a Window has finished loading via AJAX,
when the window iframe has finished loading, or when the refresh button
has been clicked on a window with static content.

#### Example
    <kendo:window refresh="handle_refresh">
    </kendo:window>
    <script>
        function handle_refresh(e) {
            // Code to handle the refresh event.
        }
    </script>



### resize `String`

Triggered when a Window has been resized by a user.

#### Example
    <kendo:window resize="handle_resize">
    </kendo:window>
    <script>
        function handle_resize(e) {
            // Code to handle the resize event.
        }
    </script>


## Event Tags
 

### kendo:window-activate

Triggered when a Window has finished its opening animation.

#### Example
    <kendo:window>
        <kendo:window-activate>
            <script>
                function(e) {
                    // Code to handle the activate event.
                }
            </script>
        </kendo:window-activate>
    </kendo:window>

 

### kendo:window-close

Triggered when a Window is closed (by a user or through the close() method).

#### Example
    <kendo:window>
        <kendo:window-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:window-close>
    </kendo:window>

 

### kendo:window-deactivate

Triggered when a Window has finished its closing animation.

#### Example
    <kendo:window>
        <kendo:window-deactivate>
            <script>
                function(e) {
                    // Code to handle the deactivate event.
                }
            </script>
        </kendo:window-deactivate>
    </kendo:window>

 

### kendo:window-dragend

Triggered when a Window has been moved by a user.

#### Example
    <kendo:window>
        <kendo:window-dragend>
            <script>
                function(e) {
                    // Code to handle the dragend event.
                }
            </script>
        </kendo:window-dragend>
    </kendo:window>

 

### kendo:window-dragstart

Triggered when the user starts to move the window.

#### Example
    <kendo:window>
        <kendo:window-dragstart>
            <script>
                function(e) {
                    // Code to handle the dragstart event.
                }
            </script>
        </kendo:window-dragstart>
    </kendo:window>

 

### kendo:window-error

Triggered when an AJAX request for content fails.

#### Example
    <kendo:window>
        <kendo:window-error>
            <script>
                function(e) {
                    // Code to handle the error event.
                }
            </script>
        </kendo:window-error>
    </kendo:window>

 

### kendo:window-open

Triggered when a Window is opened (i.e. the open() method is called).

#### Example
    <kendo:window>
        <kendo:window-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:window-open>
    </kendo:window>

 

### kendo:window-refresh

Triggered when the content of a Window has finished loading via AJAX,
when the window iframe has finished loading, or when the refresh button
has been clicked on a window with static content.

#### Example
    <kendo:window>
        <kendo:window-refresh>
            <script>
                function(e) {
                    // Code to handle the refresh event.
                }
            </script>
        </kendo:window-refresh>
    </kendo:window>

 

### kendo:window-resize

Triggered when a Window has been resized by a user.

#### Example
    <kendo:window>
        <kendo:window-resize>
            <script>
                function(e) {
                    // Code to handle the resize event.
                }
            </script>
        </kendo:window-resize>
    </kendo:window>

 

## Child JSP Tags

### kendo:window-animation

A collection of {Animation} objects, used to change default animations. A value of

More documentation is available at [kendo:window-animation](/api/wrappers/jsp/window/animation).

#### Example

    <kendo:window>
        <kendo:window-animation></kendo:window-animation>
    </kendo:window>
          
