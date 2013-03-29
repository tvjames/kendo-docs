---
title: kendo.ui.Grid
meta_title: Configuration, methods and events of Kendo UI Grid
meta_description: Code examples for Grid UI widget configuration, learn how to use methods and which events to set once the grid UI widget detail is initialized and expanded.
slug: api-web-grid
relatedDocs: gs-web-grid-overview
tags: api,web
publish: true
---

# kendo.ui.Grid

Represents the Kendo UI Grid widget. Inherits from [Widget](/api/framework/widget).

## Configuration


### altRowTemplate `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render alternating rows. Be default renders a table row (`<tr>`) for every data source item.

> **Important:** The outermost HTML element in the template must be a table row (`<tr>`). That table row must have the `uid` data attribute set to `#= uid #`. The grid uses the `uid` data attribute to determine the data to which a table row is bound to.

> **Info:** Set the `class` of the table row to `k-alt` to get the default "alternating" look and feel.

#### Example - specify alternating row template as a function

    <div id="grid"></div>
    <script id="alt-template" type="text/x-kendo-template">
        <tr data-uid="#= uid #">
            <td colspan="2">
                <strong>#: name #</strong>
                <strong>#: age #</strong>
            </td>
        </tr>
    </script>
    <script>
    $("#grid").kendoGrid({
        dataSource: [
            { name: "Jane Doe", age: 30 },
            { name: "John Doe", age: 33 }
        ],
        altRowTemplate: kendo.template($("#alt-template").html())
    });
    </script>

#### Example - specify alternating row template as a string

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        dataSource: [ { name: "Jane Doe", age: 30 }, { name: "John Doe", age: 33 } ],
        altRowTemplate: '<tr data-uid="#= uid #"><td colspan="2"><strong>#: name #</strong><strong>#: age #</strong></td></tr>'
    });
    </script>

### autoBind `Boolean` *(default: true)*

If set to `false` the widget will not bind to the data source during initialization. In this case data binding will occur when the [change](/api/framework/datasource#events-change) event of the
data source is fired.

By default this option is set to `true` which means that the widget will bind to the data source specified in the configuration.

> **Info:** Setting the `autoBind` option to `false` is useful in scenarios where multiple widgets are bound to the same data source. Disabling automatic binding would ensure that the shared data source doesn't make more than one request to the remote service.

#### Example - disable automatic binding

    <div id="grid"></div>
    <script>
    var dataSource = new kendo.data.DataSource({
        data: [ { name: "Jane Doe" }, { name: "John Doe" }]
    });
    $("#grid").kendoGrid({
        autoBind: false,
        dataSource: dataSource
    });
    dataSource.read(); // "read()" will fire the "change" event of the dataSource and the widget will be bound
    </script>

### columns `Array`

The configuration of the grid columns. Set to array of JavaScript objects or strings. A JavaScript object is interpreted as column configuration. A string is interpreted as the field to which the column is bound to. The grid will create a column for every item of the array.

> If this setting is **not** specified the grid will create a column for every field of the data item.

#### Example - specify grid columns as array of strings

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: ["name", "age"], // two columns bound to the "name" and "age" fields
        dataSource: [ { name: "Jane", age: 30 }, { name:"John", age: 33 }]
    });
    </script>

#### Example - specify grid columns as array of objects

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [{
          field: "name",// create a column bound to the "name" field
          title: "Name" // set its title to "Name"
        }, {
          field: "age",// create a column bound to the "age" field
          title: "Age" // set its title to "Age"
        }],
        dataSource: [ { name: "Jane", age: 30 }, { name:"John", age: 33 }]
    });
    </script>

### columns.aggregates `Array`

The aggregate(s) to be calculated for this column when the grid is grouped by its [field](/api/web/grid/configuration-columns.field).
The supported aggregates are "average", "count", "max", "min" and "sum".

#### Example - set column aggregates
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "firstName", groupable: false },
          { field: "lastName" }, /* group by this column to see the footer template */
          { field: "age",
            groupable: false,
            aggregates: [ "count", "min", "max" ],
            groupFooterTemplate: "age total: #: count #, min: #: min #, max: #: max #"
          }
        ],
        groupable: true,
        dataSource: {
          data: [
            { firstName: "Jane", lastName: "Doe", age: 30 },
            { firstName: "John", lastName: "Doe", age: 33 }
          ]
        }
    });
    </script>
### columns.attributes `Object`

HTML attributes of the table cell (`<td>`) rendered for the column.

> HTML attributes which are also JavaScript keywords (such as *class*) should be quoted.

#### Example - specify column HTML attributes

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [{
          field: "name",
          title: "Name",
          attributes: {
            "class": "table-cell",
            style: "text-align: right; font-size: 14px"
          }
        }],
        dataSource: [ { name: "Jane Doe"}, { name:"John Doe"}]
    });
    </script>

The table cells would look like this: `<td class="table-cell" style="text-align: right; font-size: 14px">...</td>`.

### columns.command `String|Array`

The configuration of the column command(s). If set the column would display a button for every command. Commands can be custom or built-in ("edit" or "destroy").

The "edit" built-in command will put the current row in edit mode.

The "destroy" built-in command will delete the current row.

Custom command are supported via the `click` option.

> **Note:** The built-in "edit" and "destroy" commands work *only* if editing is enabled via the `editable` option. The "edit" command supports "inline" and "popup" editing modes.

#### Example - set command as a string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: "destroy" } // displays the built-in "destroy" command
        ],
        editable: true,
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

#### Example - set command as array of strings
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: ["edit", "destroy"] } // displays the built-in "edit" and "destroy" commands
        ],
        editable: "inline",
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

#### Example - set command as array of objects
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: [
                {
                    name: "details",    // custom command named "details"
                    click: function(e) {
                    }
                },
                { name: "destroy" } // the built-in "destroy" command
            ]
          }
        ],
        editable: true,
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

### columns.command.name `String`

The name of the command. The supported built-in commands are "edit" and "destroy". Can also be set to a custom value.

#### Example - set the command name
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: [{ name: "edit" }]
        ],
        editable: "popup",
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

### columns.command.text `String`

The text displayed by the command button. If not set the `name` option would be used as the button text instead.

#### Example - customize the text of the command
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: [{ name: "destroy", text: "Remove" }]
        ],
        editable: true,
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

### columns.command.className `String`

The CSS class applied to the command button.

#### Example - set the CSS class of the command
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { command: [{ className: "btn-destroy", name: "destroy", text: "Remove" }]
        ],
        editable: true,
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>
    <style>
    .btn-destroy {
        color: red;
    }
    </style>

### columns.command.click `Function`

