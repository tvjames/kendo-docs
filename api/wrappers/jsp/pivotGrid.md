---
title: pivotGrid
---

# \<kendo:pivotGrid\>
A JSP wrapper for Kendo UI [PivotGrid](/api/web/pivotgrid).

## Configuration Attributes

### autoBind `boolean`

If set to false the widget will not bind to the data source during initialization. In this case data binding will occur when the change event of the
data source is fired. By default the widget will bind to the data source specified in the configuration.

#### Example
    <kendo:pivotGrid autoBind="autoBind">
    </kendo:pivotGrid>

### height `java.lang.Object`

The height of the pivotgrid. Numeric values are treated as pixels.

#### Example
    <kendo:pivotGrid height="height">
    </kendo:pivotGrid>

### reorderable `boolean`

If set to false the user will not be able to add/close/reorder current fields for columns/rows/measures.

#### Example
    <kendo:pivotGrid reorderable="reorderable">
    </kendo:pivotGrid>


##  Configuration JSP Tags

### kendo:pivotGrid-messages

The text messages displayed in the fields sections.

More documentation is available at [kendo:pivotGrid-messages](/api/wrappers/jsp/pivotgrid/messages).

#### Example

    <kendo:pivotGrid>
        <kendo:pivotGrid-messages></kendo:pivotGrid-messages>
    </kendo:pivotGrid>


## Event Attributes

### dataBinding `String`

Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBinding](/api/web/pivotgrid#events-dataBinding) event documentation.

#### Example
    <kendo:pivotGrid dataBinding="handle_dataBinding">
    </kendo:pivotGrid>
    <script>
        function handle_dataBinding(e) {
            // Code to handle the dataBinding event.
        }
    </script>

### dataBound `String`

Fired after the widget is bound to the data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/web/pivotgrid#events-dataBound) event documentation.

#### Example
    <kendo:pivotGrid dataBound="handle_dataBound">
    </kendo:pivotGrid>
    <script>
        function handle_dataBound(e) {
            // Code to handle the dataBound event.
        }
    </script>

### expandMember `String`

Fired before column or row field is expaneded.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [expandMember](/api/web/pivotgrid#events-expandMember) event documentation.

#### Example
    <kendo:pivotGrid expandMember="handle_expandMember">
    </kendo:pivotGrid>
    <script>
        function handle_expandMember(e) {
            // Code to handle the expandMember event.
        }
    </script>

### collapseMember `String`

Fired before column or row field is collapsed.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [collapseMember](/api/web/pivotgrid#events-collapseMember) event documentation.

#### Example
    <kendo:pivotGrid collapseMember="handle_collapseMember">
    </kendo:pivotGrid>
    <script>
        function handle_collapseMember(e) {
            // Code to handle the collapseMember event.
        }
    </script>

## Event Tags

### kendo:pivotGrid-dataBinding

Fired before the widget binds to its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBinding](/api/web/pivotgrid#events-dataBinding) event documentation.

#### Example
    <kendo:pivotGrid>
        <kendo:pivotGrid-dataBinding>
            <script>
                function(e) {
                    // Code to handle the dataBinding event.
                }
            </script>
        </kendo:pivotGrid-dataBinding>
    </kendo:pivotGrid>

### kendo:pivotGrid-dataBound

Fired after the widget is bound to the data from its data source.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [dataBound](/api/web/pivotgrid#events-dataBound) event documentation.

#### Example
    <kendo:pivotGrid>
        <kendo:pivotGrid-dataBound>
            <script>
                function(e) {
                    // Code to handle the dataBound event.
                }
            </script>
        </kendo:pivotGrid-dataBound>
    </kendo:pivotGrid>

### kendo:pivotGrid-expandMember

Fired before column or row field is expaneded.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [expandMember](/api/web/pivotgrid#events-expandMember) event documentation.

#### Example
    <kendo:pivotGrid>
        <kendo:pivotGrid-expandMember>
            <script>
                function(e) {
                    // Code to handle the expandMember event.
                }
            </script>
        </kendo:pivotGrid-expandMember>
    </kendo:pivotGrid>

### kendo:pivotGrid-collapseMember

Fired before column or row field is collapsed.The event handler function context (available via the this keyword) will be set to the widget instance.


For additional information check the [collapseMember](/api/web/pivotgrid#events-collapseMember) event documentation.

#### Example
    <kendo:pivotGrid>
        <kendo:pivotGrid-collapseMember>
            <script>
                function(e) {
                    // Code to handle the collapseMember event.
                }
            </script>
        </kendo:pivotGrid-collapseMember>
    </kendo:pivotGrid>

