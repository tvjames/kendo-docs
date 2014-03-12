---
title:ButtonEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.buttoneventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ButtonEventBuilder
Defines the fluent interface for configuring the Button events.



## Methods

### Click(`System.Func<System.Object,System.Object>`)
Defines the inline handler of the Click client-side event

For additional information check the [click](/kendo-ui/api/web/button#events-click) event documentation.


#### Parameters

##### onClickAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




#### Example (ASPX)
    <% Html.Kendo().Button()
        .Name("Button")
        .Events(events => events.Click(
                @<text>
                    function(e) {
                    //event handling code
                    }
                    </text>
                    ))
                    .Render();
                    %>


### Click(`System.String`)
Defines the name of the JavaScript function that will handle the the Click client-side event.

For additional information check the [click](/kendo-ui/api/web/button#events-click) event documentation.


#### Parameters

##### onClickHandlerName `System.String`
The name of the JavaScript function that will handle the event.




#### Example (ASPX)
    <%= Html.Kendo().Button()
    .Name("Button")
    .Events(events => events.Click("onClick"))
    %>