The JavaScript function executed when the user clicks the command button. The single parameter of the function is a [jQuery Event](http://api.jquery.com/category/events/event-object/).
The function context (available via the `this` keyword) will be set to the grid instance.

#### Example - handle the click event of the custom command button
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
            { field: "name" },
            { command: [ {
              name: "details",
              click: function(e) {
                // e.target is the DOM element representing the button
                var tr = $(e.target).closest("tr"); // get the current table row (tr)
                // get the data bound to the current table row
                var data = this.dataItem(tr);
                alert("Details for: " + data.name);
              }
            } ]
        }],
        dataSource: [ { name: "Jane Doe" } ]
    });
    </script>

### columns.editor `Function`

Provides a way to specify a custom editing UI for the column. Use the `container` parameter to create the editing UI.

> **Important**: The editing UI should contain an element whose `name` HTML attribute is set as field to which the column is bound to.

#### Parameters

##### container `jQuery`

The jQuery object representing the container element.

##### options `Object`

##### options.field `String`

The name of the field which the column is bound to.

##### options.format `String`

The format string of the column specified via `columns.format`.

##### options.model `kendo.data.Model`

The model instance which the current row is bound to.

##### options.values `Array`

Array of values specified via `columns.values`.

#### Example - create a custom column editor using the Kendo UI AutoComplete

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
            field: "name",
            editor: function(container, options) {
             // create an input element
             var input = $("<input/>");
             // set its name to the field to which the column is bound ('name' in this case)
             input.attr("name", options.field);
             // append it to the container
             input.appendTo(container);
             // initialize a Kendo UI AutoComplete
             input.kendoAutoComplete({
               dataTextField: "name",
               dataSource: [
                 { name: "Jane Doe" },
                 { name: "John Doe" }
               ]
             });
            }
        } ],
        editable: true,
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>

### columns.encoded `Boolean` *(default: true)*

If set to `true` the column value will be HTML-encoded before it is displayed. If set to `false` the column value will be displayed as is. By default the column value is HTML-encoded.

#### Example - prevent HTML encoding

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "name",
          encoded: false
        } ],
        dataSource: [ { name: "<strong>Jane Doe</strong>" } ]
    });
    </script>


### columns.field `String`

The field to which the column is bound. The value of this field is displayed by the column during data binding.

#### Example - specify the column field

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          // create a column bound to the "name" field
          { field: "name" },
          // create a column bound to the "age" field
          { field: "age" }
        ],
        dataSource: [ { name: "Jane", age: 30 }, { name:"John", age: 33 }]
    });
    </script>

### columns.filterable `Boolean|Object` *(default: true)*

If set to `true` a filter menu will be displayed for this column when filtering is enabled for the grid. If set to `false` the filter menu will not be displayed. By default a filter menu is displayed
for all columns when filtering is enabled.

Can be set to a JavaScript object which represents the filter menu configuration.

#### Example - disable filtering

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name", filterable: false },
          { field: "age" }
        ],
        filterable: true,
        dataSource: [ { name: "Jane", age: 30 }, { name:"John", age: 33 }]
    });
    </script>

### columns.filterable.ui `String | Function`

The role data attribute of the widget used in the filter menu or a JavaScript function which initializes that widget.

#### Example - specify the filter UI as a string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
            field: "date",
            filterable: {
              ui: "datetimepicker" // use Kendo UI DateTimePicker
            }
        } ],
        filterable: true,
        dataSource: [ { date: new Date() }, { date: new Date() } ]
    });
    </script>

#### Example - initialize the filter UI

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
            field: "date",
            filterable: {
              ui: function(element) {
                element.kendoDateTimePicker(); // initialize a Kendo UI DateTimePicker
              }
            }
        } ],
        filterable: true,
        dataSource: [ { date: new Date() }, { date: new Date() } ]
    });
    </script>

### columns.footerTemplate `String|Footer`
The [template](/api/framework/kendo#methods-template) which is used to render the footer table cell for the column.

The fields which can be used in the template are:

* average - the value of the "average" aggregate (if specified)
* count - the value of the "count" aggregate (if specified)
* max - the value of the "max" aggregate (if specified)
* min - the value of the "min" aggregate (if specified)
* sum - the value of the "sum" aggregate (if specified)

#### Example - specify column footer template

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name"},
          { field: "age",
            footerTemplate: "Min: #: min # Max: #: max #"
          }
        ],
        dataSource: {
          data: [
            { name: "Jane Doe", age: 30 },
            { name: "John Doe", age: 33 }
          ],
          aggregate: [
              { field: "age", aggregate: "min" },
              { field: "age", aggregate: "max" }
          ]
        }
    });
    </script>

### columns.format `String`

The format that is applied to the value before it is displayed. Must be in the form "{0:format}" where "format" is a [standard number format](/api/framework/kendo#standard-number-formats),
[custom number format](/api/framework/kendo#custom-number-formats), [standard date format](/api/framework/kendo#standard-date-formats) or a [custom date format](/api/framework/kendo#custom-date-formats).

> The [kendo.format](/api/framework/kendo#methods-format) function is used to format the value.

#### Example - specify the column format string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "date",
          format: "{0: yyyy-MM-dd HH:mm:ss}"
        }, {
          field: "number",
          format: "{0:c}"
        }],
        filterable: true,
        dataSource: [ { date: new Date(), number: 3.1415 } ]
    });
    </script>

### columns.groupHeaderTemplate `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render the group header when the grid is grouped by the column field. By default the name of the field
and the current group value is displayed.

The fields which can be used in the template are:

* value - the current group value
* average - the value of the "average" aggregate (if specified)
* count - the value of the "count" aggregate (if specified)
* max - the value of the "max" aggregate (if specified)
* min - the value of the "min" aggregate (if specified)
* sum - the value of the "sum" aggregate (if specified)

#### Example - set the group header template

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name"},
          { field: "age",
            groupHeaderTemplate: "Age: #= value # total: #= count #"
          }
        ],
        dataSource: {
          data: [
            { name: "Jane Doe", age: 30 },
            { name: "John Doe", age: 30 }
          ],
          group: { field: "age", aggregates: [ { field: "age", aggregate: "count" }] }
        }
    });

### columns.groupFooterTemplate `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render the group footer when the grid is grouped by the column field. By default the group footer is not displayed.

The fields which can be used in the template are:

* average - the value of the "average" aggregate (if specified)
* count - the value of the "count" aggregate (if specified)
* max - the value of the "max" aggregate (if specified)
* min - the value of the "min" aggregate (if specified)
* sum - the value of the "sum" aggregate (if specified)

