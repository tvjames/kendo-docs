---
title:TimezoneEditorEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.timezoneeditoreventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.TimezoneEditorEventBuilder
The fluent API for subscribing to Kendo UI TimezoneEditor events.



## Methods

### Change(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the change event.

For additional information check the [change](/kendo-ui/api/web/timezoneeditor#events-change) event documentation.


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (Razor)
    @(Html.Kendo().TimezoneEditor()
        .Name("TimezoneEditor")
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

For additional information check the [change](/kendo-ui/api/web/timezoneeditor#events-change) event documentation.


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




#### Example (Razor)
    @(Html.Kendo().TimezoneEditor()
        .Name("TimezoneEditor")
        .Events(events => events.Change("change"))
    )



