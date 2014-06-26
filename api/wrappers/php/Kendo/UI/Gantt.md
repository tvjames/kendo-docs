---
title: Gantt
---

# \Kendo\UI\Gantt

A PHP wrapper for Kendo UI [Gantt](/api/web/gantt).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Gantt in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Gantt

    <?php
    // Create a new instance of Gantt and specify its id
    $gantt = new \Kendo\UI\Gantt('Gantt');

    // Configure it
    $gantt->autoBind(true)

    // Output it

    echo $gantt->render();
    ?>


## Methods

### add
Fired when a new task or a new dependency is about to be added.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [add](/api/web/gantt#events-add) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->add('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onAdd(e) {
            // handle the add event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->add('onAdd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->add(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### autoBind
If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->autoBind(true);
    ?>

### cancel
Fired when the user cancels tasks's cell editing by pressing the 'Esc' key.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [cancel](/api/web/gantt#events-cancel) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->cancel('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCancel(e) {
            // handle the cancel event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->cancel('onCancel');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->cancel(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### change
Fired when the user selects a task in the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [change](/api/web/gantt#events-change) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### addColumn

Adds one or more GanttColumn to the Gantt.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\GanttColumn|array`

#### Example - using \Kendo\UI\GanttColumn

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $column = new \Kendo\UI\GanttColumn();
    $editable = true;
    $column->editable($editable);
    $gantt->addColumn($column);
    ?>

#### Example - using array

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $editable = true;
    $gantt->addColumn(array('editable' => $editable));
    ?>

#### Example - adding more than one GanttColumn

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $first  = new \Kendo\UI\GanttColumn();
    $second = new \Kendo\UI\GanttColumn();
    $gantt->addColumn($first, $second);
    ?>

### dataBinding
Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBinding](/api/web/gantt#events-dataBinding) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBinding('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBinding(e) {
            // handle the dataBinding event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBinding('onDataBinding');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBinding(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBound](/api/web/gantt#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $dataSource = new \Kendo\Data\DataSource();
    $gantt->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $schema = new \Kendo\Data\DataSourceSchema();
    $gantt->dataSource(array('schema' => $schema));
    ?>

### dependencies
The data source of the widget which contains the dependencies. Can be a JavaScript object which represents a valid data source configuration, a JavaScript array or an existing kendo.data.GanttDependencyDataSource
instance.If the dependencies option is set to a JavaScript object or array the widget will initialize a new kendo.data.GanttDependencyDataSource instance using that value as data source configuration.If the dependencies option is an existing kendo.data.GanttDependencyDataSource instance the widget will use that instance and will not initialize a new one.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `|array`



#### Example  - using 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dependencies(new ());
    ?>

#### Example  - using array
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->dependencies(new array());
    ?>

### edit
Fired when the user starts task edit upon double click on a cell.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [edit](/api/web/gantt#events-edit) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->edit('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onEdit(e) {
            // handle the edit event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->edit('onEdit');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->edit(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### editable
If set to false the user won't be able to create, modify or delete tasks and dependencies.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->editable(true);
    ?>

### height
The height of the widget. Numeric values are treated as pixels.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->height(1);
    ?>

#### Example  - using string
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->height('value');
    ?>

### hourSpan
The span of an hour slot.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->hourSpan(1);
    ?>

### listWidth
The width of the task list. Numeric values are treated as pixels.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|float`



#### Example  - using string
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->listWidth('value');
    ?>

#### Example  - using float
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->listWidth(1);
    ?>

### messages

The configuration of the gantt messages. Use this option to customize or localize the gantt messages.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `\Kendo\UI\GanttMessages|array`


#### Example - using [\Kendo\UI\GanttMessages](/api/wrappers/php/Kendo/UI/GanttMessages)
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $messages = new \Kendo\UI\GanttMessages();
    $views = new \Kendo\UI\GanttMessagesViews();
    $messages->views($views);
    $gantt->messages($messages);
    ?>

#### Example - using array

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $views = new \Kendo\UI\GanttMessagesViews();
    $gantt->messages(array('views' => $views));
    ?>

### move
Fired when the user is moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [move](/api/web/gantt#events-move) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->move('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMove(e) {
            // handle the move event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->move('onMove');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->move(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### moveEnd
Fired when the user stops moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [moveEnd](/api/web/gantt#events-moveEnd) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveEnd('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMoveEnd(e) {
            // handle the moveEnd event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveEnd('onMoveEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveEnd(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### moveStart
Fired when the user starts to drag a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [moveStart](/api/web/gantt#events-moveStart) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveStart('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMoveStart(e) {
            // handle the moveStart event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveStart('onMoveStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->moveStart(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### navigate
Fired when the user changes the selected view of the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [navigate](/api/web/gantt#events-navigate) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->navigate('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onNavigate(e) {
            // handle the navigate event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->navigate('onNavigate');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->navigate(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### remove
Fired when a task or a dependency is about to be removed.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [remove](/api/web/gantt#events-remove) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->remove('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onRemove(e) {
            // handle the remove event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->remove('onRemove');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->remove(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resize
Fired when the user is resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resize](/api/web/gantt#events-resize) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resize('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResize(e) {
            // handle the resize event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resize('onResize');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resize(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resizeEnd
Fired when the user releases the mouse after resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resizeEnd](/api/web/gantt#events-resizeEnd) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeEnd('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResizeEnd(e) {
            // handle the resizeEnd event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeEnd('onResizeEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeEnd(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resizeStart
Fired when the user starts to resize a task.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resizeStart](/api/web/gantt#events-resizeStart) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeStart('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResizeStart(e) {
            // handle the resizeStart event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeStart('onResizeStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->resizeStart(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### save
Fired when a task field is updated upon user interaction.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [save](/api/web/gantt#events-save) event documentation.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->save('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSave(e) {
            // handle the save event.
        }
    </script>
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->save('onSave');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->save(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### selectable
If set to false the user won't be able to select tasks in the gantt. By default selection is enabled and triggers the change event.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->selectable(true);
    ?>

### showWorkDays
If set to false, gantt views will show all days of the week. By default the views display only business days.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->showWorkDays(true);
    ?>

### showWorkHours
If set to false, the day view will show all hours of the day. By default the view displays only business hours.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->showWorkHours(true);
    ?>

### snap
If set to true the gantt will snap tasks to the nearest slot during dragging (resizing or moving). Set it to false to allow free moving and resizing of tasks.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->snap(true);
    ?>

### addView

Adds one or more GanttView to the Gantt.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\GanttView|array`

#### Example - using \Kendo\UI\GanttView

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $view = new \Kendo\UI\GanttView();
    $selected = true;
    $view->selected($selected);
    $gantt->addView($view);
    ?>

#### Example - using array

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $selected = true;
    $gantt->addView(array('selected' => $selected));
    ?>

#### Example - adding more than one GanttView

    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $first  = new \Kendo\UI\GanttView();
    $second = new \Kendo\UI\GanttView();
    $gantt->addView($first, $second);
    ?>

### workDayEnd
Sets the end of the work day.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->workDayEnd(new date());
    ?>

### workDayStart
Sets the start of the work day.

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->workDayStart(new date());
    ?>

### workWeekEnd
The end of working week (index based).

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->workWeekEnd(1);
    ?>

### workWeekStart
The start of working week (index based).

#### Returns
`\Kendo\UI\Gantt`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $gantt = new \Kendo\UI\Gantt('Gantt');
    $gantt->workWeekStart(1);
    ?>

