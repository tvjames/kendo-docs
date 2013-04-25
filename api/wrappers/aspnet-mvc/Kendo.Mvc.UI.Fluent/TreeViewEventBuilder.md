---
title:TreeViewEventBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.treevieweventbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.TreeViewEventBuilder
Defines the fluent API for configuring the events of the Kendo TreeView for ASP.NET MVC



## Methods

### Collapse(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the collapse client-side event

For additional information check the [collapse](/api/web/treeview#events-collapse) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Collapse(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onCollapseAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Collapse(System.String)
Defines the name of the JavaScript function that will handle the the collapse client-side event.

For additional information check the [collapse](/api/web/treeview#events-collapse) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Collapse("onExpand"))
    %>
        


#### Parameters

##### onCollapseHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### DataBound(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the dataBound client-side event

For additional information check the [dataBound](/api/web/treeview#events-dataBound) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DataBound(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDataBoundAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### DataBound(System.String)
Defines the name of the JavaScript function that will handle the the dataBound client-side event.

For additional information check the [dataBound](/api/web/treeview#events-dataBound) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DataBound("onExpand"))
    %>
        


#### Parameters

##### onDataBoundHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Drag(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the drag client-side event

For additional information check the [drag](/api/web/treeview#events-drag) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Drag(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDragAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Drag(System.String)
Defines the name of the JavaScript function that will handle the the drag client-side event.

For additional information check the [drag](/api/web/treeview#events-drag) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Drag("onExpand"))
    %>
        


#### Parameters

##### onDragHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### DragEnd(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the dragend client-side event

For additional information check the [dragEnd](/api/web/treeview#events-dragEnd) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DragEnd(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDragEndAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### DragEnd(System.String)
Defines the name of the JavaScript function that will handle the the dragend client-side event.

For additional information check the [dragEnd](/api/web/treeview#events-dragEnd) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DragEnd("onExpand"))
    %>
        


#### Parameters

##### onDragEndHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### DragStart(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the dragstart client-side event

For additional information check the [dragStart](/api/web/treeview#events-dragStart) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DragStart(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDragStartAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### DragStart(System.String)
Defines the name of the JavaScript function that will handle the the dragstart client-side event.

For additional information check the [dragStart](/api/web/treeview#events-dragStart) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.DragStart("onExpand"))
    %>
        


#### Parameters

##### onDragStartHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Drop(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the drop client-side event

For additional information check the [drop](/api/web/treeview#events-drop) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Drop(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onDropAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Drop(System.String)
Defines the name of the JavaScript function that will handle the the drop client-side event.

For additional information check the [drop](/api/web/treeview#events-drop) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Drop("onExpand"))
    %>
        


#### Parameters

##### onDropHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Expand(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the expand client-side event

For additional information check the [expand](/api/web/treeview#events-expand) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Expand(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onExpandAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Expand(System.String)
Defines the name of the JavaScript function that will handle the the expand client-side event.

For additional information check the [expand](/api/web/treeview#events-expand) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Expand("onExpand"))
    %>
        


#### Parameters

##### onExpandHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Select(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the select client-side event

For additional information check the [select](/api/web/treeview#events-select) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Select(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onSelectAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Select(System.String)
Defines the name of the JavaScript function that will handle the the select client-side event.

For additional information check the [select](/api/web/treeview#events-select) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Select("onExpand"))
    %>
        


#### Parameters

##### onSelectHandlerName `System.String`
The name of the JavaScript function that will handle the event.




### Change(System.Func\<System.Object,System.Object\>)
Defines the inline handler of the change client-side event

For additional information check the [change](/api/web/treeview#events-change) event documentation.


#### Example

    <% Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Change(
        @<text>
        function(e) {
        // event handling code
        }
        </text>
        ))
        .Render();
    %>
        


#### Parameters

##### onChangeAction `System.Func<System.Object,System.Object>`
The handler code wrapped in a text tag (Razor syntax).




### Change(System.String)
Defines the name of the JavaScript function that will handle the the change client-side event.

For additional information check the [change](/api/web/treeview#events-change) event documentation.


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Events(events => events.Change("onChange"))
    %>
        


#### Parameters

##### onChangeHandlerName `System.String`
The name of the JavaScript function that will handle the event.





