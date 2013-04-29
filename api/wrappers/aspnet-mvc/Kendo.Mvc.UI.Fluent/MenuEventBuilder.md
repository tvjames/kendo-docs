---
title:MenuEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.menueventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.MenuEventBuilder
Defines the fluent interface for configuring the Menu events.



## Methods

### Open(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Open client-side event

For additional information check the [open](/api/web/menu#events-open) event documentation.


#### Example

    <% Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Open(
        @<text>
        function(e) {
        //event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onOpenAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Open(System.String)
Defines the name of the JavaScript function that will handle the the Open client-side event.

For additional information check the [open](/api/web/menu#events-open) event documentation.


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Open("onOpen"))
    %>
        


#### Parameters

##### onOpenHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Close(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Close client-side event

For additional information check the [close](/api/web/menu#events-close) event documentation.


#### Example

    <% Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Close(
        @<text>
        function(e) {
        //event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onCloseAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Close(System.String)
Defines the name of the JavaScript function that will handle the the Close client-side event.

For additional information check the [close](/api/web/menu#events-close) event documentation.


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Close("onClose"))
    %>
        


#### Parameters

##### onCloseHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Activate(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Activate client-side event

For additional information check the [activate](/api/web/menu#events-activate) event documentation.


#### Example

    <% Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Activate(
        @<text>
        function(e) {
        //event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onActivateAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Activate(System.String)
Defines the name of the JavaScript function that will handle the the Activate client-side event.

For additional information check the [activate](/api/web/menu#events-activate) event documentation.


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Activate("onActivate"))
    %>
        


#### Parameters

##### onActivateHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Deactivate(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Deactivate client-side event

For additional information check the [deactivate](/api/web/menu#events-deactivate) event documentation.


#### Example

    <% Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Deactivate(
        @<text>
        function(e) {
        //event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDeactivateAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Deactivate(System.String)
Defines the name of the JavaScript function that will handle the the Deactivate client-side event.

For additional information check the [deactivate](/api/web/menu#events-deactivate) event documentation.


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Deactivate("onDeactivate"))
    %>
        


#### Parameters

##### onDeactivateHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Select(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Select client-side event

For additional information check the [select](/api/web/menu#events-select) event documentation.


#### Example

    <% Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Select(
        @<text>
        function(e) {
        //event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onSelectAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Select(System.String)
Defines the name of the JavaScript function that will handle the the Select client-side event.

For additional information check the [select](/api/web/menu#events-select) event documentation.


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Events(events => events.Select("onSelect"))
    %>
        


#### Parameters

##### onSelectHandlerName `System.String`
The name of the JavaScript function that will handle the event.





