---
title: grid-column-sortable
slug: jsp-grid-column-sortable
tags: api, java
publish: true
---

# \<kendo:grid-column-sortable\>

If set to true the user can click the column header and sort the grid by the column field when sorting is enabled. If set to false sorting will
be disabled for this column. By default all columns are sortable if sorting is enabled via the sortable option.

#### Example
    <kendo:grid-column>
        <kendo:grid-column-sortable></kendo:grid-column-sortable>
    </kendo:grid-column>

## Configuration Attributes

### compare `java.lang.String`

A JavaScript function which is used to compare the values - should return -1 if first argument is less than second one, 0 if both are the same or +1 if the second one is greater that then first one.

#### Example
    <kendo:grid-column-sortable compare="compare">
    </kendo:grid-column-sortable>


## Event Attributes

### compare `String`

A JavaScript function which is used to compare the values - should return -1 if first argument is less than second one, 0 if both are the same or +1 if the second one is greater that then first one.


#### Example
    <kendo:grid-column-sortable compare="handle_compare">
    </kendo:grid-column-sortable>
    <script>
        function handle_compare(e) {
            // Code to handle the compare event.
        }
    </script>

## Event Tags

### kendo:grid-column-sortable-compare

A JavaScript function which is used to compare the values - should return -1 if first argument is less than second one, 0 if both are the same or +1 if the second one is greater that then first one.


#### Example
    <kendo:grid-column-sortable>
        <kendo:grid-column-sortable-compare>
            <script>
                function(e) {
                    // Code to handle the compare event.
                }
            </script>
        </kendo:grid-column-sortable-compare>
    </kendo:grid-column-sortable>

