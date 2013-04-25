---
title:TreeViewCheckboxesBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.treeviewcheckboxesbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.TreeViewCheckboxesBuilder
Defines the fluent interface for configuring child TreeView items.



## Methods

### Enabled(System.Boolean)
Enable/disable rendering of checkboxes in the treeview.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Checkboxes(config => config
        .Enabled(true)
        )
    %>
        


#### Parameters

##### enabled `System.Boolean`
Whether checkboxes should be rendered.




### CheckChildren(System.Boolean)
Enable/disable checking of child checkboxes in the treeview.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Checkboxes(config => config
        .CheckChildren(true)
        )
    %>
        


#### Parameters

##### enabled `System.Boolean`
Whether checking of parent checkboxes should check child checkboxes.




### Template(System.String)
Client-side template to be used for rendering the items in the treeview.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Checkboxes(config => config
        .Template("#= data #")
        )
    %>
        




### TemplateId(System.String)
Id of the element that holds the client-side template to be used for rendering the items in the treeview.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Checkboxes(config => config
        .TemplateId("widgetTemplateId")
        )
    %>
        





