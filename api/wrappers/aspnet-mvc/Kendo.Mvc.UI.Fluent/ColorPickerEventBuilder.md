---
title:ColorPickerEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.colorpickereventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ColorPickerEventBuilder
Defines the fluent interface for configuring ColorPicker client events.



## Methods

### Change(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Change client-side event

For additional information check the [change](/api/web/colorpicker#events-change) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Change(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        )
        


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Change(System.String)
Defines the name of the JavaScript function that will handle the the Change client-side event.

For additional information check the [change](/api/web/colorpicker#events-change) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Change("change"))
        )
        


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




### Select(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Select client-side event

For additional information check the [select](/api/web/colorpicker#events-select) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Select(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        )
        


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Select(System.String)
Defines the name of the JavaScript function that will handle the the Select client-side event.

For additional information check the [select](/api/web/colorpicker#events-select) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Select("change"))
        )
        


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




### Open(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Open client-side event

For additional information check the [open](/api/web/colorpicker#events-open) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Open(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        )
        


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Open(System.String)
Defines the name of the JavaScript function that will handle the the Open client-side event.

For additional information check the [open](/api/web/colorpicker#events-open) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Open("open"))
        )
        


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.




### Close(System.Func\<System.Object,System.Object>)
Defines the inline handler of the Close client-side event

For additional information check the [close](/api/web/colorpicker#events-close) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Close(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        )
        


#### Parameters

##### handler `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Close(System.String)
Defines the name of the JavaScript function that will handle the the Close client-side event.

For additional information check the [close](/api/web/colorpicker#events-close) event documentation.


#### Example

    @(Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events => events.Close("close"))
        )
        


#### Parameters

##### handler `System.String`
The name of the JavaScript function that will handle the event.





