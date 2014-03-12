---
title:SchedulerEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.schedulereventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.SchedulerEventBuilder
The fluent API for subscribing to Kendo UI Scheduler events.



## Methods

### Remove(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the remove event.

For additional information check the [remove](/kendo-ui/api/web/scheduler#events-remove) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Remove(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Remove(`System.String`)
Defines the name of the JavaScript function that will handle the the remove event.

For additional information check the [remove](/kendo-ui/api/web/scheduler#events-remove) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler()
        .Name("Scheduler")
        .Events(events => events.Remove("remove"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Add(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the add event.

For additional information check the [add](/kendo-ui/api/web/scheduler#events-add) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Add(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Add(`System.String`)
Defines the name of the JavaScript function that will handle the add event.

For additional information check the [add](/kendo-ui/api/web/scheduler#events-add) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Add("add"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Edit(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the edit event.

For additional information check the [edit](/kendo-ui/api/web/scheduler#events-edit) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Edit(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Edit(`System.String`)
Defines the name of the JavaScript function that will handle the the edit event.

For additional information check the [edit](/kendo-ui/api/web/scheduler#events-edit) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Edit("edit"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Cancel(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the cancel event.

For additional information check the [cancel](/kendo-ui/api/web/scheduler#events-cancel) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Cancel(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Cancel(`System.String`)
Defines the name of the JavaScript function that will handle the the cancel event.

For additional information check the [cancel](/kendo-ui/api/web/scheduler#events-cancel) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Cancel("cancel"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Change(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the change event.

For additional information check the [change](/kendo-ui/api/web/scheduler#events-change) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Change(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Change(`System.String`)
Defines the name of the JavaScript function that will handle the the change event.

For additional information check the [change](/kendo-ui/api/web/scheduler#events-change) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Change("change"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Save(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the save event.

For additional information check the [save](/kendo-ui/api/web/scheduler#events-save) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Save(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                    .DataSource(d => d
                        .Model(m => m.Id(f => f.TaskID))
                        .Read("Read", "Scheduler")
                        .Create("Create", "Scheduler")
                        .Destroy("Destroy", "Scheduler")
                        .Update("Update", "Scheduler")
                    )
                )


### Save(`System.String`)
Defines the name of the JavaScript function that will handle the the save event.

For additional information check the [save](/kendo-ui/api/web/scheduler#events-save) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Save("save"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### DataBound(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the dataBound event.

For additional information check the [dataBound](/kendo-ui/api/web/scheduler#events-dataBound) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.DataBound(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### DataBound(`System.String`)
Defines the name of the JavaScript function that will handle the the dataBound event.

For additional information check the [dataBound](/kendo-ui/api/web/scheduler#events-dataBound) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.DataBound("dataBound"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### DataBinding(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the dataBinding event.

For additional information check the [dataBinding](/kendo-ui/api/web/scheduler#events-dataBinding) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.DataBinding(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### DataBinding(`System.String`)
Defines the name of the JavaScript function that will handle the the dataBinding event.

For additional information check the [dataBinding](/kendo-ui/api/web/scheduler#events-dataBinding) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.DataBinding("dataBinding"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### MoveStart(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the moveStart event.

For additional information check the [moveStart](/kendo-ui/api/web/scheduler#events-moveStart) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.MoveStart(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### MoveStart(`System.String`)
Defines the name of the JavaScript function that will handle the the moveStart event.

For additional information check the [moveStart](/kendo-ui/api/web/scheduler#events-moveStart) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.MoveStart("moveStart"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Move(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the move event.

For additional information check the [move](/kendo-ui/api/web/scheduler#events-move) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Move(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Move(`System.String`)
Defines the name of the JavaScript function that will handle the the move event.

For additional information check the [move](/kendo-ui/api/web/scheduler#events-move) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Move("move"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### MoveEnd(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the moveEnd event.

For additional information check the [moveEnd](/kendo-ui/api/web/scheduler#events-moveEnd) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.MoveEnd(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### MoveEnd(`System.String`)
Defines the name of the JavaScript function that will handle the the moveEnd event.

For additional information check the [moveEnd](/kendo-ui/api/web/scheduler#events-moveEnd) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.MoveEnd("moveEnd"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### ResizeStart(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the resizeStart event.

For additional information check the [resizeStart](/kendo-ui/api/web/scheduler#events-resizeStart) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.ResizeStart(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### ResizeStart(`System.String`)
Defines the name of the JavaScript function that will handle the the resizeStart event.

For additional information check the [resizeStart](/kendo-ui/api/web/scheduler#events-resizeStart) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.ResizeStart("resizeStart"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Resize(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the resize event.

For additional information check the [resize](/kendo-ui/api/web/scheduler#events-resize) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Resize(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Resize(`System.String`)
Defines the name of the JavaScript function that will handle the the resize event.

For additional information check the [resize](/kendo-ui/api/web/scheduler#events-resize) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Resize("resize"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### ResizeEnd(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the resizeEnd event.

For additional information check the [resizeEnd](/kendo-ui/api/web/scheduler#events-resizeEnd) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.ResizeEnd(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### ResizeEnd(`System.String`)
Defines the name of the JavaScript function that will handle the the resizeEnd event.

For additional information check the [resizeEnd](/kendo-ui/api/web/scheduler#events-resizeEnd) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.ResizeEnd("resizeEnd"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )


### Navigate(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the navigate event.

For additional information check the [navigate](/kendo-ui/api/web/scheduler#events-navigate) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
        .Events(events => events.Navigate(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Navigate(`System.String`)
Defines the name of the JavaScript function that will handle the the navigate event.

For additional information check the [navigate](/kendo-ui/api/web/scheduler#events-navigate) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().Scheduler<Task>()
        .Name("Scheduler")
        .Events(events => events.Navigate("navigate"))
        .DataSource(d => d
            .Model(m => m.Id(f => f.TaskID))
            .Read("Read", "Scheduler")
            .Create("Create", "Scheduler")
            .Destroy("Destroy", "Scheduler")
            .Update("Update", "Scheduler")
        )
    )



