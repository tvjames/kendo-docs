---
title: pager
slug: jsp-pager
tags: api, java
publish: true
---

# \<kendo:pager\>
A JSP tag representing Kendo Pager.


## Configuration Attributes


### autoBind `boolean`

Indicates whether the pager refresh method will be called within its initialization.

#### Example
    <kendo:pager autoBind="autoBind">
    </kendo:pager>



### buttonCount `float`

Defines the number of buttons displayed in the numeric pager.

#### Example
    <kendo:pager buttonCount="buttonCount">
    </kendo:pager>



### selectTemplate `String`

The template for selectbox with predefined page sizes.

#### Example
    <kendo:pager selectTemplate="selectTemplate">
    </kendo:pager>



### linkTemplate `String`

The template for page number links.

#### Example
    <kendo:pager linkTemplate="linkTemplate">
    </kendo:pager>



### info `boolean`

Defines if a label showing current paging information will be displayed.

#### Example
    <kendo:pager info="info">
    </kendo:pager>



### input `boolean`

Defines if an input element which allows the user to navigate to given page will be displayed.

#### Example
    <kendo:pager input="input">
    </kendo:pager>



### numeric `boolean`

Defines if numeric portion of the pager will be shown.

#### Example
    <kendo:pager numeric="numeric">
    </kendo:pager>



### pageSizes `boolean`

Displays a list with predefined page sizes. An array of values to be displayed can be provided. If pageSize option is provided for DataSource then this pageSize value will be automaticaly selected in created selectbox.

#### Example
    <kendo:pager pageSizes="pageSizes">
    </kendo:pager>



### previousNext `boolean`

Defines if buttons for navigating to the first, last, previous and next pages will be shown.

#### Example
    <kendo:pager previousNext="previousNext">
    </kendo:pager>



### refresh `boolean`

Defines if a refresh button will be displayed. Click on that button will call DataSource read() method to get actual data.

#### Example
    <kendo:pager refresh="refresh">
    </kendo:pager>



### change `String`

Fires when the current page has changed.

#### Example
    <kendo:pager change="handle_change">
    </kendo:pager>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### Event Attributes


### change `String`

Fires when the current page has changed.

#### Example
    <kendo:pager change="handle_change">
    </kendo:pager>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>


## Event Tags
 

### kendo:pager-change

Fires when the current page has changed.

#### Example
    <kendo:pager>
        <kendo:pager-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:pager-change>
    </kendo:pager>

 

## Child JSP Tags

### kendo:pager-messages

Defines texts shown within the pager.

More documentation is available at [kendo:pager-messages](/api/wrappers/jsp/pager/messages).

#### Example

    <kendo:pager>
        <kendo:pager-messages></kendo:pager-messages>
    </kendo:pager>
  
