---
title: DropDownList
slug: php-ui-dropdownlist
tags: api, php
publish: true
---

# \Kendo\UI\DropDownList

A PHP class representing Kendo [DropDownList](/api/web/dropdownlist).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use DropDownList in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo DropDownList

    <?php
    // Create a new instance of DropDownList and specify its id
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');

    // Configure it
    $dropDownList->autoBind(true)

    // Output it

    echo $dropDownList->render();
    ?>


## Methods

### animation

Animations to be used for opening/closing the popup. Setting to false will turn of the animation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `\Kendo\UI\DropDownListAnimation|array`


#### Example - using [\Kendo\UI\DropDownListAnimation](/api/wrappers/php/Kendo/UI/DropDownListAnimation)
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $animation = new \Kendo\UI\DropDownListAnimation();
    $close = new \Kendo\UI\DropDownListAnimationClose();
    $animation->close($close);
    $dropDownList->animation($animation);
    ?>

#### Example - using array

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $close = new \Kendo\UI\DropDownListAnimationClose();
    $dropDownList->animation(array('close' => $close));
    ?>

### autoBind
Controls whether to bind the widget on initialization.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->autoBind(true);
    ?>

### cascade
Triggered when value of the widget is changed via API or user interaction.
For additional information check the [cascade](/api/web/dropdownlist#events-cascade) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->cascade('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCascade(e) {
            // handle the cascade event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->cascade('onCascade');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->cascade(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### cascadeFrom
Use it to set the Id of the parent DropDownList.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->cascadeFrom('value');
    ?>

### change
Fires when the value has been changed.
For additional information check the [change](/api/web/dropdownlist#events-change) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### close
Fires when the drop-down list is closed
For additional information check the [close](/api/web/dropdownlist#events-close) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->close('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClose(e) {
            // handle the close event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->close('onClose');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->close(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fires when the drop-down list has received data from the data source.
For additional information check the [dataBound](/api/web/dropdownlist#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dataSource = new \Kendo\Data\DataSource();
    $dropDownList->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $schema = new \Kendo\Data\DataSourceSchema();
    $dropDownList->dataSource(array('schema' => $schema));
    ?>

### dataTextField
Sets the field of the data item that provides the text content of the list items.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->dataTextField('value');
    ?>

### dataValueField
Sets the field of the data item that provides the value content of the list items.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->dataValueField('value');
    ?>

### delay
Specifies the delay in ms before the search text typed by the end user is cleared.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->delay(1);
    ?>

### enable
Controls whether the DropDownList should be initially enabled.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->enable(true);
    ?>

### height
Define the height of the drop-down list in pixels.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->height(1);
    ?>

### ignoreCase
Controls whether the search should be case sensitive.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->ignoreCase('value');
    ?>

### index
Defines the initial selected item.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->index(1);
    ?>

### open
Fires when the drop-down list is opened
For additional information check the [open](/api/web/dropdownlist#events-open) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->open('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOpen(e) {
            // handle the open event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->open('onOpen');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->open(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### optionLabel
Define the text of the default empty item. If the value is an object, then the widget will use it directly.
 Note that object should have atleast the dataValueField and dataTextField properties. Otherwise, widget will show undefined.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|`



#### Example  - using string
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->optionLabel('value');
    ?>

### select
Triggered when a Li element is selected.
For additional information check the [select](/api/web/dropdownlist#events-select) event documentation.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### template
Template to be used for rendering the items in the list.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->template('value');
    ?>

### text
Define the text of the widget, when the autoBind is set to false.

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->text('value');
    ?>

### value
Define the value of the widget

#### Returns
`\Kendo\UI\DropDownList`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $dropDownList = new \Kendo\UI\DropDownList('DropDownList');
    $dropDownList->value('value');
    ?>

