---
title: PivotGrid
---

# \Kendo\UI\PivotGrid

A PHP wrapper for Kendo UI [PivotGrid](/api/web/pivotgrid).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use PivotGrid in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo PivotGrid

    <?php
    // Create a new instance of PivotGrid and specify its id
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');

    // Configure it
    $pivotGrid->autoBind(true)

    // Output it

    echo $pivotGrid->render();
    ?>


## Methods

### autoBind
If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->autoBind(true);
    ?>

### collapseMember
Fired before column or row field is collapsed.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [collapseMember](/api/web/pivotgrid#events-collapseMember) event documentation.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->collapseMember('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCollapseMember(e) {
            // handle the collapseMember event.
        }
    </script>
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->collapseMember('onCollapseMember');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->collapseMember(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBinding
Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBinding](/api/web/pivotgrid#events-dataBinding) event documentation.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBinding('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBinding(e) {
            // handle the dataBinding event.
        }
    </script>
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBinding('onDataBinding');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBinding(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fired after the widget is bound to the data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBound](/api/web/pivotgrid#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $dataSource = new \Kendo\Data\DataSource();
    $pivotGrid->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $schema = new \Kendo\Data\DataSourceSchema();
    $pivotGrid->dataSource(array('schema' => $schema));
    ?>

### expandMember
Fired before column or row field is expaneded.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [expandMember](/api/web/pivotgrid#events-expandMember) event documentation.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->expandMember('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onExpandMember(e) {
            // handle the expandMember event.
        }
    </script>
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->expandMember('onExpandMember');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->expandMember(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### height
The height of the pivotgrid. Numeric values are treated as pixels.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->height(1);
    ?>

#### Example  - using string
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->height('value');
    ?>

### messages

The text messages displayed in the fields sections.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `\Kendo\UI\PivotGridMessages|array`


#### Example - using [\Kendo\UI\PivotGridMessages](/api/wrappers/php/Kendo/UI/PivotGridMessages)
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $messages = new \Kendo\UI\PivotGridMessages();
    $columnFields = 'value';
    $messages->columnFields($columnFields);
    $pivotGrid->messages($messages);
    ?>

#### Example - using array

    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $columnFields = 'value';
    $pivotGrid->messages(array('columnFields' => $columnFields));
    ?>

### reorderable
If set to false the user will not be able to add/close/reorder current fields for columns/rows/measures.

#### Returns
`\Kendo\UI\PivotGrid`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $pivotGrid = new \Kendo\UI\PivotGrid('PivotGrid');
    $pivotGrid->reorderable(true);
    ?>

