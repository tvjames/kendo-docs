---
title: editor
---

# \<kendo:editor\>
A JSP wrapper for Kendo UI [Editor](/api/web/editor).

## Configuration Attributes

### content `java.lang.Object`

The content of the editor

#### Example
    <kendo:editor content="content">
    </kendo:editor>

### domain `java.lang.String`

Relaxes the same-origin policy when using the iframe-based editor.
This is done automatically for all cases except when the policy is relaxed by document.domain = document.domain.
In that case, this property must be used to allow the editor to function properly across browsers.
This property has been introduced in internal builds after 2014.1.319.

#### Example
    <kendo:editor domain="domain">
    </kendo:editor>

### encoded `boolean`

Indicates whether the Editor should submit encoded HTML tags. By default, the submitted value is encoded.

#### Example
    <kendo:editor encoded="encoded">
    </kendo:editor>

### messages `java.lang.Object`

Defines the text of the labels that are shown within the editor. Used primarily for localization.

#### Example
    <kendo:editor messages="messages">
    </kendo:editor>

### stylesheets `java.lang.Object`

Allows custom stylesheets to be included within the editing area. This setting is applicable only when the Editor is initialized from a textarea
and a contenteditable iframe is generated.

#### Example
    <kendo:editor stylesheets="stylesheets">
    </kendo:editor>

### tag `java.lang.String`

The tag that will be rendered. Defaults to "textarea". Triggers the inline edit mode if different.

#### Example
    <kendo:editor tag="tag">
    </kendo:editor>


##  Configuration JSP Tags

### kendo:editor-fileBrowser

Configuration for file browser dialog.

More documentation is available at [kendo:editor-fileBrowser](/api/wrappers/jsp/editor/filebrowser).

#### Example

    <kendo:editor>
        <kendo:editor-fileBrowser></kendo:editor-fileBrowser>
    </kendo:editor>

### kendo:editor-imageBrowser

Configuration for image browser dialog.

More documentation is available at [kendo:editor-imageBrowser](/api/wrappers/jsp/editor/imagebrowser).

#### Example

    <kendo:editor>
        <kendo:editor-imageBrowser></kendo:editor-imageBrowser>
    </kendo:editor>

### kendo:editor-serialization

Allows setting of serialization options.

More documentation is available at [kendo:editor-serialization](/api/wrappers/jsp/editor/serialization).

#### Example

    <kendo:editor>
        <kendo:editor-serialization></kendo:editor-serialization>
    </kendo:editor>

### kendo:editor-tools

A collection of tools that are used to interact with the Editor.
Tools may be switched on by specifying their name.
Custom tools and tools that require configuration are defined as objects.The available editor commands are:

More documentation is available at [kendo:editor-tools](/api/wrappers/jsp/editor/tools).

#### Example

    <kendo:editor>
        <kendo:editor-tools></kendo:editor-tools>
    </kendo:editor>


## Event Attributes

### change `String`

Fires when Editor is blurred and its content has changed.


For additional information check the [change](/api/web/editor#events-change) event documentation.

#### Example
    <kendo:editor change="handle_change">
    </kendo:editor>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### execute `String`

Fires when an Editor command is executed.


For additional information check the [execute](/api/web/editor#events-execute) event documentation.

#### Example
    <kendo:editor execute="handle_execute">
    </kendo:editor>
    <script>
        function handle_execute(e) {
            // Code to handle the execute event.
        }
    </script>

### keydown `String`

Fires when the user depresses a keyboard key. Triggered multiple times if the user holds the key down.


For additional information check the [keydown](/api/web/editor#events-keydown) event documentation.

#### Example
    <kendo:editor keydown="handle_keydown">
    </kendo:editor>
    <script>
        function handle_keydown(e) {
            // Code to handle the keydown event.
        }
    </script>

### keyup `String`

Fires when the user releases a keyboard key.


For additional information check the [keyup](/api/web/editor#events-keyup) event documentation.

#### Example
    <kendo:editor keyup="handle_keyup">
    </kendo:editor>
    <script>
        function handle_keyup(e) {
            // Code to handle the keyup event.
        }
    </script>

### paste `String`

Fires before the content is pasted in the Editor.


For additional information check the [paste](/api/web/editor#events-paste) event documentation.

#### Example
    <kendo:editor paste="handle_paste">
    </kendo:editor>
    <script>
        function handle_paste(e) {
            // Code to handle the paste event.
        }
    </script>

### select `String`

Fires when the Editor selection has changed.


For additional information check the [select](/api/web/editor#events-select) event documentation.

#### Example
    <kendo:editor select="handle_select">
    </kendo:editor>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>

## Event Tags

### kendo:editor-change

Fires when Editor is blurred and its content has changed.


For additional information check the [change](/api/web/editor#events-change) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:editor-change>
    </kendo:editor>

### kendo:editor-execute

Fires when an Editor command is executed.


For additional information check the [execute](/api/web/editor#events-execute) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-execute>
            <script>
                function(e) {
                    // Code to handle the execute event.
                }
            </script>
        </kendo:editor-execute>
    </kendo:editor>

### kendo:editor-keydown

Fires when the user depresses a keyboard key. Triggered multiple times if the user holds the key down.


For additional information check the [keydown](/api/web/editor#events-keydown) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-keydown>
            <script>
                function(e) {
                    // Code to handle the keydown event.
                }
            </script>
        </kendo:editor-keydown>
    </kendo:editor>

### kendo:editor-keyup

Fires when the user releases a keyboard key.


For additional information check the [keyup](/api/web/editor#events-keyup) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-keyup>
            <script>
                function(e) {
                    // Code to handle the keyup event.
                }
            </script>
        </kendo:editor-keyup>
    </kendo:editor>

### kendo:editor-paste

Fires before the content is pasted in the Editor.


For additional information check the [paste](/api/web/editor#events-paste) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-paste>
            <script>
                function(e) {
                    // Code to handle the paste event.
                }
            </script>
        </kendo:editor-paste>
    </kendo:editor>

### kendo:editor-select

Fires when the Editor selection has changed.


For additional information check the [select](/api/web/editor#events-select) event documentation.

#### Example
    <kendo:editor>
        <kendo:editor-select>
            <script>
                function(e) {
                    // Code to handle the select event.
                }
            </script>
        </kendo:editor-select>
    </kendo:editor>

