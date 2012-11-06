---
title: upload-async
slug: jsp-upload-async
tags: api, java
publish: true
---

# \<kendo:upload-async\>
A JSP tag representing Kendo Async.

#### Example
    <kendo:upload>
        <kendo:upload-async></kendo:upload-async>
    </kendo:upload>


## Configuration Attributes


### autoUpload `boolean`

The selected files will be uploaded immediately by default. You can change this behavior by setting
autoUpload to false.

#### Example
    <kendo:upload autoUpload="autoUpload">
    </kendo:upload>



### batch `boolean`

The selected files will be uploaded in separate requests, if this is supported by the browser.
You can change this behavior by setting batch to true.

#### Example
    <kendo:upload batch="batch">
    </kendo:upload>



### removeField `String`

The name of the form field submitted to the Remove URL.

#### Example
    <kendo:upload removeField="removeField">
    </kendo:upload>



### removeUrl `String`

The URL of the handler responsible for removing uploaded files (if any). The handler must accept POST
requests containing one or more "fileNames" fields specifying the files to be deleted.

#### Example
    <kendo:upload removeUrl="removeUrl">
    </kendo:upload>



### removeVerb `String`

The HTTP verb to be used by the remove action.

#### Example
    <kendo:upload removeVerb="removeVerb">
    </kendo:upload>



### saveField `String`

The name of the form field submitted to the save URL. The default value is the input name.

#### Example
    <kendo:upload saveField="saveField">
    </kendo:upload>



### saveUrl `String`

The URL of the handler that will receive the submitted files. The handler must accept POST requests
containing one or more fields with the same name as the original input name.

#### Example
    <kendo:upload saveUrl="saveUrl">
    </kendo:upload>


