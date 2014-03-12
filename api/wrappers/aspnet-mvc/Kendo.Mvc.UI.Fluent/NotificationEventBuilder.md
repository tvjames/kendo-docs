---
title:NotificationEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.notificationeventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.NotificationEventBuilder
Defines the fluent interface for configuring the Notification events.



## Methods

### Hide(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Hide client-side event

For additional information check the [hide](/kendo-ui/api/web/notification#events-hide) event documentation.


#### Parameters

##### onHideAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    <% Html.Kendo().Notification()
        .Name("Notification")
        .Events(events => events.Hide(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                    .Render();
                    %>


### Hide(`System.String`)
Defines the name of the JavaScript function that will handle the the Hide client-side event.

For additional information check the [hide](/kendo-ui/api/web/notification#events-hide) event documentation.


#### Parameters

##### onHideHandlerName `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    <%= Html.Kendo().Notification()
    .Name("Notification")
    .Events(events => events.Hide("onHide"))
    %>


### Show(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Show client-side event

For additional information check the [show](/kendo-ui/api/web/notification#events-show) event documentation.


#### Parameters

##### onShowAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    <% Html.Kendo().Notification()
        .Name("Notification")
        .Events(events => events.Show(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                    .Render();
                    %>


### Show(`System.String`)
Defines the name of the JavaScript function that will handle the the Show client-side event.

For additional information check the [show](/kendo-ui/api/web/notification#events-show) event documentation.


#### Parameters

##### onHideHandlerName `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    <%= Html.Kendo().Notification()
    .Name("Notification")
    .Events(events => events.Show("onShow"))
    %>



