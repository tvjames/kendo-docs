---
title:FlatColorPickerBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.flatcolorpickerbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.FlatColorPickerBuilder
Defines the fluent interface for configuring the DatePickerBase component.



## Methods

### Events(System.Action\<Kendo.Mvc.UI.Fluent.SimpleColorPickerEventBuilder>)
Configures the client-side events.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Events(events =>
        events.Select("select").Change("change")
        )
    %>
        


#### Parameters

##### clientEventsAction System.Action<[Kendo.Mvc.UI.Fluent.SimpleColorPickerEventBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/SimpleColorPickerEventBuilder)>
The client events action.




### Value(System.String)
Sets the value of the picker input


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Value("#ff0000")
    %>
        


#### Parameters

##### color `System.String`
The initially selected color




### Opacity(System.Boolean)
Indicates whether the picker will allow transparent colors to be picked.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Opacity(true)
    %>
        


#### Parameters

##### allowOpacity `System.Boolean`
Whether the user is allowed to change the color opacity.




### Input(System.Boolean)
Indicates whether the picker will show an input for entering colors.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Input(false)
    %>
        


#### Parameters

##### showInput `System.Boolean`
Whether the input field should be shown.




### Preview(System.Boolean)
Indicates whether the picker will show a preview of the selected color.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Preview(false)
    %>
        


#### Parameters

##### showPreview `System.Boolean`
Whether the preview area should be shown.




### Buttons(System.Boolean)
Indicates whether the picker will show apply / cancel buttons.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
        .Buttons(false)
    %>
        


#### Parameters

##### showButtons `System.Boolean`
Whether the buttons should be shown.