#### Example - set the group header template

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name"},
          { field: "age",
            groupFooterTemplate: "Total: #= count #"
          }
        ],
        dataSource: {
          data: [
            { name: "Jane Doe", age: 30 },
            { name: "John Doe", age: 30 }
          ],
          group: { field: "age", aggregates: [ { field: "age", aggregate: "count" }] }
        }
    });

### columns.headerAttributes `Object`

HTML attributes of the column header. The grid renders a table header cell (`<th>`) for every column. The `headerAttributes` option can be used to set the HTML attributes of that `th`.

> HTML attributes which are also JavaScript keywords (such as *class*) should be quoted.

#### Example - set the column header HTML attributes

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [{
            field: "name",
            headerAttributes: {
              "class": "table-header-cell",
              style: "text-align: right; font-size: 14px"
            }
        }],
        dataSource: [ { name: "Jane Doe"}, { name:"John Doe"}]
    });
    </script>

The table header cell would look like this: `<th class="table-header-cell" style="text-align: right; font-size: 14px">name</th>`.

### columns.headerTemplate `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render the column header content. By default the value of the [title](#configuration-columns.title) column option
is displayed in the column header cell.

> **Important:** If sorting is enabled, the column header content will be wrapped in a `<a>` element. As a result the template **must** contain only inline elements.

#### Example - column header template as a string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
            field: "name",
            headerTemplate: '<input type="checkbox" id="check-all" /><label for="check-all">Check All</label>'
        }],
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>

### columns.hidden `Boolean` *(default: false)*

If set to `true` the column will not be displayed in the grid. By default all columns are displayed in the grid.

#### Example - hide columns
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
            { hidden: true, field: "id" },
            { field: "name" }
        ],
        dataSource: [ { id: 1, name: "Jane Doe" }, { id: 2, name: "John Doe" } ]
    });
    </script>

### columns.sortable `Boolean` *(default: true)*

If set to `true` the user can click the column header and sort the grid by the column [field](#configuration-columns.field) (when sorting is enabled for the grid). If set to `false` sorting will
be disabled for this column. By default all columns are sortable.

#### Example - disable sorting
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
            { sortable: false, field: "id" },
            { field: "name" }
        ],
        sortable: true,
        dataSource: [ { id: 1, name: "Jane Doe" }, { id: 2, name: "John Doe" } ]
    });
    </script>

### columns.template `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render the column content. The Kendo UI Grid widget renders table rows (`<tr>`) which represent the data source items.
Each table row consists of table cells (`<td>`) which represent the grid columns. By default the HTML-encoded value of the [field](#configuration-columns.field) is displayed in the column.

Use the `template` to customize the way the column displays its value.

#### Example - set the template as a string (wrap the column value in HTML)

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "name",
          template: "<strong>#: name # </strong>"
        }],
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>

#### Example - set the template as a function returned by kendo.template

    <div id="grid"></div>
    <script id="name-template" type="text/x-kendo-template">
      <strong>#: name #</strong>
    </script>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "name",
          template: kendo.template($("#name-template").html())
        }],
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>

#### Example - set the template as a function which returns a string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "name",
          template: function(dataItem) {
              return "<strong>" + kendo.htmlEncode(dataItem.name) + "</strong>";
          }
        }],
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>


### columns.title `String`

The text that is displayed in the column header cell. If not set the [field](#configuration-columns.field) will be used.

#### Example - set the title of the column

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [ {
          field: "name",
          title: "Name"
        }],
        dataSource: [ { name: "Jane Doe" }, { name: "John Doe" } ]
    });
    </script>

### columns.width `String|Number`

The width of the column. Numeric values are treated as pixels.

> **Important:** If the total sum of the column widths exceeds the width of the grid a horizontal scrollbar will appear (if scrolling is enabled). If that sum is less than the width of the grid
one of the columns would stretch out to occupy the remaining space. Thus it is a good idea to have a column without specified width.

#### Example - set the column width as a string
     <div id="grid"></div>
     <script>
     $("#grid").kendoGrid({
         columns: [
           { field: "name", width: "200px" },
           { field: "age" }
         ],
         dataSource: [
             { name: "Jane Doe", age: 30 },
             { name: "John Doe", age: 33 }
         ]
     });
     </script>

#### Example - set the column width as a number
     <div id="grid"></div>
     <script>
     $("#grid").kendoGrid({
         columns: [
           { field: "name", width: 200 },
           { field: "age" }
         ],
         dataSource: [
             { name: "Jane Doe", age: 30 },
             { name: "John Doe", age: 33 }
         ]
     });
     </script>

### columns.values `Array`

An array of values that will be displayed instead of the bound value. Each item in the array must have a `text` and `value` fields.

Useful to display user-friendly text instead of database values.

#### Example - specify column values

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "productName" },
          { field: "category", values: [
            { text: "Beverages", value: 1 },
            { text: "Food", value: 2 }
          ] }
        ],
        dataSource: [
            { productName: "Tea", category: 1 },
            { productName: "Ham", category: 2 }
        ]
    });
    </script>

This example displays "Beverages" and "Food" in the "category" column instead of "1" and "2".

### columns.menu `Boolean`

If set to `true` the column will be visible in the grid column menu. By default the column menu includes all data-bound columns (ones that have their `field` set).

#### Example - hide a column from the column menu
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "id", menu: false },
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: true,
        dataSource: [
          { id: 1, name: "Jane Doe", age: 30 },
          { id: 2, name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu `Boolean|Object` *(default: false)*

If set to `true` the grid will display the column menu when the user clicks the chevron icon in the column headers. The column menu allows the user to show and hide columns, filter and sort (if filtering and sorting are enabled).
By default the column menu is not enabled.

Can be set to a JavaScript object which represents the column menu configuration.

#### Example - enable the column menu

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.columns `Boolean` *(default: true)*

If set to `true` the column menu would allow the user to select (show and hide) grid columns. By default the column menu allows column selection.

#### Example - disable column selection

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          columns: false
        },
        sortable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.filterable `Boolean` *(default: true)*

If set to `true` the column menu would allow the user to filter the grid. By default the column menu allows the user to filter if grid filtering is enabled.

#### Example - disable column menu filtering

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          filterable: false
        },
        filterable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.sortable `Boolean` *(default: true)*

If set to `true` the column menu would allow the user to sort the grid by the column field. By default the column menu allows the user to sort if grid sorting is enabled.

> **Note:** If this option is set to `false` the user could still sort by clicking the column header cell.

#### Example - disable column menu sorting

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          sortable: false
        },
        sortable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.messages `Object`

The text messages displayed in the column menu. Use it to customize or localize the column menu messages.

#### Example - customize column menu messages

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          messages: {
            columns: "Choose columns",
            filter: "Apply filter",
            sortAscending: "Sort (asc)",
            sortDescending: "Sort (desc)"
          }
        },
        sortable: true,
        filterable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.messages.columns `String` *(default: "Columns")*

