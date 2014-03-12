---
title:SortableEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.sortableeventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.SortableEventBuilder
Defines the fluent interface for configuring sortable client events.



## Methods

### Start(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Start client-side event

For additional information check the [start](/kendo-ui/api/web/sortable#events-start) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Start(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Start(`System.String`)
Defines the name of the JavaScript function that will handle the the Start client-side event.

For additional information check the [start](/kendo-ui/api/web/sortable#events-start) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Start("start"))
    )


### Move(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Move client-side event

For additional information check the [move](/kendo-ui/api/web/sortable#events-move) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Move(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Move(`System.String`)
Defines the name of the JavaScript function that will handle the the Move client-side event.

For additional information check the [move](/kendo-ui/api/web/sortable#events-move) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Move("move"))
    )


### End(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the End client-side event

For additional information check the [end](/kendo-ui/api/web/sortable#events-end) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.End(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### End(`System.String`)
Defines the name of the JavaScript function that will handle the the End client-side event.

For additional information check the [end](/kendo-ui/api/web/sortable#events-end) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.End("end"))
    )


### Change(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Change client-side event

For additional information check the [change](/kendo-ui/api/web/sortable#events-change) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Change(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Change(`System.String`)
Defines the name of the JavaScript function that will handle the the Change client-side event.

For additional information check the [change](/kendo-ui/api/web/sortable#events-change) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Change("change"))
    )


### Cancel(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Cancel client-side event

For additional information check the [cancel](/kendo-ui/api/web/sortable#events-cancel) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Cancel(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                )


### Cancel(`System.String`)
Defines the name of the JavaScript function that will handle the the Cancel client-side event.

For additional information check the [cancel](/kendo-ui/api/web/sortable#events-cancel) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    @(Html.Kendo().Sortable()
        .For("#element")
        .Events(events => events.Cancel("cancel"))
    )



