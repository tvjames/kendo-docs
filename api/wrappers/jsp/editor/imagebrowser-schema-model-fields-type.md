---
title: editor-imagebrowser-schema-model-fields-type
slug: jsp-editor-imagebrowser-schema-model-fields-type
tags: api, java
publish: true
---

# \<kendo:editor-imagebrowser-schema-model-fields-type\>
A JSP tag representing Kendo Type.

#### Example
    <kendo:editor-imagebrowser-schema-model-fields>
        <kendo:editor-imagebrowser-schema-model-fields-type></kendo:editor-imagebrowser-schema-model-fields-type>
    </kendo:editor-imagebrowser-schema-model-fields>


## Configuration Attributes


### parse `String`

Specifies the function which will parse the field value. If not set default parsers will be used.

#### Example
    <kendo:editor parse="handle_parse">
    </kendo:editor>
    <script>
        function handle_parse(e) {
            // Code to handle the parse event.
        }
    </script>



### field `String`

The name of the field.

#### Example
    <kendo:editor field="field">
    </kendo:editor>



## Child JSP Tags
 
