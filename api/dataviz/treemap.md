---
title: TreeMap
page_title: Configuration, methods and events of Kendo UI DataViz TreeMap
description: Learn how to configure Kendo UI Javascript TreeMap widget in a few easy steps, use and change methods and events.
---

# kendo.dataviz.ui.TreeMap

## Configuration

### dataSource `Object|Array|kendo.data.HierarchicalDataSource`

The data source of the treeMap which is used to display the tiles and titles. Can be a JavaScript object which represents a valid data source configuration, a JavaScript array or an existing [kendo.data.HierarchicalDataSource](/api/framework/hierarchicaldatasource)
instance.

If the `HierarchicalDataSource` option is set to a JavaScript object or array the widget will initialize a new [kendo.data.HierarchicalDataSource](/api/framework/hierarchicaldatasource) instance using that value as data source configuration.

If the `HierarchicalDataSource` option is an existing [kendo.data.HierarchicalDataSource](/api/framework/HierarchicalDataSource) instance the widget will use that instance and will **not** initialize a new one.

### autoBind `Boolean` *(default: true)*

If set to `false` the widget will not bind to the data source during initialization. In this case data binding will occur when the [change](/api/framework/hierarchicaldatasource#events-change) event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

> Setting `autoBind` to `false` is useful when multiple widgets are bound to the same data source. Disabling automatic binding ensures that the shared data source does not make more than one request to the remote service.

#### Example - disable automatic binding

    <div id="treemap"></div>
    <script>
    var dataSource = new kendo.data.HierarchicalDataSource({
        data: [{
            name: "foo",
            value: 1
        }]
    });

    $("#treemap").kendoTreeMap({
        autoBind: false,
        dataSource: dataSource,
        valueFied: "value",
        textField: "name"
    });
    dataSource.read(); // "read()" will fire the "change" event of the dataSource and the widget will be bound
    </script>

### valueField `String` *(default: "value")*

The data item field which contains the tile value.

### colorField `String` *(default: "color")*

The data item field which contains the tile color.

### textField `String` *(default: "text")*

The data item field which contains the tile title.

### template `String|Function`

The [template](/api/framework/kendo#methods-template) which renders the treeMap tile content.

The fields which can be used in the template are:

* dataItem - the original data item used to construct the point.
* text - the original tile text.

### colors `Array`

The default colors for the treemap tiles. When all colors are used, new colors are pulled from the start again.

#### Example - set the treemap tile colors
    <div id="treemap"></div>
    <script>
    $("#treemap").kendoTreeMap({
        dataSource: {
            data: [{
                name: "foo",
                value: 1
            }]
        },
        valueField: "value",
        textField: "name",
        colors: ["red", "green"]
    });
    </script>

## Events

### itemCreated

Fired when a tile has been created.

#### Event Data

##### e.element `jQuery|Element`

The item html instance.

##### e.sender `kendo.dataviz.ui.TreeMap`

The source widget instance.

#### Example - Change color of the tile
    <div id="treeMap"></div>
    <script>
        $("#treeMap").kendoTreeMap({
            dataSource: {
                data: [{
                    name: "foo",
                    value: 1,
                    color: "red"
                }]
            },
            valueField: "value",
            textField: "name",
            colorField: "color",
            itemCreated: function(e) {
                e.element.css("background-color", "blue");
            }
        });
    </script>

### dataBound

Fired when the widget is bound to data from its dataSource.

#### Event Data

##### e.sender `kendo.dataviz.ui.TreeMap`

The source widget instance.

#### Example - subscribe to the "dataBound" event during initialization

    <div id="treemap"></div>
    <script>
    $("#treemap").kendoTreeMap({
        dataSource: {
            data: [{
                name: "foo",
                value: 1,
                color: "red"
            }]
        },
        valueField: "value",
        textField: "name",
        colorField: "color",
        dataBound: function(e) {
            console.log("DataBound");
        }
    });
    </script>

#### Example - subscribe to the "dataBound" event after initialization
    <div id="treemap"></div>
    <script>
    function dataBund(e) {
      console.log("DataBound");
    }

    $("#treemap").kendoTreeMap({
        dataSource: {
            data: [{
                name: "foo",
                value: 1,
                color: "red"
            }]
        },
        valueField: "value",
        textField: "name",
        colorField: "color"
    });
    var treemap = $("#treemap").getKendoTreeMap();
    treemap.bind("dataBound", dataBund);
    </script>

## Methods

### destroy

Prepares the TreeMap for safe removal from the DOM.

Detaches event handlers and removes data entries in order to avoid memory leaks.

### findByUid

Searches for an item with the given unique identifier.
Applicable when the widget is bound to a [HierarchicalDataSource](/api/framework/hierarchicaldatasource).
If you want to find an item by its `id`, use the [dataSource.get()](/api/framework/datasource#get) method and supply its uid to the `findByUid` method.

#### Parameters

##### text `String`

The text that is being searched for.

#### Returns

`jQuery` All nodes that have the text.

#### Example

    <div id="treemap"></div>
    <script>
    $("#treemap").kendoTreeMap({
        dataSource: {
            data: [{
                name: "foo",
                value: 1,
                color: "red",
                id: 1
            }]
        },
        valueField: "value",
        textField: "name",
        colorField: "color"
    });

    var treemap = $("#treemap").getKendoTreeMap();
    var fooDataItem = treemap.dataSource.get(1);
    var fooElement = treemap.findByUid(fooDataItem.uid);
    console.log(fooElement);
    </script>

### dataItem

Returns the data item to which the specified tile is bound.

#### Parameters

##### tile `jQuery|Element|String`

A string, DOM element or jQuery object which represents the tile. A string is treated as a jQuery selector.

#### Returns

`kendo.data.Node` The model of the item that was passed as a parameter.

#### Example - get the data item of the first node

    <div id="treemap"></div>
    <script>
    $("#treemap").kendoTreeMap({
        dataSource: {
            data: [{
                name: "foo",
                value: 1,
                color: "red",
                id: 1
            }]
        },
        valueField: "value",
        textField: "name",
        colorField: "color"
    });

    var treemap = $("#treemap").getKendoTreeMap();
    var dataItem = treemap.dataItem(".k-treemap-tile:first");
    console.log(dataItem.name); // displays "foo"
    </script>

