---
title: ComboBox
slug: php-ui-combobox
tags: api, php
publish: true
---

# \Kendo\UI\ComboBox

A PHP wrapper for Kendo UI [ComboBox](/api/web/combobox).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use ComboBox in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo ComboBox

    <?php
    // Create a new instance of ComboBox and specify its id
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');

    // Configure it
    $comboBox->autoBind(true)

    // Output it

    echo $comboBox->render();
    ?>


## Methods

### animation

Animations to be used for opening/closing the popup. Setting to false will turn off the animation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `\Kendo\UI\ComboBoxAnimation|array`


#### Example - using [\Kendo\UI\ComboBoxAnimation](/api/wrappers/php/Kendo/UI/ComboBoxAnimation)
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $animation = new \Kendo\UI\ComboBoxAnimation();
    $close = new \Kendo\UI\ComboBoxAnimationClose();
    $animation->close($close);
    $comboBox->animation($animation);
    ?>

#### Example - using array

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $close = new \Kendo\UI\ComboBoxAnimationClose();
    $comboBox->animation(array('close' => $close));
    ?>

### autoBind
Controls whether to bind the widget to the DataSource on initialization.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->autoBind(true);
    ?>

### cascade
Triggered when value of the widget is changed via API or user interaction.
For additional information check the [cascade](/api/web/combobox#events-cascade) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->cascade('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCascade(e) {
            // handle the cascade event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->cascade('onCascade');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->cascade(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### cascadeFrom
Use it to set the Id of the parent DropDownList.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->cascadeFrom('value');
    ?>

### change
Fires when the value has been changed.
For additional information check the [change](/api/web/combobox#events-change) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### close
Fires when the drop-down list is closed
For additional information check the [close](/api/web/combobox#events-close) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->close('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClose(e) {
            // handle the close event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->close('onClose');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->close(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fires when the ComboBox has received data from the data source.
For additional information check the [dataBound](/api/web/combobox#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $dataSource = new \Kendo\Data\DataSource();
    $comboBox->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $schema = new \Kendo\Data\DataSourceSchema();
    $comboBox->dataSource(array('schema' => $schema));
    ?>

### dataTextField
Sets the field of the data item that provides the text content of the list items.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->dataTextField('value');
    ?>

### dataValueField
Sets the field of the data item that provides the value content of the list items.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->dataValueField('value');
    ?>

### delay
Specifies the delay in ms after which the ComboBox will start filtering dataSource.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->delay(1);
    ?>

### enable
Controls whether the ComboBox should be initially enabled.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->enable(true);
    ?>

### filter
Defines the type of filtration. If "none" the ComboBox will not filter the items.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->filter('value');
    ?>

### height
Define the height of the drop-down list in pixels.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->height(1);
    ?>

### highlightFirst
Controls whether the first item will be automatically highlighted.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->highlightFirst(true);
    ?>

### ignoreCase
Defines whether the filtration should be case sensitive.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->ignoreCase('value');
    ?>

### index
Defines the initial selected item.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->index(1);
    ?>

### minLength
Specifies the minimum characters that should be typed before the ComboBox activates

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->minLength(1);
    ?>

### open
Fires when the drop-down list is opened
For additional information check the [open](/api/web/combobox#events-open) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->open('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOpen(e) {
            // handle the open event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->open('onOpen');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->open(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### placeholder
A string that appears in the textbox when the combobox has no value.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->placeholder('value');
    ?>

### select
Triggered when a Li element is selected.
For additional information check the [select](/api/web/combobox#events-select) event documentation.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### suggest
Controls whether the ComboBox should automatically auto-type the rest of text.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->suggest(true);
    ?>

### template
Template to be used for rendering the items in the list.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->template('value');
    ?>

### text
Define the text of the widget, when the autoBind is set to false.

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->text('value');
    ?>

### value
Define the value of the widget

#### Returns
`\Kendo\UI\ComboBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $comboBox = new \Kendo\UI\ComboBox('ComboBox');
    $comboBox->value('value');
    ?>