The text message displayed for the column selection menu item.

#### Example - set the column selection message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          messages: {
            columns: "Choose columns"
          }
        },
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.messages.filter `String` *(default: "Filter")*

The text message displayed for the filter menu item.

#### Example - set the filter message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          messages: {
            filter: "Apply filter",
          }
        },
        filterable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.messages.sortAscending `String` *(default: "Sort Ascending")*

The text message displayed for the menu item which performs ascending sort.

#### Example - set the sort ascending message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          messages: {
            sortAscending: "Sort (asc)",
          }
        },
        sortable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### columnMenu.messages.sortDescending `String`

The text message displayed for the menu item which performs descending sort.

#### Example - set the sort descending message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        columnMenu: {
          messages: {
            sortDescending: "Sort (desc)",
          }
        },
        sortable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### dataSource `Object|Array|kendo.data.DataSource`

The data source of the widget which is used display table rows. Can be a JavaScript object which represents a valid data source configuration, a JavaScript array or an existing [kendo.data.DataSource](/api/framework/datasource)
instance.

If the `dataSource` option is set to a JavaScript object or array the widget will initialize a new [kendo.data.DataSource](/api/framework/datasource) instance using that value as data source configuration.

If the `dataSource` option is an existing [kendo.data.DataSource](/api/framework/datasource) instance the widget will use that instance and will **not** initialize a new one.

#### Example - set dataSource as a JavaScript object

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: {
          data: [
            { name: "Jane Doe", age: 30 },
            { name: "John Doe", age: 33 }
          ]
        }
    });
    </script>

#### Example - set dataSource as a JavaScript array

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

#### Example - set dataSource as an existing kendo.data.DataSource instance

    <div id="grid"></div>
    <script>
    var dataSource = new kendo.data.DataSource({
        transport: {
            read: {
                url: "/remote-service-url",
                type: "POST"
            }
        }
    });
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: dataSource
    });
    </script>

### detailTemplate `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render the detail rows.

See the [Detail Template](http://demos.kendoui.com/web/grid/detailtemplate.html) example.

#### Example - specify detail template as a function
    <script id="detail-template">
      <div>
        Name: #: name #
      </div>
      <div>
        Age: #: age #
      </div>
    </script>
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ],
        detailTemplate: kendo.template($("#detail-template").html())
    });
    </script>

#### Example - specify detail template as a string
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ],
        detailTemplate: "<div>Name: #: name #</div><div>Age: #: age #</div>"
    });
    </script>

### editable `Boolean|Object` *(default: false)*

If set to `true` the user would be able to edit the data to which the grid is bound to. By default editing is disabled.

Can be set to a string ("inline", "incell" or "popup") to specify the editing mode. The default editing mode is "incell".

Can be set to a JavaScript object which represents the editing configuration.

> **Important:** The "inline" and "popup" editing modes are triggered by the "edit" column command. Thus it is required to have a column with an "edit" command.

#### Example - enable editing
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ],
        editable: true
    });
    </script>

#### Example - enable popup editing
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" },
          { command: "edit" }
        ],
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ],
        editable: "popup"
    });
    </script>

### editable.confirmation `Boolean | String` *(default: true)*

If set to `true` the grid will display a confirmation dialog when the user clicks the "destroy" command button.

Can be set to a string which will be used as the confirmation text.

#### Example - disable delete confirmation
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
       columns: [
         { field: "name" },
         { field: "age" },
         { command: "destroy" }
       ],
       dataSource: [
         { name: "Jane Doe", age: 30 },
         { name: "John Doe", age: 33 }
       ],
       editable: {
         confirmation: false
       }
    });
    </script>

#### Example - set delete confirmation text
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
       columns: [
         { field: "name" },
         { field: "age" },
         { command: "destroy" }
       ],
       dataSource: [
         { name: "Jane Doe", age: 30 },
         { name: "John Doe", age: 33 }
       ],
       editable: {
         confirmation: "Are you sure that you want to delete this record?"
       }
    });
    </script>

### editable.createAt `String` *(default: "top")*

The positon at which new data items are inserted in the grid. Must be set to either "top" or "bottom". By default new data items are inserted at the top.

#### Example - insert new data items at the bottom

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      editable: {
        createAt: "bottom"
      },
      toolbar: ["create"]
    });
    </script>

### editable.destroy `Boolean` *(default: true)*

If set to `true` the user can delete data items from the grid by clicking the "destroy" command button. Deleting is enabled by default.

#### Example - disable deleting
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" },
        { command: "destroy" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      editable: {
        destroy: false
      },
      toolbar: ["create"]
    });
    </script>

### editable.mode `String` *(default: "incell")

The editing mode to use. The supported editing modes are "incell", "inline" and "popup".

> **Important:** The "inline" and "popup" editing modes are triggered by the "edit" column command. Thus it is required to have a column with an "edit" command.

#### Example - specify inline editing mode

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" },
        { command: "edit" }
      ],
      dataSource: {
        data: [
          { id: 1, name: "Jane Doe", age: 30 },
          { id: 2, name: "John Doe", age: 33 }
        ],
        schema: {
          model: { id: "id" }
        }
      },
      editable: {
        mode: "inline"
      }
    });
    </script>

### editable.template `String|Function`

The [template](/api/framework/kendo#methods-template) which is used to render popup editor.

The template should contain elements whose `name` HTML attributes are set as the editable fields. This is how the grid will know
which field to update. The other option is to use [MVVM](/getting-started/framework/mvvm/overview) bindings in order to bind HTML elements to data item fields.

> **Note:** Use the `role` data attribute to initialize Kendo UI widgets in the template. Check [data attribute initialization](/getting-started/data-attribute-initialization) for more info.

#### Example - customize the popup editor

    <script id="popup-editor" type="text/x-kendo-template">
      <h3>Edit Person</h3>
      <p>
        <label>Name:<input name="name" /></label>
      </p>
      <p>
        <label>Age: <input data-role="numerictextbox" name="age" /></label>
      </p>
    </script>
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" },
        { command: "edit" }
      ],
      dataSource: {
        data: [
          { id: 1, name: "Jane Doe", age: 30 },
          { id: 2, name: "John Doe", age: 33 }
        ],
        schema: {
          model: { id: "id" }
        }
      },
      editable: {
        mode: "popup",
        template: kendo.template($("#popup-editor").html())
      }
    });
    </script>

