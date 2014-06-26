---
title: gantt
---

# \<kendo:gantt\>
A JSP wrapper for Kendo UI [Gantt](/api/web/gantt).

## Configuration Attributes

### autoBind `boolean`

If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Example
    <kendo:gantt autoBind="autoBind">
    </kendo:gantt>

### dependencies `java.lang.Object`

The data source of the widget which contains the dependencies. Can be a JavaScript object which represents a valid data source configuration, a JavaScript array or an existing kendo.data.GanttDependencyDataSource
instance.If the dependencies option is set to a JavaScript object or array the widget will initialize a new kendo.data.GanttDependencyDataSource instance using that value as data source configuration.If the dependencies option is an existing kendo.data.GanttDependencyDataSource instance the widget will use that instance and will not initialize a new one.

#### Example
    <kendo:gantt dependencies="dependencies">
    </kendo:gantt>

### editable `boolean`

If set to false the user won't be able to create, modify or delete tasks and dependencies.

#### Example
    <kendo:gantt editable="editable">
    </kendo:gantt>

### height `java.lang.Object`

The height of the widget. Numeric values are treated as pixels.

#### Example
    <kendo:gantt height="height">
    </kendo:gantt>

### hourSpan `float`

The span of an hour slot.

#### Example
    <kendo:gantt hourSpan="hourSpan">
    </kendo:gantt>

### listWidth `java.lang.Object`

The width of the task list. Numeric values are treated as pixels.

#### Example
    <kendo:gantt listWidth="listWidth">
    </kendo:gantt>

### selectable `boolean`

If set to false the user won't be able to select tasks in the gantt. By default selection is enabled and triggers the change event.

#### Example
    <kendo:gantt selectable="selectable">
    </kendo:gantt>

### showWorkDays `boolean`

If set to false, gantt views will show all days of the week. By default the views display only business days.

#### Example
    <kendo:gantt showWorkDays="showWorkDays">
    </kendo:gantt>

### showWorkHours `boolean`

If set to false, the day view will show all hours of the day. By default the view displays only business hours.

#### Example
    <kendo:gantt showWorkHours="showWorkHours">
    </kendo:gantt>

### snap `boolean`

If set to true the gantt will snap tasks to the nearest slot during dragging (resizing or moving). Set it to false to allow free moving and resizing of tasks.

#### Example
    <kendo:gantt snap="snap">
    </kendo:gantt>

### workDayEnd `java.util.Date`

Sets the end of the work day.

#### Example
    <kendo:gantt workDayEnd="workDayEnd">
    </kendo:gantt>

### workDayStart `java.util.Date`

Sets the start of the work day.

#### Example
    <kendo:gantt workDayStart="workDayStart">
    </kendo:gantt>

### workWeekEnd `float`

The end of working week (index based).

#### Example
    <kendo:gantt workWeekEnd="workWeekEnd">
    </kendo:gantt>

### workWeekStart `float`

The start of working week (index based).

#### Example
    <kendo:gantt workWeekStart="workWeekStart">
    </kendo:gantt>


##  Configuration JSP Tags

### kendo:gantt-columns

The configuration of the gantt columns. An array of JavaScript objects or strings. A JavaScript objects are interpreted as column configurations. Strings are interpreted as the
field to which the column is bound. The gantt will create a column for every item of the array.

More documentation is available at [kendo:gantt-columns](/api/wrappers/jsp/gantt/columns).

#### Example

    <kendo:gantt>
        <kendo:gantt-columns></kendo:gantt-columns>
    </kendo:gantt>

### kendo:gantt-messages

The configuration of the gantt messages. Use this option to customize or localize the gantt messages.

More documentation is available at [kendo:gantt-messages](/api/wrappers/jsp/gantt/messages).

#### Example

    <kendo:gantt>
        <kendo:gantt-messages></kendo:gantt-messages>
    </kendo:gantt>

### kendo:gantt-views

The views displayed by the gantt and their configuration. The array items can be either objects specifying the view configuration or strings representing the view types (assuming default configuration).
By default the Kendo UI Gantt widget displays all three ("day", "week", and "month") views.

More documentation is available at [kendo:gantt-views](/api/wrappers/jsp/gantt/views).

#### Example

    <kendo:gantt>
        <kendo:gantt-views></kendo:gantt-views>
    </kendo:gantt>


## Event Attributes

