---
title: Editor
---

# \Kendo\UI\Editor

A PHP wrapper for Kendo UI [Editor](/api/web/editor).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Editor in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Editor

    <?php
    // Create a new instance of Editor and specify its id
    $editor = new \Kendo\UI\Editor('Editor');

    // Configure it
    $editor->domain('value')

    // Output it

    echo $editor->render();
    ?>


## Methods

### change
Fires when Editor is blurred and its content has changed.
For additional information check the [change](/api/web/editor#events-change) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### content

Sets the HTML content of the Editor.

#### Returns

`Editor`

#### $value `string`

#### Example

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->content('<strong>Content</strong>');
    ?>


### domain
Relaxes the same-origin policy when using the iframe-based editor.
This is done automatically for all cases except when the policy is relaxed by document.domain = document.domain.
In that case, this property must be used to allow the editor to function properly across browsers.
This property has been introduced in internal builds after 2014.1.319.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->domain('value');
    ?>

### encoded
Indicates whether the Editor should submit encoded HTML tags. By default, the submitted value is encoded.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->encoded(true);
    ?>

### endContent

Stops output bufferring and sets the preceding markup as the content of the Editor.

#### Example

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->startContent();
    ?>
    <strong>Content</strong>
    <?php
    $editor->endContent(); // content is set to <strong>Content</strong>
    ?>

### execute
Fires when an Editor command is executed.
For additional information check the [execute](/api/web/editor#events-execute) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->execute('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onExecute(e) {
            // handle the execute event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->execute('onExecute');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->execute(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### fileBrowser

Configuration for file browser dialog.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `\Kendo\UI\EditorFileBrowser|array`


#### Example - using [\Kendo\UI\EditorFileBrowser](/api/wrappers/php/Kendo/UI/EditorFileBrowser)
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $fileBrowser = new \Kendo\UI\EditorFileBrowser();
    $fileTypes = 'value';
    $fileBrowser->fileTypes($fileTypes);
    $editor->fileBrowser($fileBrowser);
    ?>

#### Example - using array

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $fileTypes = 'value';
    $editor->fileBrowser(array('fileTypes' => $fileTypes));
    ?>

### imageBrowser

Configuration for image browser dialog.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `\Kendo\UI\EditorImageBrowser|array`


#### Example - using [\Kendo\UI\EditorImageBrowser](/api/wrappers/php/Kendo/UI/EditorImageBrowser)
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $imageBrowser = new \Kendo\UI\EditorImageBrowser();
    $fileTypes = 'value';
    $imageBrowser->fileTypes($fileTypes);
    $editor->imageBrowser($imageBrowser);
    ?>

#### Example - using array

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $fileTypes = 'value';
    $editor->imageBrowser(array('fileTypes' => $fileTypes));
    ?>

### keydown
Fires when the user depresses a keyboard key. Triggered multiple times if the user holds the key down.
For additional information check the [keydown](/api/web/editor#events-keydown) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keydown('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onKeydown(e) {
            // handle the keydown event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keydown('onKeydown');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keydown(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### keyup
Fires when the user releases a keyboard key.
For additional information check the [keyup](/api/web/editor#events-keyup) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keyup('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onKeyup(e) {
            // handle the keyup event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keyup('onKeyup');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->keyup(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### messages
Defines the text of the labels that are shown within the editor. Used primarily for localization.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value ``



### paste
Fires before the content is pasted in the Editor.
For additional information check the [paste](/api/web/editor#events-paste) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->paste('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onPaste(e) {
            // handle the paste event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->paste('onPaste');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->paste(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### select
Fires when the Editor selection has changed.
For additional information check the [select](/api/web/editor#events-select) event documentation.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### serialization

Allows setting of serialization options.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `\Kendo\UI\EditorSerialization|array`


#### Example - using [\Kendo\UI\EditorSerialization](/api/wrappers/php/Kendo/UI/EditorSerialization)
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $serialization = new \Kendo\UI\EditorSerialization();
    $entities = true;
    $serialization->entities($entities);
    $editor->serialization($serialization);
    ?>

#### Example - using array

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $entities = true;
    $editor->serialization(array('entities' => $entities));
    ?>

### startContent

Starts output bufferring. Any following markup will be set as the content of the Editor.

#### Example

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->startContent();
    ?>
    <strong>Content</strong>
    <?php
    $editor->endContent(); // content is set to <strong>Content</strong>
    ?>


### stylesheets
Allows custom stylesheets to be included within the editing area. This setting is applicable only when the Editor is initialized from a textarea
and a contenteditable iframe is generated.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->stylesheets(new array());
    ?>

### tag
The tag that will be rendered. Defaults to "textarea". Triggers the inline edit mode if different.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $editor->tag('value');
    ?>

### addTool

Adds one or more EditorTool to the Editor.

#### Returns
`\Kendo\UI\Editor`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\EditorTool|array`

#### Example - using \Kendo\UI\EditorTool

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $tool = new \Kendo\UI\EditorTool();
    $name = 'value';
    $tool->name($name);
    $editor->addTool($tool);
    ?>

#### Example - using array

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $name = 'value';
    $editor->addTool(array('name' => $name));
    ?>

#### Example - adding more than one EditorTool

    <?php
    $editor = new \Kendo\UI\Editor('Editor');
    $first  = new \Kendo\UI\EditorTool();
    $second = new \Kendo\UI\EditorTool();
    $editor->addTool($first, $second);
    ?>