#### Example - using MVVM in the popup editor template

    <script id="popup-editor" type="text/x-kendo-template">
      <h3>Edit Person</h3>
      <p>
        <label>Name:<input data-bind="value: name" /></label>
      </p>
      <p>
        <label>Age:<input data-role="numerictextbox" data-bind="value:age" /></label>
      </p>
    </script>
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" },
        { command: "edit" }
      ],
      dataSource: {
        data: [
          { id: 1, name: "Jane Doe", age: 30 },
          { id: 2, name: "John Doe", age: 33 }
        ],
        schema: {
          model: { id: "id" }
        }
      },
      editable: {
        mode: "popup",
        template: kendo.template($("#popup-editor").html())
      }
    });
    </script>

### editable.update `Boolean` *(default: true)*

If set to `true` the user can edit data items when editing is enabled.

#### Example - enable only deleting

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" },
        { command: "destroy" }
      ],
      dataSource: [
          { id: 1, name: "Jane Doe", age: 30 },
          { id: 2, name: "John Doe", age: 33 }
      ],
      editable: {
        mode: "incell",
        update: false
      }
    });
    </script>

### filterable `Boolean | Object` *(default: false)*

If set to `true` the user can filter the data source using the grid filter menu. Filtering is disabled by default.

Can be set to a JavaScript object which represents the column menu configuration.

#### Example - enable the filtering

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        filterable: true,
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### filterable.extra `Boolean` *(default: true)*

If set to `true` the filter menu allows the user to input a second criteria.

#### Example - disable the extra filtering criteria

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
        columns: [
          { field: "name" },
          { field: "age" }
        ],
        filterable: {
          extra: false
        },
        dataSource: [
          { name: "Jane Doe", age: 30 },
          { name: "John Doe", age: 33 }
        ]
    });
    </script>

### filterable.messages `Object`

The text messages displayed in the filter menu. Use it to customize or localize the filter menu messages.

#### Example - customize filter menu messages
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          and: "and",
          or: "or",
          filter: "Apply filter",
          clear: "Clear filter"
        }
      }
    });
    </script>

### filterable.messages.and `String` *(default: "And")*

The text of the option which represents the "and" logical operation.

#### Example - set the "and" message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          and: "and"
        }
      }
    });
    </script>

### filterable.messages.clear `String` *(default: "Clear")*

The text of the button which clears the filter.

#### Example - set the "clear" message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          clear: "Clear filter"
        }
      }
    });
    </script>

### filterable.messages.filter `String` *(default: "Filter")*

The text of the button which applies the filter.

#### Example - set the "filter" message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          filter: "Apply filter"
        }
      }
    });
    </script>

### filterable.messages.info `String` *(default: "Show items with value that:")*

The text of the information message on the top of the filter menu.

#### Example - set the "info" message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          info: "Filter by:"
        }
      }
    });
    </script>

### filterable.messages.isFalse `String` *(default: "is false")*

The text of the radio button for `false` values. Displayed when filtering `Boolean` fields.

#### Example - set the "isFalse" message
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "active" }
      ],
      dataSource: {
        data: [
          { active: true },
          { active: false }
        ],
        schema: {
          model: {
            fields: {
              active: { type: "boolean" }
            }
          }
        }
      },
      filterable: {
        messages: {
          isFalse: "False"
        }
      }
    });
    </script>

### filterable.messages.isTrue `String` *(default: "is true")*

The text of the radio button for `true` values. Displayed when filtering `Boolean` fields.

#### Example - set the "isTrue" message
    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "active" }
      ],
      dataSource: {
        data: [
          { active: true },
          { active: false }
        ],
        schema: {
          model: {
            fields: {
              active: { type: "boolean" }
            }
          }
        }
      },
      filterable: {
        messages: {
          isTrue: "True"
        }
      }
    });
    </script>

### filterable.messages.or `String`

The text of the option which represents the "or" logical operation.

#### Example - set the "or" message

    <div id="grid"></div>
    <script>
    $("#grid").kendoGrid({
      columns: [
        { field: "name" },
        { field: "age" }
      ],
      dataSource: [
        { name: "Jane Doe", age: 30 },
        { name: "John Doe", age: 33 }
      ],
      filterable: {
        messages: {
          or: "or"
        }
      }
    });
    </script>

### filterable.messages.selectValue `String`

 Set the text of the option label for foreign key drop down list.

### filterable.operators `Object`

 Enable/Disable and set the text of filter operators.

### filterable.operators.string `Object`

 Enable/Disable and set the text of filter operators for fields of type string.

> **Important:** Omitting an operator will exclude it from the list of available operators in the filter menu.

### filterable.operators.string.eq `String`

 Enable/Disable and set the text of the "Is equal to" filter option for columns with string values.

### filterable.operators.string.neq `String`

 Enable/Disable and set the text of the "Is not equal to" filter option for columns with string values.

### filterable.operators.string.startswith `String`

 Enable/Disable and set the text of the "Starts with" filter option for columns with string values.

### filterable.operators.string.contains `String`

 Enable/Disable and set the text of the "Contains" filter option for columns with string values.

### filterable.operators.string.doesnotcontain `String`

 Enable/Disable and set the text of the "Does not contain" filter option for columns with string values.

### filterable.operators.string.endswith `String`

 Enable/Disable and set the text of the "Ends with" filter option for columns with string values.

### filterable.operators.number `Object`

 Enable/Disable and set the text of filter operators for fields of type number.

> **Important:** Omitting an operator will exclude it from the list of available operators in the filter menu.

### filterable.operators.number.eq `String`

 Enable/Disable and set the text of the "Is equal to" filter option for columns with number values.

### filterable.operators.number.neq `String`

 Enable/Disable and set the text of the "Is not equal to" filter option for columns with number values.

### filterable.operators.number.gte `String`

 Enable/Disable and set the text of the "Is greater than or equal to" filter option for columns with number values.

### filterable.operators.number.gt `String`

 Enable/Disable and set the text of the "Is greater than" filter option for columns with number values.

### filterable.operators.number.lte `String`

 Enable/Disable and set the text of the "Is less than or equal to" filter option for columns with number values.

### filterable.operators.number.lt `String`

 Enable/Disable and set the text of the "Is less than" filter option for columns with number values.

### filterable.operators.date `Object`

 Enable/Disable and set the text of filter operators for fields of type date.

> **Important:** Omitting an operator will exclude it from the list of available operators in the filter menu.

### filterable.operators.date.eq `String`

 Enable/Disable and set the text of the "Is equal to" filter option for columns with date values.

### filterable.operators.date.neq `String`

 Enable/Disable and set the text of the "Is not equal to" filter option for columns with date values.

### filterable.operators.date.gte `String`

 Enable/Disable and set the text of the "Is after or equal to" filter option for columns with date values.

### filterable.operators.date.gt `String`

 Enable/Disable and set the text of the "Is after" filter option for columns with date values.