### dataBinding `String`

Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBinding](/api/web/gantt#events-dataBinding) event documentation.

#### Example
    <kendo:gantt dataBinding="handle_dataBinding">
    </kendo:gantt>
    <script>
        function handle_dataBinding(e) {
            // Code to handle the dataBinding event.
        }
    </script>

### dataBound `String`

Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/web/gantt#events-dataBound) event documentation.

#### Example
    <kendo:gantt dataBound="handle_dataBound">
    </kendo:gantt>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>

### add `String`

Fired when a new task or a new dependency is about to be added.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [add](/api/web/gantt#events-add) event documentation.

#### Example
    <kendo:gantt add="handle_add">
    </kendo:gantt>
    <script>
        function handle_add(e) {
            // Code to handle the add event.
        }
    </script>

### edit `String`

Fired when the user starts task edit upon double click on a cell.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [edit](/api/web/gantt#events-edit) event documentation.

#### Example
    <kendo:gantt edit="handle_edit">
    </kendo:gantt>
    <script>
        function handle_edit(e) {
            // Code to handle the edit event.
        }
    </script>

### remove `String`

Fired when a task or a dependency is about to be removed.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [remove](/api/web/gantt#events-remove) event documentation.

#### Example
    <kendo:gantt remove="handle_remove">
    </kendo:gantt>
    <script>
        function handle_remove(e) {
            // Code to handle the remove event.
        }
    </script>

### cancel `String`

Fired when the user cancels tasks's cell editing by pressing the 'Esc' key.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [cancel](/api/web/gantt#events-cancel) event documentation.

#### Example
    <kendo:gantt cancel="handle_cancel">
    </kendo:gantt>
    <script>
        function handle_cancel(e) {
            // Code to handle the cancel event.
        }
    </script>

### save `String`

Fired when a task field is updated upon user interaction.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [save](/api/web/gantt#events-save) event documentation.

#### Example
    <kendo:gantt save="handle_save">
    </kendo:gantt>
    <script>
        function handle_save(e) {
            // Code to handle the save event.
        }
    </script>

### change `String`

Fired when the user selects a task in the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [change](/api/web/gantt#events-change) event documentation.

#### Example
    <kendo:gantt change="handle_change">
    </kendo:gantt>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### navigate `String`

Fired when the user changes the selected view of the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [navigate](/api/web/gantt#events-navigate) event documentation.

#### Example
    <kendo:gantt navigate="handle_navigate">
    </kendo:gantt>
    <script>
        function handle_navigate(e) {
            // Code to handle the navigate event.
        }
    </script>

### moveStart `String`

Fired when the user starts to drag a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [moveStart](/api/web/gantt#events-moveStart) event documentation.

#### Example
    <kendo:gantt moveStart="handle_moveStart">
    </kendo:gantt>
    <script>
        function handle_moveStart(e) {
            // Code to handle the moveStart event.
        }
    </script>

### move `String`

Fired when the user is moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [move](/api/web/gantt#events-move) event documentation.

#### Example
    <kendo:gantt move="handle_move">
    </kendo:gantt>
    <script>
        function handle_move(e) {
            // Code to handle the move event.
        }
    </script>

### moveEnd `String`

Fired when the user stops moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [moveEnd](/api/web/gantt#events-moveEnd) event documentation.

#### Example
    <kendo:gantt moveEnd="handle_moveEnd">
    </kendo:gantt>
    <script>
        function handle_moveEnd(e) {
            // Code to handle the moveEnd event.
        }
    </script>

### resizeStart `String`

Fired when the user starts to resize a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resizeStart](/api/web/gantt#events-resizeStart) event documentation.

#### Example
    <kendo:gantt resizeStart="handle_resizeStart">
    </kendo:gantt>
    <script>
        function handle_resizeStart(e) {
            // Code to handle the resizeStart event.
        }
    </script>

### resize `String`

Fired when the user is resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resize](/api/web/gantt#events-resize) event documentation.

#### Example
    <kendo:gantt resize="handle_resize">
    </kendo:gantt>
    <script>
        function handle_resize(e) {
            // Code to handle the resize event.
        }
    </script>

### resizeEnd `String`

Fired when the user releases the mouse after resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resizeEnd](/api/web/gantt#events-resizeEnd) event documentation.

#### Example
    <kendo:gantt resizeEnd="handle_resizeEnd">
    </kendo:gantt>
    <script>
        function handle_resizeEnd(e) {
            // Code to handle the resizeEnd event.
        }
    </script>

## Event Tags

### kendo:gantt-dataBinding

Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBinding](/api/web/gantt#events-dataBinding) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-dataBinding>
            <script>
                function(e) {
                    // Code to handle the dataBinding event.
                }
            </script>
        </kendo:gantt-dataBinding>
    </kendo:gantt>

### kendo:gantt-dataBound

Fired when the widget is bound to data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/web/gantt#events-dataBound) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:gantt-dataBound>
    </kendo:gantt>

### kendo:gantt-add

Fired when a new task or a new dependency is about to be added.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [add](/api/web/gantt#events-add) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-add>
            <script>
                function(e) {
                    // Code to handle the add event.
                }
            </script>
        </kendo:gantt-add>
    </kendo:gantt>

### kendo:gantt-edit

Fired when the user starts task edit upon double click on a cell.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [edit](/api/web/gantt#events-edit) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-edit>
            <script>
                function(e) {
                    // Code to handle the edit event.
                }
            </script>
        </kendo:gantt-edit>
    </kendo:gantt>

### kendo:gantt-remove

Fired when a task or a dependency is about to be removed.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [remove](/api/web/gantt#events-remove) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-remove>
            <script>
                function(e) {
                    // Code to handle the remove event.
                }
            </script>
        </kendo:gantt-remove>
    </kendo:gantt>

### kendo:gantt-cancel

Fired when the user cancels tasks's cell editing by pressing the 'Esc' key.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [cancel](/api/web/gantt#events-cancel) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-cancel>
            <script>
                function(e) {
                    // Code to handle the cancel event.
                }
            </script>
        </kendo:gantt-cancel>
    </kendo:gantt>

### kendo:gantt-save

Fired when a task field is updated upon user interaction.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [save](/api/web/gantt#events-save) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-save>
            <script>
                function(e) {
                    // Code to handle the save event.
                }
            </script>
        </kendo:gantt-save>
    </kendo:gantt>

### kendo:gantt-change

Fired when the user selects a task in the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [change](/api/web/gantt#events-change) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:gantt-change>
    </kendo:gantt>

### kendo:gantt-navigate

Fired when the user changes the selected view of the gantt.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [navigate](/api/web/gantt#events-navigate) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-navigate>
            <script>
                function(e) {
                    // Code to handle the navigate event.
                }
            </script>
        </kendo:gantt-navigate>
    </kendo:gantt>

### kendo:gantt-moveStart

Fired when the user starts to drag a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [moveStart](/api/web/gantt#events-moveStart) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-moveStart>
            <script>
                function(e) {
                    // Code to handle the moveStart event.
                }
            </script>
        </kendo:gantt-moveStart>
    </kendo:gantt>

### kendo:gantt-move

Fired when the user is moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [move](/api/web/gantt#events-move) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-move>
            <script>
                function(e) {
                    // Code to handle the move event.
                }
            </script>
        </kendo:gantt-move>
    </kendo:gantt>

### kendo:gantt-moveEnd

Fired when the user stops moving a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [moveEnd](/api/web/gantt#events-moveEnd) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-moveEnd>
            <script>
                function(e) {
                    // Code to handle the moveEnd event.
                }
            </script>
        </kendo:gantt-moveEnd>
    </kendo:gantt>

### kendo:gantt-resizeStart

Fired when the user starts to resize a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resizeStart](/api/web/gantt#events-resizeStart) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-resizeStart>
            <script>
                function(e) {
                    // Code to handle the resizeStart event.
                }
            </script>
        </kendo:gantt-resizeStart>
    </kendo:gantt>

### kendo:gantt-resize

Fired when the user is resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resize](/api/web/gantt#events-resize) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-resize>
            <script>
                function(e) {
                    // Code to handle the resize event.
                }
            </script>
        </kendo:gantt-resize>
    </kendo:gantt>

### kendo:gantt-resizeEnd

Fired when the user releases the mouse after resizing a task.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [resizeEnd](/api/web/gantt#events-resizeEnd) event documentation.

#### Example
    <kendo:gantt>
        <kendo:gantt-resizeEnd>
            <script>
                function(e) {
                    // Code to handle the resizeEnd event.
                }
            </script>
        </kendo:gantt-resizeEnd>
    </kendo:gantt>

