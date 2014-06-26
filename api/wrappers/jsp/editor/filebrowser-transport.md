---
title: editor-fileBrowser-transport
---

# \<kendo:editor-fileBrowser-transport\>

Specifies the settings for loading and saving data.

#### Example
    <kendo:editor-fileBrowser>
        <kendo:editor-fileBrowser-transport></kendo:editor-fileBrowser-transport>
    </kendo:editor-fileBrowser>

## Configuration Attributes

### create `java.lang.String`

Options or URL which will handle the directory creation. If not specified that create new folder button will not be present. Further configuration is available via [kendo:editor-fileBrowser-transport-create](#kendo-editor-fileBrowser-transport-create). 

#### Example
    <kendo:editor-fileBrowser-transport create="create">
    </kendo:editor-fileBrowser-transport>

### destroy `java.lang.String`

Options or URL which will handle the file and directory deletion. If not specified the delete button will not be present. Further configuration is available via [kendo:editor-fileBrowser-transport-destroy](#kendo-editor-fileBrowser-transport-destroy). 

#### Example
    <kendo:editor-fileBrowser-transport destroy="destroy">
    </kendo:editor-fileBrowser-transport>

### fileUrl `java.lang.String`

The URL responsible for serving the original file. A file name placeholder should be specified.

#### Example
    <kendo:editor-fileBrowser-transport fileUrl="fileUrl">
    </kendo:editor-fileBrowser-transport>

### read `java.lang.String`

Options or URL for remote file retrieval. Further configuration is available via [kendo:editor-fileBrowser-transport-read](#kendo-editor-fileBrowser-transport-read). 

#### Example
    <kendo:editor-fileBrowser-transport read="read">
    </kendo:editor-fileBrowser-transport>

### uploadUrl `java.lang.String`

The URL which will handle the upload of the new files. If not specified the Upload button will not be displayed.

#### Example
    <kendo:editor-fileBrowser-transport uploadUrl="uploadUrl">
    </kendo:editor-fileBrowser-transport>


##  Configuration JSP Tags

### kendo:editor-fileBrowser-transport-create

Options or URL which will handle the directory creation. If not specified that create new folder button will not be present.

More documentation is available at [kendo:editor-fileBrowser-transport-create](/api/wrappers/jsp/editor/filebrowser-transport-create).

#### Example

    <kendo:editor-fileBrowser-transport>
        <kendo:editor-fileBrowser-transport-create></kendo:editor-fileBrowser-transport-create>
    </kendo:editor-fileBrowser-transport>

### kendo:editor-fileBrowser-transport-destroy

Options or URL which will handle the file and directory deletion. If not specified the delete button will not be present.

More documentation is available at [kendo:editor-fileBrowser-transport-destroy](/api/wrappers/jsp/editor/filebrowser-transport-destroy).

#### Example

    <kendo:editor-fileBrowser-transport>
        <kendo:editor-fileBrowser-transport-destroy></kendo:editor-fileBrowser-transport-destroy>
    </kendo:editor-fileBrowser-transport>

### kendo:editor-fileBrowser-transport-read

Options or URL for remote file retrieval.

More documentation is available at [kendo:editor-fileBrowser-transport-read](/api/wrappers/jsp/editor/filebrowser-transport-read).

#### Example

    <kendo:editor-fileBrowser-transport>
        <kendo:editor-fileBrowser-transport-read></kendo:editor-fileBrowser-transport-read>
    </kendo:editor-fileBrowser-transport>


## Event Attributes

### fileUrl `String`

The URL responsible for serving the original file. A file name placeholder should be specified.


#### Example
    <kendo:editor-fileBrowser-transport fileUrl="handle_fileUrl">
    </kendo:editor-fileBrowser-transport>
    <script>
        function handle_fileUrl(e) {
            // Code to handle the fileUrl event.
        }
    </script>

## Event Tags

### kendo:editor-fileBrowser-transport-fileUrl

The URL responsible for serving the original file. A file name placeholder should be specified.


#### Example
    <kendo:editor-fileBrowser-transport>
        <kendo:editor-fileBrowser-transport-fileUrl>
            <script>
                function(e) {
                    // Code to handle the fileUrl event.
                }
            </script>
        </kendo:editor-fileBrowser-transport-fileUrl>
    </kendo:editor-fileBrowser-transport>