### filterable.operators.date.lte `String`

 Enable/Disable and set the text of the "Is before or equal to" filter option for columns with date values.

### filterable.operators.date.lt `String`

 Enable/Disable and set the text of the "Is before" filter option for columns with date values.

### filterable.operators.enums `Object`

 Enable/Disable and set the text of filter operators for foreign key columns.

> **Important:** Omitting an operator will exclude it from the list of available operators in the filter menu.

### filterable.operators.enums.eq `String`

 Enable/Disable and set the text of the "Is equal to" filter option for foreign key columns.

### filterable.operators.enums.neq `String`

 Enable/Disable and set the text of the "Is not equal to" filter option for foreign key columns.

### reorderable `Boolean`*(default:false)*

 Indicates whether column reordering is enabled/disable.

### resizable `Boolean`*(default:false)*

 Indicates whether column resizing is enabled/disable.

### groupable `Boolean | Object`*(default: false)*

 Indicates whether grouping is enabled/disabled.

#### Example

    $("#grid").kendoGrid({
         filterable: true
    });

#### Example

    $("#grid").kendoGrid({
         dataSource: {
             data: createRandomData(50),
             pageSize: 10
         },
         columns: [
             {
                 field: "Name"
             },
             {
                 field: "BirthDate",
                 title: "Birth Date",
                 template: '#= kendo.toString(BirthDate,"dd MMMM yyyy") #'
            }
         ],
         groupable: true
    });

### groupable.messages `Object`

 Sets the messages displayed during grouping.

### groupable.messages.empty `String`

 Sets the text of the empty grouping area message

#### Example

    $("#grid").kendoGrid({
        groupable: {
            messages: {
                empty: "Custom message text"
            }
        }
    });

### height `Number|String`

 Sets the height of the grid.

### navigatable `Boolean`*(default: false)*

 Indicates whether keyboard navigation is enabled/disabled.

#### Example

    $("#grid").kendoGrid({
         dataSource: {
             data: createRandomData(50),
             pageSize: 10
         },
         columns: [
             {
                 field: "Name"
             },
             {
                 field: "BirthDate",
                 title: "Birth Date",
                 template: '#= kendo.toString(BirthDate,"dd MMMM yyyy") #'
            }
         ],
         navigatable: true
     });

### pageable `Boolean | Object`*(default: false)*

 Indicates whether paging is enabled/disabled.

#### Example

    $("#grid").kendoGrid({
         dataSource: {
             data: createRandomData(50),
             pageSize: 10
         },
         columns: [
             {
                 field: "Name"
             },
             {
                 field: "BirthDate",
                 title: "Birth Date",
                 template: '#= kendo.toString(BirthDate,"dd MMMM yyyy") #'
            }
         ],
         pageable: true
     });

### pageable.pageSize `Number`

  Defines the number of records which will be displyed.

### pageable.previousNext `Boolean`*(default: true)*

  Defines if buttons for navigating to the first, last, previous and next pages will be shown.

### pageable.numeric `Boolean`*(default: true)*

  Defines if numeric portion of the pager will be shown.

### pageable.buttonCount `Number`*(default: 10)*

  Defines the number of buttons displayed in the numeric pager.

### pageable.input `Boolean`*(default: false)*

  Defines if an input element which allows the user to navigate to given page will be displayed.

### pageable.pageSizes `Boolean | Array`*(default: false | [5,10,20])*

  Displayes a list with predefined page sizes. An array of values to be displayed can be provided.

### pageable.refresh `Boolean`*(default: false)*

  Defines if a refresh button will be displayed.

### pageable.info `Boolean`*(default: true)*

  Defines if a label showing current paging information will be displayed.

### pageable.messages `Object`

  Defines texts shown within the pager.

### pageable.messages.display `String`*(default: "{0} - {1} of {2} items")*,

  Defines the info text.

### pageable.messages.empty `String`*(default: "No items to display")*,

  Defines the info text shown when there are no records to be displayed.

### pageable.messages.page `String`*(default: "Page")*,

  Defines the first part of the text of the input option.

### pageable.messages.of `String`*(default: "of {0}")*,

  Defines the last part of the text of the input option.

### pageable.messages.itemsPerPage `String`*(default: "items per page")*,

  Defines the text displayed after the select element of the pageSizes mode.

### pageable.messages.first `String`*(default: "Go to the first page")*,

  Defines the text of the first page button tooltip.

### pageable.messages.previous `String`*(default: "Go to the previous page")*,

  Defines the text of the previous page button tooltip.

### pageable.messages.next `String`*(default: "Go to the next page")*,

  Defines the text of the next page button tooltip.

### pageable.messages.last `String`*(default: "Go to the last page")*,

  Defines the text of the last page button tooltip.

### pageable.messages.refresh `String`*(default: "Refresh")*,

  Defines the text of the refresh button tooltip.

### rowTemplate `Function`

Template to be used for rendering the rows in the grid.

> **Important:** The outermost HTML element in the template must be a table row (`<tr>`). That table row must have the `uid` data attribute set to `#= uid #`. The grid uses the `uid` data attribute to determine the data to which a table row is bound to.

#### Example

    //template
     <script id="rowTemplate" type="text/x-kendo-tmpl">
         <tr data-uid="${ uid }">
             <td>
                 <img src="${ BoxArt.SmallUrl }" alt="${ Name }" />
             </td>
             <td>
                 ${ Name }
             </td>
             <td>
                 ${ AverageRating }
             </td>
         </tr>
     </script>

     //grid intialization
     <script>PO details informaiton
         $("#grid").kendoGrid({
             dataSource: dataSource,
             rowTemplate: kendo.template($("#rowTemplate").html()),
             height: 200
         });
     </script>

### scrollable `Boolean | Object`*(default: true)*

 Enable/disable grid scrolling.

### scrollable.virtual `Boolean` *(default: false)*

 Enable/disable virtual scrolling. When enabled the grid will display only a single page of data (configured via `dataSource.pageSize`).

#### Example

    $("#grid").kendoGrid({
         scrollable: {
             virtual: true //false
         }
     });

### selectable `String`*(default: undefined)*

 Indicates whether selection is enabled/disabled. Possible values:


#### *"row"*

Single row selection.

#### *"cell"*

Single cell selection.

#### *"multiple, row"*

Multiple row selection.

#### *"multiple, cell"*

Multiple cell selection.

### sortable `Boolean|Object`

Defines whether grid columns are sortable.

