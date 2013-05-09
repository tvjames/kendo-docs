---
title: MultiSelect
slug: php-ui-multiselect
tags: api, php
publish: true
---

# \Kendo\UI\MultiSelect

A PHP wrapper for Kendo UI [MultiSelect](/api/web/multiselect).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use MultiSelect in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo MultiSelect

    <?php
    // Create a new instance of MultiSelect and specify its id
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');

    // Configure it
    $multiSelect->autoBind(true)

    // Output it

    echo $multiSelect->render();
    ?>


## Methods

### animation

Animations to be used for opening/closing the popup. Setting to false will turn off the animation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `\Kendo\UI\MultiSelectAnimation|array`


#### Example - using [\Kendo\UI\MultiSelectAnimation](/api/wrappers/php/Kendo/UI/MultiSelectAnimation)
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $animation = new \Kendo\UI\MultiSelectAnimation();
    $close = new \Kendo\UI\MultiSelectAnimationClose();
    $animation->close($close);
    $multiSelect->animation($animation);
    ?>

#### Example - using array

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $close = new \Kendo\UI\MultiSelectAnimationClose();
    $multiSelect->animation(array('close' => $close));
    ?>

### autoBind
Controls whether to bind the widget to the DataSource on initialization.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->autoBind(true);
    ?>

### change
Fires when the value has been changed.
For additional information check the [change](/api/web/multiselect#events-change) event documentation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### close
Fires when the drop-down list is closed
For additional information check the [close](/api/web/multiselect#events-close) event documentation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->close('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClose(e) {
            // handle the close event.
        }
    </script>
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->close('onClose');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->close(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fires when the multiselect has received data from the data source.
For additional information check the [dataBound](/api/web/multiselect#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $dataSource = new \Kendo\Data\DataSource();
    $multiSelect->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $schema = new \Kendo\Data\DataSourceSchema();
    $multiSelect->dataSource(array('schema' => $schema));
    ?>

### dataTextField
Sets the field of the data item that provides the text content of the list items.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->dataTextField('value');
    ?>

### dataValueField
Sets the field of the data item that provides the value content of the list items.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->dataValueField('value');
    ?>

### delay
Specifies the delay in ms after which the multiselect will start filtering dataSource.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->delay(1);
    ?>

### enable
Controls whether the multiselect should be initially enabled.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->enable(true);
    ?>

### filter
Defines the type of filtration.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->filter('value');
    ?>

### height
Define the height of the drop-down list in pixels.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->height(1);
    ?>

### highlightFirst
Controls whether the first item will be automatically highlighted.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->highlightFirst(true);
    ?>

### ignoreCase
Defines whether the filtration should be case sensitive.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->ignoreCase('value');
    ?>

### itemTemplate
Template to be used for rendering the items in the list.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->itemTemplate('value');
    ?>

### maxSelectedItems
Defines the limit of the selected items. If set to null widget will not limit number of the selected items.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->maxSelectedItems(1);
    ?>

### minLength
Specifies the minimum characters that should be typed before the multiselect activates

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->minLength(1);
    ?>

### open
Fires when the drop-down list is opened
For additional information check the [open](/api/web/multiselect#events-open) event documentation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->open('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOpen(e) {
            // handle the open event.
        }
    </script>
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->open('onOpen');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->open(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### placeholder
A string that appears in the textbox when the multiselect has no value.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->placeholder('value');
    ?>

### select
Triggered when a Li element is selected.
For additional information check the [select](/api/web/multiselect#events-select) event documentation.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### tagTemplate
Template to be used for rendering the tags of the selected items.

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->tagTemplate('value');
    ?>

### value
Define the value of the widget

#### Returns
`\Kendo\UI\MultiSelect`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $multiSelect = new \Kendo\UI\MultiSelect('MultiSelect');
    $multiSelect->value(new array());
    ?>

