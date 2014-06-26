---
title: EditorFileBrowserSchemaModel
---

# \Kendo\UI\EditorFileBrowserSchemaModel

A PHP class representing the model setting of EditorFileBrowserSchema.


## Methods

### fields



#### Returns
`\Kendo\UI\EditorFileBrowserSchemaModel`

#### Parameters

##### $value `\Kendo\UI\EditorFileBrowserSchemaModelFields|array`


#### Example - using [\Kendo\UI\EditorFileBrowserSchemaModelFields](/api/wrappers/php/Kendo/UI/EditorFileBrowserSchemaModelFields)
    <?php
    $model = new \Kendo\UI\EditorFileBrowserSchemaModel();
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $name = 'value';
    $fields->name($name);
    $model->fields($fields);
    ?>

#### Example - using array

    <?php
    $model = new \Kendo\UI\EditorFileBrowserSchemaModel();
    $name = 'value';
    $model->fields(array('name' => $name));
    ?>

### id
The name of the field which acts as an identifier.

#### Returns
`\Kendo\UI\EditorFileBrowserSchemaModel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $model = new \Kendo\UI\EditorFileBrowserSchemaModel();
    $model->id('value');
    ?>

