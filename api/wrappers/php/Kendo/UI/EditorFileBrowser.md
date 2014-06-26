---
title: EditorFileBrowser
---

# \Kendo\UI\EditorFileBrowser

A PHP class representing the fileBrowser setting of Editor.


## Methods

### fileTypes
Defines the allowed file extensions.

#### Returns
`\Kendo\UI\EditorFileBrowser`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $fileBrowser->fileTypes('value');
    ?>

### messages

Defines texts shown within the file browser.

#### Returns
`\Kendo\UI\EditorFileBrowser`

#### Parameters

##### $value `\Kendo\UI\EditorFileBrowserMessages|array`


#### Example - using [\Kendo\UI\EditorFileBrowserMessages](/api/wrappers/php/Kendo/UI/EditorFileBrowserMessages)
    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $messages = new \Kendo\UI\EditorFileBrowserMessages();
    $deleteFile = 'value';
    $messages->deleteFile($deleteFile);
    $fileBrowser->messages($messages);
    ?>

#### Example - using array

    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $deleteFile = 'value';
    $fileBrowser->messages(array('deleteFile' => $deleteFile));
    ?>

### path
Defines the initial folder to display, relative to the root.

#### Returns
`\Kendo\UI\EditorFileBrowser`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $fileBrowser->path('value');
    ?>

### schema

Set the object responsible for describing the file raw data format.

#### Returns
`\Kendo\UI\EditorFileBrowser`

#### Parameters

##### $value `\Kendo\UI\EditorFileBrowserSchema|array`


#### Example - using [\Kendo\UI\EditorFileBrowserSchema](/api/wrappers/php/Kendo/UI/EditorFileBrowserSchema)
    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $schema = new \Kendo\UI\EditorFileBrowserSchema();
    $model = new \Kendo\UI\EditorFileBrowserSchemaModel();
    $schema->model($model);
    $fileBrowser->schema($schema);
    ?>

#### Example - using array

    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $model = new \Kendo\UI\EditorFileBrowserSchemaModel();
    $fileBrowser->schema(array('model' => $model));
    ?>

### transport

Specifies the settings for loading and saving data.

#### Returns
`\Kendo\UI\EditorFileBrowser`

#### Parameters

##### $value `\Kendo\UI\EditorFileBrowserTransport|array`


#### Example - using [\Kendo\UI\EditorFileBrowserTransport](/api/wrappers/php/Kendo/UI/EditorFileBrowserTransport)
    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $transport = new \Kendo\UI\EditorFileBrowserTransport();
    $create = 'value';
    $transport->create($create);
    $fileBrowser->transport($transport);
    ?>

#### Example - using array

    <?php
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $create = 'value';
    $fileBrowser->transport(array('create' => $create));
    ?>

