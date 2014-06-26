---
title: EditorFileBrowserSchemaModelFields
---

# \Kendo\UI\EditorFileBrowserSchemaModelFields

A PHP class representing the fields setting of EditorFileBrowserSchemaModel.


## Methods

### name

The field which contains the name of the file/directory

#### Returns
`\Kendo\UI\EditorFileBrowserSchemaModelFields`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserSchemaModelFieldsName|array`




#### Example  - using string
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $fields->name('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserSchemaModelFieldsName](/api/wrappers/php/Kendo/UI/EditorFileBrowserSchemaModelFieldsName)
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $name = new \Kendo\UI\EditorFileBrowserSchemaModelFieldsName();
    $field = 'value';
    $name->field($field);
    $fields->name($name);
    ?>

#### Example - using array

    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $field = 'value';
    $fields->name(array('field' => $field));
    ?>

### size

The field which contains the size of file.

#### Returns
`\Kendo\UI\EditorFileBrowserSchemaModelFields`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserSchemaModelFieldsSize|array`




#### Example  - using string
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $fields->size('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserSchemaModelFieldsSize](/api/wrappers/php/Kendo/UI/EditorFileBrowserSchemaModelFieldsSize)
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $size = new \Kendo\UI\EditorFileBrowserSchemaModelFieldsSize();
    $field = 'value';
    $size->field($field);
    $fields->size($size);
    ?>

#### Example - using array

    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $field = 'value';
    $fields->size(array('field' => $field));
    ?>

### type

The field which contains the type of the entry. Either f for file or d for directory.

#### Returns
`\Kendo\UI\EditorFileBrowserSchemaModelFields`

#### Parameters

##### $value `string|\Kendo\UI\EditorFileBrowserSchemaModelFieldsType|array`




#### Example  - using string
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $fields->type('value');
    ?>


#### Example - using [\Kendo\UI\EditorFileBrowserSchemaModelFieldsType](/api/wrappers/php/Kendo/UI/EditorFileBrowserSchemaModelFieldsType)
    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $type = new \Kendo\UI\EditorFileBrowserSchemaModelFieldsType();
    $field = 'value';
    $type->field($field);
    $fields->type($type);
    ?>

#### Example - using array

    <?php
    $fields = new \Kendo\UI\EditorFileBrowserSchemaModelFields();
    $field = 'value';
    $fields->type(array('field' => $field));
    ?>

