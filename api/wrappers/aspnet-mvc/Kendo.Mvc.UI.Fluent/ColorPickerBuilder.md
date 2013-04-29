---
title:ColorPickerBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.colorpickerbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ColorPickerBuilder
Defines the fluent interface for configuring the DatePickerBase component.



## Methods

### Events(System.Action\<Kendo.Mvc.UI.Fluent.ColorPickerEventBuilder>)
Configures the client-side events.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Events(events =>
        events.Select("select").Change("change")
        )
    %>
        


#### Parameters

##### clientEventsAction System.Action<[Kendo.Mvc.UI.Fluent.ColorPickerEventBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ColorPickerEventBuilder)>
The client events action.




### Value(System.String)
Sets the value of the picker input





### Opacity(System.Boolean)
Indicates whether the picker will allow transparent colors to be picked.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Opacity(true)
    %>
        


#### Parameters

##### allowOpacity `System.Boolean`
Whether the user is allowed to change the color opacity.




### Palette(System.Collections.Generic.IEnumerable\<System.String>)
Sets the range of colors that the user can pick from.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Palette(new List<string> { "#ff0000", "#00ff00", "#0000ff" })
    %>
        


#### Parameters

##### palette `System.Collections.Generic.IEnumerable<System.String>`
A list of colors.




### Palette(Kendo.Mvc.UI.ColorPickerPalette)
Sets the range of colors that the user can pick from.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Palette(ColorPickerPalette.WebSafe)
    %>
        


#### Parameters

##### palette [Kendo.Mvc.UI.ColorPickerPalette](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ColorPickerPalette)
One of the preset palettes of colors




### Enable(System.Boolean)
Enables or disables the picker.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Enable(false)
    %>
        


#### Parameters

##### value `System.Boolean`
Whether the picker is enabled




### Buttons(System.Boolean)
Shows or hides the accept/cancel buttons.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .Buttons(false)
    %>
        


#### Parameters

##### value `System.Boolean`
Whether the buttons should be shown




### ToolIcon(System.String)
Shows a tool icon.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
        .ToolIcon("k-foreColor")
    %>
        


#### Parameters

##### cssClass `System.String`
The CSS class that will be used for styling




### TileSize(System.Int32)
Sets the size of the palette tiles


#### Example

    <%= Html.Kendo().ColorPalette()
        .Name("ColorPalette")
        .TileSize(32)
    %>
        


#### Parameters

##### tileSize `System.Int32`
The tile size (for square tiles)




### TileSize(System.Action\<Kendo.Mvc.UI.Fluent.PaletteSizeBuilder>)
Sets the size of the palette tiles


#### Example

    <%= Html.Kendo().ColorPalette()
        .Name("ColorPalette")
        .TileSize(s => s.Width(20).Height(10))
    %>
        


#### Parameters

##### columns System.Action<[Kendo.Mvc.UI.Fluent.PaletteSizeBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/PaletteSizeBuilder)>
The tile size (for square tiles)