#### Example

    $("#grid").kendoGrid({
        sortable: true
    });
    //
    // or
    //
    $("#grid").kendoGrid({
        sortable: {
            mode: "multiple", // enables multi-column sorting
            allowUnsort: true
    });

### sortable.allowUnsort `Boolean`*(default: false)*

  Defines whether column can have unsorted state.

### sortable.mode `String`*(default: "single")*

 Defines sorting mode. Possible values:


#### *"single"*

Defines that only once column can be sorted at a time.

#### *"multiple"*

Defines that multiple columns can be sorted at a time.

### toolbar `Array`

This is a list of commands for which the corresponding buttons will be rendered.
The supported built-in commands are: "create", "cancel", "save", "destroy".
Or template to be used for rendering the toolbar content.

#### Example

    $("#grid").kendoGrid({
         dataSource: {
             data: createRandomData(50),
             pageSize: 10
         },
         columns: [
             {
                 field: "Name"
             },
             {
                 field: "BirthDate",
                 title: "Birth Date",
                 template: '#= kendo.toString(BirthDate,"dd MMMM yyyy") #'
            }
         ]
         toolbar: [
             "create",
             { name: "save", text: "Save This Record" },
             { name: "cancel", template: '<img src="icons/cancel.png' rel='cancel' />" }
         ],
         editable: true
      });

### toolbar.name `String`

The name of the command. One of the predefined or a custom.

### toolbar.template `String`

The template for the command button.

### toolbar.text `String`

The text of the command that will be set on the button.

## Methods

### addRow

Adds a new empty table row in edit mode. The addRow method triggers edit event.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    grid.addRow();

### cancelChanges

Cancels any pending changes during. Deleted rows are restored. Inserted rows are removed. Updated rows are restored to their original values.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    grid.cancelChanges();

### cancelRow

Switch the current edited row into display mode and revert changes made to the data

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    grid.cancelRow();

### cellIndex

Returns the index of the cell in the grid item skipping group and hierarchy cells.

#### Example

     // get a reference to the grid widget
     var grid = $("#grid").data("kendoGrid");
     // get the index of the currently edited cell
     grid.cellIndex(grid.tbody.find(">tr td.k-edit-cell"));

#### Parameters

##### cell `Selector | DOM Element`

Target cell.

### clearSelection

Clears currently selected items.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // clear the selection of items in the grid
    grid.clearSelection();

### closeCell

Closes current edited cell.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // close the cell being edited
    grid.closeCell();

### collapseGroup

Collapses specified group.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // collapses first group item
    grid.collapseGroup(grid.tbody.find(">tr.k-grouping-row:first"));

#### Parameters

##### group `Selector | DOM Element`

Target group item to collapse.

### collapseRow

Collapses specified master row.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // collapses first master row
    grid.collapseRow(grid.tbody.find(">tr.k-master-row:first"));

#### Parameters

##### row `Selector | DOM Element`

Target master row to collapse.

### dataItem

Returns the data item to which a given table row (tr DOM element) is bound.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // returns the data item for first row
    grid.dataItem(grid.tbody.find(">tr:first"));

#### Parameters

##### tr `Selector | DOM Element`

Target row.

### destroy
Prepares the **Grid** for safe removal from DOM. Detaches all event handlers and removes jQuery.data attributes to avoid memory leaks. Calls destroy method of any child Kendo widgets.

> **Important:** This method does not remove the Grid element from DOM.

#### Example

    var grid = $("#grid").data("kendoGrid");

    // detach events
    grid.destroy();

### editCell

Puts the specified table cell in edit mode. It requires a jQuery object representing the cell. The editCell method triggers edit event.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // edit first table cell
    grid.editCell(grid.tbody.find(">tr>td:first"));

#### Parameters

##### cell `String|jQuery|Element`

Cell to be edited.

### editRow

Switches the specified row from the grid into edit mode. The editRow method triggers edit event.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // edit first table row
    grid.editRow(grid.tbody.find(">tr:first"));

#### Parameters

##### row `Selector | DOM Element`

Row to be edited.

### expandGroup

Expands specified group.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // expands first group item
    grid.expandGroup(grid.tbody.find(">tr.k-grouping-row:first"));

#### Parameters

##### group `Selector | DOM Element`

Target group item to expand.

### expandRow

Expands specified master row.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // expands first master row
    grid.expandRow(grid.tbody.find(">tr.k-master-row:first"));

#### Parameters

##### row `Selector | DOM Element`

Target master row to expand.

### hideColumn

Hides the specified column.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");

    // hide the "id" column
    grid.hideColumn("id");

    // hide the 3rd column
    grid.hideColumn(2);

#### Parameters

##### column `Number | String`

The index or the bound field of the column to hide.

### refresh

Redraws the grid using the current data of the DataSource.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // refreshes the grid
    grid.refresh();


### removeRow

Removes the specified row from the grid. The removeRow method triggers remove event.
(Note: In inline or popup edit modes the changes will be automatically synced)

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // remove first table row
    grid.removeRow(grid.tbody.find(">tr:first"));

#### Parameters

##### row `Selector | DOM Element`

Row to be removed.

### reorderColumn

Changes the position of the specified column.

#### Example
    //get reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    //move first column (index is zero based)
    grid.reorderColumn(2, grid.columns[0]);

#### Parameters

##### destIndex `Number`

##### column `Object`

### saveChanges

Calls DataSource sync to submit any pending changes if state is valid. The saveChanges method triggers saveChanges event.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    grid.saveChanges();

### saveRow

Switch the current edited row into dislay mode and save changes made to the data
(Note: the changes will be automatically synced)

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    grid.saveRow();

### select

Gets/Sets the selected rows/cells.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");
    // selects first grid item
    grid.select(grid.tbody.find(">tr:first"));

#### Returns
`jQuery` the selected rows or cells.

#### Parameters

##### items `Selector | Array`

Items to select.

### setDataSource

Sets the dataSource of an existing Grid and rebinds it.

#### Parameters

##### dataSource `kendo.data.DataSource`

#### Example

    var dataSource = new kendo.data.DataSource({
        //dataSource configuration
    });

    $("#grid").data("kendoGrid").setDataSource(dataSource);

### showColumn

Shows the specified column.

#### Example

    // get a reference to the grid widget
    var grid = $("#grid").data("kendoGrid");

    // show the "id" column
    grid.showColumn("id");

    // show the 3rd column
    grid.showColumn(2);

#### Parameters

##### column `Number | String`

The index or the bound field of the column to show.

## Events

### cancel

Raised when the user clicks the "cancel" button (in inline or popup editing mode) or closes the popup window (popup editing mode).

#### Example

     $("#grid").kendoGrid({
         cancel: function() {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the cancel event
     grid.bind("cancel", function() {
         // handle event
     });

#### Event Data

##### e.container `jQuery`

The jQuery object that represents the edit form container element.

##### e.model `kendo.data.Model`

The model to which the current grid row is bound to.

##### e.preventDefault `Function`

If invoked prevents the cancel action. The row remains in edit mode.

### change

Fires when the grid selection has changed.

#### Example

     $("#grid").kendoGrid({
         change: function() {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the change event
     grid.bind("change", function() {
         // handle event
     });

#### Example - getting the selected data item(s) when using row selection

     $("#grid").kendoGrid({
         selectable: "multiple",
         change: function() {
            var selectedRows = this.select();

            var selectedDataItems = [];

            for (var i = 0; i < selectedRows.length; i++) {
                var dataItem = this.dataItem(selectedRows[i]);

                selectedDataItems.push(dataItem);
            }

            // selectedDataItems now contains all selected data records
         }
     });

#### Example - getting the selected data item(s) when using cell selection

     $("#grid").kendoGrid({
         selectable: "multiple cell",
         change: function() {
            var selectedCells = this.select();

            var selectedDataItems = [];

            for (var i = 0; i < selectedCells.length; i++) {
                var dataItem = this.dataItem(selectedCells[i].parentNode);

                // Check if the dataItem is not already added. Uses http://api.jquery.com/jQuery.inArray
                if ($.inArray(dataItem, selectedDataItems) < 0) {
                    selectedDataItems.push(dataItem);
                }
            }

            // selectedDataItems now contains all selected data records
         }
     });

### columnHide

Fires when the user hides a column.

#### Example

     $("#grid").kendoGrid({
         columnHide: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the columnHide event
     grid.bind("columnHide", function(e) {
         // handle event
     });

#### Event Data

##### e.column `Object`

The column object with its properties, e.g. `encoded`, `field` and `title`.

### columnReorder

Fires when the user changes the order of a column.

#### Example

     $("#grid").kendoGrid({
         columnReorder: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the columnReorder event
     grid.bind("columnReorder", function(e) {
         // handle event
     });

#### Event Data

##### e.column `Object`

The column object with its properties, e.g. `encoded`, `field` and `title`.

##### e.newIndex `Number`

The new column index.

##### e.oldIndex `Number`

The previous column index.

### columnResize

Fires when the user resizes a column.

#### Example

     $("#grid").kendoGrid({
         columnResize: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the columnResize event
     grid.bind("columnResize", function(e) {
         // handle event
     });

#### Event Data

##### e.column `Object`

The column object with its properties, e.g. `encoded`, `field` and `title`.

##### e.oldWidth `Number`

The previous column width.

##### e.newWidth `Number`

The new column width.

### columnShow

Fires when a column is shown.

#### Example

     $("#grid").kendoGrid({
         columnShow: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the columnShow event
     grid.bind("columnShow", function(e) {
         // handle event
     });

#### Event Data

##### e.column `Object`

The column object with its properties, e.g. `encoded`, `field` and `title`.

### dataBound

Fires when the grid has received data from the data source.

#### Example

     $("#grid").kendoGrid({
         dataBound: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the dataBound event
     grid.bind("dataBound", function(e) {
         // handle event
     });

### dataBinding

Fires when the grid is about to be rendered.

#### Example

     $("#grid").kendoGrid({
         dataBinding: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the dataBound event
     grid.bind("dataBinding", function(e) {
         // handle event
     });


### detailCollapse

Fires when the grid detail row is collapsed.

#### Example

     $("#grid").kendoGrid({
         detailCollapse: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the detailCollapse event
     grid.bind("detailCollapse", function(e) {
         // handle event
     });

#### Event Data

##### e.masterRow `jQuery`

The jQuery element representing master row.

##### e.detailRow `jQuery`

The jQuery element representing detail row.

### detailExpand

Fires when the grid detail row is expanded.

#### Example

     $("#grid").kendoGrid({
         detailExpand: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the detailExpand event
     grid.bind("detailExpand", function(e) {
         // handle event
     });

#### Event Data

##### e.masterRow `jQuery`

The jQuery element representing master row.

##### e.detailRow `jQuery`

The jQuery element representing detail row.

### detailInit

Fires when the grid detail is initialized.

#### Example

     $("#grid").kendoGrid({
         detailInit: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the detailInit event
     grid.bind("detailInit", function(e) {
         // handle event
     });

#### Event Data

##### e.masterRow `jQuery`

The jQuery element representing master row.

##### e.detailRow `jQuery`

The jQuery element representing detail row.

##### e.detailCell `jQuery`

The jQuery element representing detail cell.

##### e.data `kendo.data.ObservableObject`

The data for the master row.

### edit

Fires when the grid enters edit mode.

#### Example

     $("#grid").kendoGrid({
         edit: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the edit event
     grid.bind("edit", function(e) {
         // handle event
     });

#### Event Data

##### e.container `jQuery`

The jQuery element to be edited.

##### e.model `kendo.data.Model`

The model to be edited.

### filterMenuInit

Fires when the grid column filter menu is initialized.

#### Example

     $("#grid").kendoGrid({
         filterMenuInit: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the detailInit event
     grid.bind("filterMenuInit", function(e) {
         // handle event
     });

#### Event Data

##### e.field `Object`

The name of the field for which the menu is initialized.

##### e.container `jQuery`

The jQuery element representing filter menu form.

### columnMenuInit

Fires when the grid column menu is initialized.

#### Example

     $("#grid").kendoGrid({
         columnMenuInit: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the columnMenuInit event
     grid.bind("columnMenuInit", function(e) {
         // handle event
     });

#### Event Data

##### e.field `Object`

The name of the field for which the menu is initialized.

##### e.container `jQuery`

The jQuery element representing menu container.

### remove

Fires before the grid item is removed.

#### Example

     $("#grid").kendoGrid({
         remove: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the remove event
     grid.bind("remove", function(e) {
         // handle event
     });

#### Event Data

##### e.row `jQuery`

The row element to be deleted.

##### e.model `kendo.data.Model`

The model which to be deleted.

### save

Fires before the grid item is changed.

#### Example

     $("#grid").kendoGrid({
         save: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the save event
     grid.bind("save", function(e) {
         // handle event
     });

#### Event Data

##### e.values `Object`

The values entered by the user.

##### e.container `jQuery`

The jQuery element which is in edit mode.

##### e.model `kendo.data.Model`

The edited model.

### saveChanges

Fires before the grid calls DataSource sync.

#### Example

     $("#grid").kendoGrid({
         saveChanges: function(e) {
             // handle event
         }
     });

#### To set after initialization

     // get a reference to the grid
     var grid = $("#grid").data("kendoGrid");
     // bind to the saveChanges event
     grid.bind("saveChanges", function(e) {
         // handle event
     });
