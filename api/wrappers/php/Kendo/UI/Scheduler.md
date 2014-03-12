---
title: Scheduler
slug: php-ui-scheduler
tags: api, php
publish: true
---

# \Kendo\UI\Scheduler

A PHP wrapper for Kendo UI [Scheduler](/kendo-ui/api/web/scheduler).

Inherits from [\Kendo\UI\Widget](/kendo-ui/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Scheduler in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/kendo-ui/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Scheduler

    <?php
    // Create a new instance of Scheduler and specify its id
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');

    // Configure it
    $scheduler->allDaySlot(true)

    // Output it

    echo $scheduler->render();
    ?>


## Methods

### allDayEventTemplate
The template used to render the "all day" scheduler events.The fields which can be used in the template are:

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->allDayEventTemplate('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->allDayEventTemplate(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### allDaySlot
If set to true the scheduler will display a slot for "all day" events.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->allDaySlot(true);
    ?>

### autoBind
If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->autoBind(true);
    ?>

### cancel
Fired when the user cancels editing by clicking the "cancel" button.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [cancel](/kendo-ui/api/web/scheduler#events-cancel) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->cancel('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onCancel(e) {
            // handle the cancel event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->cancel('onCancel');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->cancel(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### change
Fired when the user selects a cell or event in the scheduler.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [change](/kendo-ui/api/web/scheduler#events-change) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBinding
Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBinding](/kendo-ui/api/web/scheduler#events-dataBinding) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBinding('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBinding(e) {
            // handle the dataBinding event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBinding('onDataBinding');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBinding(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataBound
Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [dataBound](/kendo-ui/api/web/scheduler#events-dataBound) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBound('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onDataBound(e) {
            // handle the dataBound event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBound('onDataBound');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dataBound(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/kendo-ui/api/wrappers/php/kendo/data/datasource)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $dataSource = new \Kendo\Data\DataSource();
    $scheduler->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $schema = new \Kendo\Data\DataSourceSchema();
    $scheduler->dataSource(array('schema' => $schema));
    ?>

### date
The current date of the scheduler. Used to determine the period which is displayed by the widget.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->date(new date());
    ?>

### dateHeaderTemplate
The template used to render the date header cells.By default the scheduler renders the date using the current culture date format.The fields which can be used in the template are:

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dateHeaderTemplate('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->dateHeaderTemplate(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### edit
Fired when the user opens a scheduler event in edit mode by or creates a new event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [edit](/kendo-ui/api/web/scheduler#events-edit) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->edit('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onEdit(e) {
            // handle the edit event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->edit('onEdit');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->edit(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### editable

If set to true the user would be able to create new scheduler events and modify or delete existing ones.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean|\Kendo\UI\SchedulerEditable|array`




#### Example  - using boolean
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->editable(true);
    ?>


#### Example - using [\Kendo\UI\SchedulerEditable](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerEditable)
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $editable = new \Kendo\UI\SchedulerEditable();
    $confirmation = true;
    $editable->confirmation($confirmation);
    $scheduler->editable($editable);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $confirmation = true;
    $scheduler->editable(array('confirmation' => $confirmation));
    ?>

### endTime
The end time of the week and day views. The scheduler will display events ending before the endTime.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->endTime(new date());
    ?>

### eventTemplate
The template used to render the scheduler events.The fields which can be used in the template are:

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->eventTemplate('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->eventTemplate(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### footer

If set to false the footer of the scheduler would not be displayed.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean|\Kendo\UI\SchedulerFooter|array`




#### Example  - using boolean
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->footer(true);
    ?>


#### Example - using [\Kendo\UI\SchedulerFooter](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerFooter)
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $footer = new \Kendo\UI\SchedulerFooter();
    $command = 'value';
    $footer->command($command);
    $scheduler->footer($footer);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $command = 'value';
    $scheduler->footer(array('command' => $command));
    ?>

### group

The configuration of the scheduler resource(s) grouping.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `\Kendo\UI\SchedulerGroup|array`


#### Example - using [\Kendo\UI\SchedulerGroup](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerGroup)
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $group = new \Kendo\UI\SchedulerGroup();
    $orientation = 'value';
    $group->orientation($orientation);
    $scheduler->group($group);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $orientation = 'value';
    $scheduler->group(array('orientation' => $orientation));
    ?>

### height
The height of the widget. Numeric values are treated as pixels.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->height(1);
    ?>

#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->height('value');
    ?>

### majorTick
The number of minutes represented by a major tick.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->majorTick(1);
    ?>

### majorTimeHeaderTemplate
The template used to render the major ticks.By default the scheduler renders the time using the current culture time format.The fields which can be used in the template are:

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->majorTimeHeaderTemplate('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->majorTimeHeaderTemplate(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### max
Constraints the maximum date which can be selected via the scheduler navigation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->max(new date());
    ?>

### messages

The configuration of the scheduler messages. Use this option to customize or localize the scheduler messages.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessages|array`


#### Example - using [\Kendo\UI\SchedulerMessages](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessages)
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $messages = new \Kendo\UI\SchedulerMessages();
    $allDay = 'value';
    $messages->allDay($allDay);
    $scheduler->messages($messages);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $allDay = 'value';
    $scheduler->messages(array('allDay' => $allDay));
    ?>

### min
Constraints the minimum date which can be selected via the scheduler navigation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->min(new date());
    ?>

### minorTickCount
The number of time slots to display per major tick.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->minorTickCount(1);
    ?>

### minorTimeHeaderTemplate
The template used to render the minor ticks.By default the scheduler renders a "&nbsp;".The fields which can be used in the template are:

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->minorTimeHeaderTemplate('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->minorTimeHeaderTemplate(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### mobile
If set to true and the scheduler is viewed on mobile browser it will use adaptive rendering.Can be set to a string phone or tablet which will force the widget to use adaptive rendering regardless of browser type.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean|string`



#### Example  - using boolean
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->mobile(true);
    ?>

#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->mobile('value');
    ?>

### move
Fired when the user is moving an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [move](/kendo-ui/api/web/scheduler#events-move) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->move('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMove(e) {
            // handle the move event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->move('onMove');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->move(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### moveEnd
Fired when the user stops moving an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [moveEnd](/kendo-ui/api/web/scheduler#events-moveEnd) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveEnd('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMoveEnd(e) {
            // handle the moveEnd event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveEnd('onMoveEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveEnd(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### moveStart
Fired when the user starts to drag an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [moveStart](/kendo-ui/api/web/scheduler#events-moveStart) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveStart('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onMoveStart(e) {
            // handle the moveStart event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveStart('onMoveStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->moveStart(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### navigate
Fired when the user changes selected date, view or of the schedulerThe event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [navigate](/kendo-ui/api/web/scheduler#events-navigate) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->navigate('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onNavigate(e) {
            // handle the navigate event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->navigate('onNavigate');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->navigate(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### remove
Fired when the user clicks the "destroy" button.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [remove](/kendo-ui/api/web/scheduler#events-remove) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->remove('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onRemove(e) {
            // handle the remove event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->remove('onRemove');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->remove(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resize
Fired when the user is resizing an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resize](/kendo-ui/api/web/scheduler#events-resize) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resize('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResize(e) {
            // handle the resize event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resize('onResize');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resize(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resizeEnd
Fired when the user releases the mouse after resizing an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resizeEnd](/kendo-ui/api/web/scheduler#events-resizeEnd) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeEnd('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResizeEnd(e) {
            // handle the resizeEnd event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeEnd('onResizeEnd');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeEnd(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resizeStart
Fired when the user starts to resize an event.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [resizeStart](/kendo-ui/api/web/scheduler#events-resizeStart) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeStart('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onResizeStart(e) {
            // handle the resizeStart event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeStart('onResizeStart');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->resizeStart(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### addResource

Adds one or more SchedulerResource to the Scheduler.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\SchedulerResource|array`

#### Example - using \Kendo\UI\SchedulerResource

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $resource = new \Kendo\UI\SchedulerResource();
    $dataColorField = 'value';
    $resource->dataColorField($dataColorField);
    $scheduler->addResource($resource);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $dataColorField = 'value';
    $scheduler->addResource(array('dataColorField' => $dataColorField));
    ?>

#### Example - adding more than one SchedulerResource

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $first  = new \Kendo\UI\SchedulerResource();
    $second = new \Kendo\UI\SchedulerResource();
    $scheduler->addResource($first, $second);
    ?>

### save
Fired when the user saves a scheduler event by clicking the "save" button.The event handler function context (available via the this keyword) will be set to the widget instance.
For additional information check the [save](/kendo-ui/api/web/scheduler#events-save) event documentation.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->save('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSave(e) {
            // handle the save event.
        }
    </script>
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->save('onSave');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->save(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### selectable
If set to true the user would be able to select scheduler cells and events. By default selection is disabled.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->selectable(true);
    ?>

### showWorkHours
If set to true the view will be initially shown in business hours mode. By default view is displyed in full day mode.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->showWorkHours(true);
    ?>

### snap
If set to true the scheduler will snap events to the nearest slot during dragging (resizing or moving). Set it to false to allow free moving and resizing of events.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->snap(true);
    ?>

### startTime
The start time of the week and day views. The scheduler will display events starting after the startTime.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->startTime(new date());
    ?>

### timezone
The timezone which the scheduler will use to display the scheduler appointment dates. By default the current system timezone is used. This is an acceptable default when the
scheduler widget is bound to local array of events. It is advisable to specify a timezone if the scheduler is bound to a remote service.
That way all users would see the same dates and times no matter their configured system timezone.The complete list of the supported timezones is available in the List of IANA time zones Wikipedia page.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->timezone('value');
    ?>

### addView

Adds one or more SchedulerView to the Scheduler.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\SchedulerView|array`

#### Example - using \Kendo\UI\SchedulerView

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $view = new \Kendo\UI\SchedulerView();
    $allDaySlot = true;
    $view->allDaySlot($allDaySlot);
    $scheduler->addView($view);
    ?>

#### Example - using array

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $allDaySlot = true;
    $scheduler->addView(array('allDaySlot' => $allDaySlot));
    ?>

#### Example - adding more than one SchedulerView

    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $first  = new \Kendo\UI\SchedulerView();
    $second = new \Kendo\UI\SchedulerView();
    $scheduler->addView($first, $second);
    ?>

### width
The width of the widget. Numeric values are treated as pixels.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->width(1);
    ?>

#### Example  - using string
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->width('value');
    ?>

### workDayEnd
Sets the end of the work day when the  "Show business hours" button is clicked.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->workDayEnd(new date());
    ?>

### workDayStart
Sets the start of the work day when the  "Show business hours" button is clicked.

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `date`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->workDayStart(new date());
    ?>

### workWeekEnd
The end of working week (index based).

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->workWeekEnd(1);
    ?>

### workWeekStart
The start of working week (index based).

#### Returns
`\Kendo\UI\Scheduler`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $scheduler = new \Kendo\UI\Scheduler('Scheduler');
    $scheduler->workWeekStart(1);
    ?>

