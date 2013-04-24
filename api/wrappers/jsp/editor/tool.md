---
title: editor-tool
slug: jsp-editor-tool
tags: api, java
publish: true
---

# \<kendo:editor-tool\>

A collection of tools that should render a button, combobox, etc, to interact with the Editor. Custom tools are defined
as a collection of required properties, while the insertHtml tool requires a collection of text-value pairs. A separator may be included multiple times.

#### Example
    <kendo:editor-tools>
        <kendo:editor-tool></kendo:editor-tool>
    </kendo:editor-tools>

## Configuration Attributes

### exec `String`

The JavaScript function which will be executed when the end-user clicks the tool button.

#### Example
    <kendo:editor-tool exec="exec">
    </kendo:editor-tool>

### name `String`

The mandatory name of the tool. The built-in tools are "bold", "italic", "underline", "strikethrough", "fontName", "fontSize", "foreColor", "backColor", "justifyLeft", "justifyCenter", "justifyRight", "justifyFull", "insertUnorderedList", "insertOrderedList", "indent", "outdent", "formatBlock", "createLink", "unlink", "insertImage", "insertHtml", "viewHtml".

#### Example
    <kendo:editor-tool name="name">
    </kendo:editor-tool>

### template `String`

The kendo template that will be used for rendering the given tool.

#### Example
    <kendo:editor-tool template="template">
    </kendo:editor-tool>

### tooltip `String`

The text which will be displayed when the end-user hovers the tool button with the mouse.

#### Example
    <kendo:editor-tool tooltip="tooltip">
    </kendo:editor-tool>


##  Configuration JSP Tags

### kendo:editor-tool-items

For tools that display a list of items (fontName, fontSize, formatBlock), this option specifies the items in the shown list.

More documentation is available at [kendo:editor-tool-items](editor/tool-items).

#### Example

    <kendo:editor-tool>
        <kendo:editor-tool-items></kendo:editor-tool-items>
    </kendo:editor-tool>


## Event Attributes

### exec `String`

The JavaScript function which will be executed when the end-user clicks the tool button.


#### Example
    <kendo:editor-tool exec="handle_exec">
    </kendo:editor-tool>
    <script>
        function handle_exec(e) {
            // Code to handle the exec event.
        }
    </script>

## Event Tags

### kendo:editor-tool-exec

The JavaScript function which will be executed when the end-user clicks the tool button.


#### Example
    <kendo:editor-tool>
        <kendo:editor-tool-exec>
            <script>
                function(e) {
                    // Code to handle the exec event.
                }
            </script>
        </kendo:editor-tool-exec>
    </kendo:editor-tool>

