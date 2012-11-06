---
title: editor-imagebrowser-transport
slug: jsp-editor-imagebrowser-transport
tags: api, java
publish: true
---

# \<kendo:editor-imagebrowser-transport\>
A JSP tag representing Kendo Transport.

#### Example
    <kendo:editor-imagebrowser>
        <kendo:editor-imagebrowser-transport></kendo:editor-imagebrowser-transport>
    </kendo:editor-imagebrowser>


## Configuration Attributes


### read `Object`

Options or URL for remote image retrieval.

#### Example
    <kendo:editor read="read">
    </kendo:editor>



### thumbnailUrl `String`

The URL for retrieving the thumbnail version of the image. If not specified a default image icon will be shown.

#### Example
    <kendo:editor thumbnailUrl="thumbnailUrl">
    </kendo:editor>



### uploadUrl `String`

The URL which will handle the upload of the new images. If not specified the Upload button will not be displayed.

#### Example
    <kendo:editor uploadUrl="uploadUrl">
    </kendo:editor>



### imageUrl `String`

The URL responsible for serving the original image. A file name placeholder should be specifed.

#### Example
    <kendo:editor imageUrl="imageUrl">
    </kendo:editor>



### destroy `Object`

Options or URL which will handle the file and directory deletion. If not specified the delete button will not be present.

#### Example
    <kendo:editor destroy="destroy">
    </kendo:editor>



### create `Object`

Options or URL which will handle the directory creation. If not specified that create new folder button will not be present.

#### Example
    <kendo:editor create="create">
    </kendo:editor>


