---
title: Overview
page_title: Overview of TreeMap widget in Kendo UI DataViz.
description: Documentation for Kendo UI TreeMap widget.
position: 1
---

# Overview

The TreeMap displays hierarchical data in a traditional tree structure. It supports user
interaction through the mouse or touch to perform re-ordering operations via drag-and-drop.

## Getting Started

### Initialize a TreeMap using a selector within $(document).ready()

    $(document).ready(function() {
        $("#treeMap").kendoTreeMap();
    });

## Creating a TreeMap with Data Binding to a Local Data Source

### Create the TreeMap container

    <div id="treeMap"></div>

### Initialize and bind the TreeMap

    $(document).ready(function() {
        $("#treeMap").kendoTreeMap({
            dataSource: [{
				data: [{
			        name: "foo",
			        value: 1
    			}]
			}],
		    valueFied: "value",
    		textField: "name"
        })
    });

A complete reference on how to bind the TreeMap to different service end-points can be found
on the [HierarchicalDataSource API help](/api/framework/hierarchicaldatasource).

## Accessing an Existing TreeMap

You can reference an existing **TreeMap** instance via
[jQuery.data()](http://api.jquery.com/jQuery.data/). Once a reference has been established, you can
use the API to control its behavior.

### Accessing an existing TreeMap instance

    var treeMap = $("#treeMap").data("kendoTreeMap");


