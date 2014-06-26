---
title: EditorFileBrowserTransport
---

# \Kendo\UI\EditorFileBrowserTransport

A PHP class representing the transport setting of EditorFileBrowser.


## Methods

### create

Options or URL which will handle the directory creation. If not specified that create new folder button will not be present.

#### Returns
`\Kendo\UI\EditorFileBrowserTransport`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserTransportCreate|array`




#### Example  - using string
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->create('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserTransportCreate](/api/wrappers/php/Kendo/UI/EditorFileBrowserTransportCreate)
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $create = new \Kendo\UI\EditorFileBrowserTransportCreate();
    $contentType = 'value';
    $create->contentType($contentType);
    $transport->create($create);
    ?>

#### Example - using array

    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $contentType = 'value';
    $transport->create(array('contentType' => $contentType));
    ?>

### destroy

Options or URL which will handle the file and directory deletion. If not specified the delete button will not be present.

#### Returns
`\Kendo\UI\EditorFileBrowserTransport`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserTransportDestroy|array`




#### Example  - using string
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->destroy('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserTransportDestroy](/api/wrappers/php/Kendo/UI/EditorFileBrowserTransportDestroy)
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $destroy = new \Kendo\UI\EditorFileBrowserTransportDestroy();
    $contentType = 'value';
    $destroy->contentType($contentType);
    $transport->destroy($destroy);
    ?>

#### Example - using array

    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $contentType = 'value';
    $transport->destroy(array('contentType' => $contentType));
    ?>

### fileUrl
The URL responsible for serving the original file. A file name placeholder should be specified.

#### Returns
`\Kendo\UI\EditorFileBrowserTransport`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->fileUrl('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->fileUrl(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### read

Options or URL for remote file retrieval.

#### Returns
`\Kendo\UI\EditorFileBrowserTransport`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserTransportRead|array`




#### Example  - using string
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->read('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserTransportRead](/api/wrappers/php/Kendo/UI/EditorFileBrowserTransportRead)
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $read = new \Kendo\UI\EditorFileBrowserTransportRead();
    $contentType = 'value';
    $read->contentType($contentType);
    $transport->read($read);
    ?>

#### Example - using array

    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $contentType = 'value';
    $transport->read(array('contentType' => $contentType));
    ?>

### uploadUrl
The URL which will handle the upload of the new files. If not specified the Upload button will not be displayed.

#### Returns
`\Kendo\UI\EditorFileBrowserTransport`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $transport->uploadUrl('value');
    ?>

