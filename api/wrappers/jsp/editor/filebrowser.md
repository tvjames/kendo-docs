---
title: editor-fileBrowser
---

# \<kendo:editor-fileBrowser\>

Configuration for file browser dialog.

#### Example
    <kendo:editor>
        <kendo:editor-fileBrowser></kendo:editor-fileBrowser>
    </kendo:editor>

## Configuration Attributes

### fileTypes `java.lang.String`

Defines the allowed file extensions.

#### Example
    <kendo:editor-fileBrowser fileTypes="fileTypes">
    </kendo:editor-fileBrowser>

### path `java.lang.String`

Defines the initial folder to display, relative to the root.

#### Example
    <kendo:editor-fileBrowser path="path">
    </kendo:editor-fileBrowser>


##  Configuration JSP Tags

### kendo:editor-fileBrowser-messages

Defines texts shown within the file browser.

More documentation is available at [kendo:editor-fileBrowser-messages](/api/wrappers/jsp/editor/filebrowser-messages).

#### Example

    <kendo:editor-fileBrowser>
        <kendo:editor-fileBrowser-messages></kendo:editor-fileBrowser-messages>
    </kendo:editor-fileBrowser>

### kendo:editor-fileBrowser-schema

Set the object responsible for describing the file raw data format.

More documentation is available at [kendo:editor-fileBrowser-schema](/api/wrappers/jsp/editor/filebrowser-schema).

#### Example

    <kendo:editor-fileBrowser>
        <kendo:editor-fileBrowser-schema></kendo:editor-fileBrowser-schema>
    </kendo:editor-fileBrowser>

### kendo:editor-fileBrowser-transport

Specifies the settings for loading and saving data.

More documentation is available at [kendo:editor-fileBrowser-transport](/api/wrappers/jsp/editor/filebrowser-transport).

#### Example

    <kendo:editor-fileBrowser>
        <kendo:editor-fileBrowser-transport></kendo:editor-fileBrowser-transport>
    </kendo:editor-fileBrowser>

