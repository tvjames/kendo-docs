---
title: Fundamentals
page_title: Kendo UI widget fundamentals
description: Initialize Kendo UI widgets, set configuration, get the client object, use event binding.
position: 2
---

# Kendo UI Widgets

Kendo UI is based on the [jQuery](http://jquery.com) library. The Kendo UI widgets are exposed as jQuery plugins. The name of the jQuery plugin is formed
by adding the "kendo" prefix to the name of the Kendo UI widget. For example the Kendo AutoComplete is exposed as "kendoAutoComplete". Kendo UI Mobile widgets
are exposed by adding the "kendoMobile" prefix to the name of the widget e.g. "kendoMobileListView".

## Initializing Kendo UI widgets with jQuery

Kendo UI widgets are created from existing HTML elements. You just need to find the target element using jQuery and call the corresponding jQuery plugin.

### Example - initialize a Kendo UI widget

    <input id="autocomplete" />
    <script>
    $("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
    </script>

The `$("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);` statement does two things:

1. Finds the element whose `id` attribute set to `autocomplete`. The `#autocomplete` argument is an [id selector](http://api.jquery.com/id-selector/).
1. Initializes a new Kendo AutoComplete widget via the `kendoAutoComplete` jQuery plugin and passes the `["Apples", "Oranges", "Grapes"]` array as configuration.

> **Important:** A Kendo UI widget will **not** be created if jQuery **can't** find the element specified by the selector.

You can use any valid [jQuery selector](http://api.jquery.com/category/selectors/) when initializing Kendo UI Widgets.

> **Note:** A Kendo UI widget will be initialized for every element that matches the specified jQuery selector.

> All Kendo UI widgets, which are defined with a **server wrapper**, are **initialized automatically**. If a widget is [initialized again](/getting-started/widgets#duplicate-kendo-ui-widget-initialization), this will cause unexpected side effects.

## Configuring Kendo UI widgets

You can configure a Kendo UI widget by passing a configuration object as an argument of the jQuery plugin. That object is a set of key/value pairs which configure the Kendo UI widget.

### Example - configure a Kendo UI widget

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      height: 200,
      columns:[
          {
              field: "FirstName",
              title: "First Name"
          },
          {
              field: "LastName",
              title: "Last Name"
          }
      ],
      dataSource: {
          data: [
              {
                  FirstName: "John",
                  LastName: "Doe"
              },
              {
                  FirstName: "Jane",
                  LastName: "Doe"
              }
          ]
      }
    });
    </script>

This example sets the [height](/api/web/grid#height-numberstring), [columns](/api/web/grid#columns-array) and [dataSource](/api/web/grid#datasource-kendodatadatasource--object) configuration options of the grid widget.

> The [api](/api/introduction) documentation lists all configuration options supported by each Kendo UI widget.

## Getting reference to a Kendo UI widget

Kendo UI widgets are initialized with a jQuery plugin method, as shown above. Calling one of these methods will not return the Kendo UI widget instance, though. Instead, the jQuery convention of returning the selected DOM element is maintained. This allows jQuery methods to be chained on the selected element, but does not provide immediate access to the Kendo UI widget instance.

To get a reference to a widget instance, use the [jQuery data](http://api.jquery.com/data/) method to ask for the control by specifying the control type, prefixed with "kendo".

### Example - get reference to a Kendo UI widget

    <input id="autocomplete" />
    <script>
    // initialization code here...
    $("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
    // ...
    // get the widget instance / object
    var autocomplete = $("#autocomplete").data("kendoAutoComplete");
    </script>

The `$("#autocomplete").data("kendoAutoComplete")` statement returns the Kendo AutoComplete widget instance.

> Kendo UI widget instances are associated with their elements via the [jQuery data](http://api.jquery.com/data/) method. The key passed to the jQuery data method
is the name of the jQuery plugin itself - "kendoAutoComplete", "kendoGrid" etc.

## Duplicate Kendo UI widget initialization

Please be careful **not** to initialize an existing Kendo UI widget instance again. This is especially applicable to Kendo UI server wrappers (they are initialized automatically), or scenarios in which a widget is created in an event handler that can be executed multiple times. A common mistake is to recreate a widget instance when the goal is simply to obtain the instance object (see below). Duplicate initialization is unnecessary, unsupported and usually leads to unexpected side effects. If a widget instance must be recreated, it must be [destroyed](/getting-started/widgets#destroying-kendo-ui-widgets) first.

### Example - incorrect duplicate initialization

    <input id="autocomplete" />
    <script>
    // initialization code here...
    $("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
    // ...
    // correct - instance reference is obtained:
    var autocomplete = $("#autocomplete").data("kendoAutoComplete");
    // incorrect - instance reference is obtained while creating a duplicate instance:
    var duplicate = $("#autocomplete").kendoAutoComplete().data("kendoAutoComplete");
    </script>

## Getting reference to an unknown Kendo UI widget

In some rare occasions, you may need to check whether a given DOM element is part of a Kendo UI widget and in that case, obtain the widget instance and use its API. Here is the required procedure:

	// 1. There is some DOM element, e.g. <input id="myID" />
	var element = $("#myID");

	// 2. Is the element part of a Kendo UI widget?
	var isFromWidget = element.closest(".k-widget").length > 0;

	// 3. Which is the element that may have a client Kendo UI widget instance attached?
	var widgetElement = element.closest("[data-" + kendo.ns + "role]");

	// 4. How to obtain reference to the Kendo UI widget instance from the specified element?
	var widgetObject = kendo.widgetInstance(widgetElement);

	// 5. What is the Kendo UI widget name?
	var widgetName = widgetObject.options.name;

Here is some more information about the [kendo.widgetInstance method](/api/framework/kendo#methods-widgetInstance).

## Using the API of a Kendo UI widget

The Kendo UI widgets expose a set of methods which can alter or query their state.

### Example - use the API of a Kendo UI widget

    <input id="autocomplete" />
    <script>
    $("#autocomplete").kendoAutoComplete(["Apples", "Oranges", "Grapes"]);
    var autocomplete = $("#autocomplete").data("kendoAutoComplete");
    autocomplete.value("Cherries");
    var value = autocomplete.value();
    alert(value); // Displays "Cherries"
    </script>

This example does the following:

1. Initializes a Kendo AutoComplete widget.
1. Gets a reference to the AutoComplete. The reference is required for invoking methods.
1. Sets the value of the AutoComplete by invoking the [value](/api/web/autocomplete#value) method and passing the string `"Cherries"` as the argument.
1. Gets the value of the AutoComplete by invoking the [value](/api/web/autocomplete#value) without arguments.

> The [api](/api/introduction) documentation lists all methods supported by each Kendo UI widget.

## Subscribing to the events of a Kendo UI widget

Kendo UI widget events are fired when their state is changed. There are two ways to handle events:

* Specify the JavaScript function which will handle the event during widget initialization.
* Use the `bind` method of the widget.

### Example - subscribe to an event during initialization

    <input id="autocomplete" />
    <script>
    function autocomplete_change() {
        // Handle the "change" event
    }
    $("#autocomplete").kendoAutoComplete({
        change: autocomplete_change
    });
    </script>

This example initializes a Kendo AutoComplete widget and configures it to invoke the `autocomplete_change` JavaScript function when the **change** event is fired.

### Example - subscribe to an event using the bind method

    <input id="autocomplete" />
    <script>
    function autocomplete_change() {
        // Handle the "change" event
    }
    $("#autocomplete").kendoAutoComplete();
    var autocomplete = $("#autocomplete").data("kendoAutoComplete");
    autocomplete.bind("change", autocomplete_change);
    </script>

This `autocomplete.bind("change", autocomplete_change)` statement attaches the `autocomplete_change` JavaScript function to the **change** event. As a result, the `autocomplete_change`
function will be invoked when the **change** event is fired.

> The [api](/api/introduction) documentation lists all events supported by each Kendo UI widget.

### Event Handler

The event handler is the JavaScript function invoked when the event is fired. The argument of the event handler is a JavaScript object which contains event-specific data.

You can get a reference to the widget which fired the event via the **`sender`** field of the event argument.
The function context of the event handler (available via the `this` keyword) is also set to the widget instance.

#### Example - use the sender field of the event argument

    <input id="autocomplete" />
    <script>
    function autocomplete_change(e) {
        var autocomplete = e.sender;
        var value = autocomplete.value();
        alert(value); // Displays the value of the AutoComplete widget
    }
    $("#autocomplete").kendoAutoComplete({
        change: autocomplete_change
    });
    </script>

#### Example - use the "this" keyword

    <input id="autocomplete" />
    <script>
    function autocomplete_change(e) {
        var autocomplete = this;
        var value = autocomplete.value();
        alert(value); // Displays the value of the AutoComplete widget
    }
    $("#autocomplete").kendoAutoComplete({
        change: autocomplete_change
    });
    </script>

Some events can be prevented (cancelled), so that the user action, which has triggered them, is ignored.

#### Example - preventing events

    <div id="grid"></div>
    <script>
    function onSaveChanges(e) {
        var condition = true;
        if (condition) {
            e.preventDefault();
        }
    }
    $("#grid").kendoGrid({
        saveChanges: onSaveChanges
    });
    </script>

### Unbinding Kendo UI Event Handlers

It is possible to detach a previously attached event handler with the `unbind` method, which all Kendo UI widgets have.

#### Example - unbinding event handlers

    <div id="grid"></div>
    <script>
    function onChange(e) {
        // handler body
    }
    
    $("#grid").kendoGrid({
        change: onChange
    });
    
    $("#grid").data("kendoGrid").unbind("change", onChange);
    </script>

    
## Accessing Kendo UI widget elements

Each Kendo UI **Web** and **DataViz** widget instance keeps references to two elements - `element` and `wrapper`. Kendo UI **Mobile** widgets have an `element` reference only.
**`element`** is the element from which the widget was initialized. Depending on the widget, it may be visible (e.g. AutoComplete, Calendar, DatePicker, etc.) or hidden (e.g. DropDownList, Upload).
A reference to this element is also returned by the initialization statement. **`wrapper`** is the outermost element, which is part of the widget. Depending on the widget and exact scenario, the two references may match.
For example, if the Grid is initialized from a `<div>`, the two references match.
If the Grid is initialized from a `<table>`, then `element` points to the `<table>`, while `wrapper` points to the wrapper `<div>`
### Example - using element and wrapper references

	<div id="myWindow">...window content...</div>
	<script>
		var winElement1 = $("#myWindow").kendoWindow( { /*...*/ } ); // returns div#myWindow as a jQuery object
		var winElement2 = $("#myWindow").data("kendoWindow").element; // returns div#myWindow as a jQuery object
		
		var winWrapper = $("#myWindow").data("kendoWindow").wrapper; // returns div.k-window as a jQuery object
	</script>

## Destroying Kendo UI widgets

Every Kendo UI widget has a `destroy` method, which does the following:

1. Deletes the widget instance (client object). It is no longer accessible and all attached event handlers will stop working.
1. Removes autogenerated HTML content, which is **outside** the widget, e.g. detached popups, dropdowns, etc. The main widget HTML remains intact and if needed, it should be removed from the DOM manually.
The Window widget is an exception, as it represents a detached popup on its own.
1. Destroys all child widgets.

A widget can be destroyed if it is no longer needed, or if it is placed inside a container, which will be updated via an Ajax request. The latter is recommended to prevent memory leaks or other unexpected side effects.

Kendo UI widgets are destroyed automatically when the web page is unloaded.

**Creating a new widget instance from the leftovers of a destroyed widget may work in most cases, but is not recommended. Please initialize new widgets from different (e.g. newly appended) DOM elements.**

### Example - destroying a widget

	<div id="grid"></div>
	<script>
		$("#grid").kendoGrid( { /*...*/ } ); // create a Grid widget
		
		$("#grid").data("kendoGrid").destroy(); // destroy the Grid
	</script>

In addition to destroying a particular Kendo UI widget, the Kendo UI framework provides a [`kendo.destroy()` method](/api/framework/kendo#methods-destroy),
which can destroy multiple widgets, which are placed inside a given container.
