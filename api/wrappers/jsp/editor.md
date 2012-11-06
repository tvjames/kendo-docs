---
title: editor
slug: jsp-editor
tags: api, java
publish: true
---

# \<kendo:editor\>
A JSP tag representing Kendo Editor.


## Configuration Attributes


### encoded `boolean`

Indicates whether the Editor should submit encoded HTML tags.

#### Example
    <kendo:editor encoded="encoded">
    </kendo:editor>



### messages `Object`

Defines the text of the labels that are shown within the editor. Used primarily for localization.

#### Example
    <kendo:editor messages="messages">
    </kendo:editor>



### stylesheets `Object`

Allows custom stylesheets to be included within the editing area.

#### Example
    <kendo:editor stylesheets="stylesheets">
    </kendo:editor>



### tools `Object`

A collection of tools that should render a button, combobox, etc, to interact with the Editor. Custom tools are defined
as a collection of required properties, while the insertHtml  tool requires a collection of text-value pairs

#### Example
    <kendo:editor tools="tools">
    </kendo:editor>



### change `String`

Fires when Editor is blurred and its content has changed.

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

#### Example
    <kendo:editor keyup="handle_keyup">
    </kendo:editor>
    <script>
        function handle_keyup(e) {
            // Code to handle the keyup event.
        }
    </script>



### paste `String`

Fires before when content is pasted in the Editor.

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

#### Example
    <kendo:editor select="handle_select">
    </kendo:editor>
    <script>
        function handle_select(e) {
            // Code to handle the select event.
        }
    </script>



### Event Attributes


### change `String`

Fires when Editor is blurred and its content has changed.

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

#### Example
    <kendo:editor keyup="handle_keyup">
    </kendo:editor>
    <script>
        function handle_keyup(e) {
            // Code to handle the keyup event.
        }
    </script>



### paste `String`

Fires before when content is pasted in the Editor.

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

Fires before when content is pasted in the Editor.

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

 

## Child JSP Tags

### kendo:editor-imagebrowser

Configuration for image browser dialog.

More documentation is available at [kendo:editor-imagebrowser](/api/wrappers/jsp/editor/imagebrowser).

#### Example

    <kendo:editor>
        <kendo:editor-imagebrowser></kendo:editor-imagebrowser>
    </kendo:editor>
       
