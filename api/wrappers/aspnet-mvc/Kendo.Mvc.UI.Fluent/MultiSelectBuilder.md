---
title:MultiSelectBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.multiselectbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.MultiSelectBuilder
Defines the fluent interface for configuring the MultiSelect component.



## Methods

### AutoBind(System.Boolean)
Controls whether to bind the widget to the DataSource on initialization.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .AutoBind(false)
    %>
        




### DataValueField(System.String)
Sets the field of the data item that provides the value content of the list items.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .DataTextField("Text")
        .DataValueField("Value")
    %>
        




### Events(System.Action\<Kendo.Mvc.UI.Fluent.MultiSelectEventBuilder\>)
Configures the client-side events.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Events(events =>
        events.Change("change")
        )
    %>
        


#### Parameters

##### clientEventsAction System.Action<[Kendo.Mvc.UI.Fluent.MultiSelectEventBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/MultiSelectEventBuilder)>
The client events action.




### Filter(System.String)
Use it to enable filtering of items.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Filter("startswith");
    %>
        




### Filter(Kendo.Mvc.UI.FilterType)
Use it to enable filtering of items.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Filter(FilterType.Contains);
    %>
        




### Items(System.Action\<Kendo.Mvc.UI.Fluent.DropDownListItemFactory\>)
Defines the items in the MultiSelect


#### Example

    <%= Html.Telerik().MultiSelect()
        .Name("MultiSelect")
        .Items(items =>
        {
        items.Add().Text("First Item");
        items.Add().Text("Second Item");
        })
    %>
        


#### Parameters

##### addAction System.Action<[Kendo.Mvc.UI.Fluent.DropDownListItemFactory](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/DropDownListItemFactory)>
The add action.




### HighlightFirst(System.Boolean)
Use it to enable highlighting of first matched item.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .HighlightFirst(true)
    %>
        




### MinLength(System.Int32)
Specifies the minimum number of characters that should be typed before the widget queries the dataSource.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .MinLength(3)
    %>
        




### Placeholder(System.String)
A string that appears in the textbox when it has no value.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Placeholder("Select country...")
    %>
        




### ItemTemplate(System.String)
Template to be used for rendering the items in the list.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .ItemTemplate("#= data #")
    %>
        




### ItemTemplateId(System.String)
TemplateId to be used for rendering the items in the list.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .ItemTemplateId("widgetTemplateId")
    %>
        




### TagTemplate(System.String)
Template to be used for rendering the tags of the selected items.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .TagTemplate("#= data #")
    %>
        




### TagTemplateId(System.String)
TemplateId to be used for rendering the tags of the selected items.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .TagTemplateId("widgetTemplateId")
    %>
        




### Value(System.Collections.IEnumerable)
Sets the value of the widget.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Value(new string[] { "1" })
    %>
        





