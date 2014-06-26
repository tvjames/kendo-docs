---
title: TabStrip
---

# \Kendo\UI\TabStrip

A PHP wrapper for Kendo UI [TabStrip](/api/web/tabstrip).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use TabStrip in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo TabStrip

    <?php
    // Create a new instance of TabStrip and specify its id
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');

    // Configure it
    $tabStrip->animation(true)

    // Output it

    echo $tabStrip->render();
    ?>


## Methods

### activate
Triggered after a tab is being made visible and its animation complete. Before Q2 2014 this event was invoked after tab show, but before the end of the animation.
For additional information check the [activate](/api/web/tabstrip#events-activate) event documentation.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->activate('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onActivate(e) {
            // handle the activate event.
        }
    </script>
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->activate('onActivate');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->activate(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### animation

A collection of visual animations used when TabStrip tab are selected through
user interactions. Setting this option to false will disable all animations.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `boolean|\Kendo\UI\TabStripAnimation|array`




#### Example  - using boolean
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->animation(true);
    ?>


#### Example - using [\Kendo\UI\TabStripAnimation](/api/wrappers/php/Kendo/UI/TabStripAnimation)
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $animation = new \Kendo\UI\TabStripAnimation();
    $close = new \Kendo\UI\TabStripAnimationClose();
    $animation->close($close);
    $tabStrip->animation($animation);
    ?>

#### Example - using array

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $close = new \Kendo\UI\TabStripAnimationClose();
    $tabStrip->animation(array('close' => $close));
    ?>

### collapsible
Specifies whether the TabStrip should be able to collapse completely when clicking an expanded tab.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->collapsible(true);
    ?>

### contentLoad
Triggered when content is fetched from an AJAX request.
For additional information check the [contentLoad](/api/web/tabstrip#events-contentLoad) event documentation.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->contentLoad('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onContentLoad(e) {
            // handle the contentLoad event.
        }
    </script>
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->contentLoad('onContentLoad');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->contentLoad(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### contentUrls
Sets an array with the URLs from which the tabs content to be loaded from. If only specific tabs should be loaded via Ajax, then you should set the URLs to the corresponding positions in the array and set the other elements to null.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `array`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->contentUrls(new array());
    ?>

### dataContentField
Sets the field of the data item that provides the text content of
the tab content element.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataContentField('value');
    ?>

### dataContentUrlField
Sets the field of the data item that provides the URL for
the ajax loaded tab content.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataContentUrlField('value');
    ?>

### dataImageUrlField
Sets the field of the data item that provides the image URL of
the tab.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataImageUrlField('value');
    ?>

### dataSpriteCssClass
Sets the field of the data item that provides the CSS class of
the tab.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataSpriteCssClass('value');
    ?>

### dataTextField
Sets the field of the data item that provides the text name of the tab.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataTextField('value');
    ?>

### dataUrlField
Sets the field of the data item that provides the link URL for the
tab.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->dataUrlField('value');
    ?>

### error
Triggered when an AJAX request results in an error.
For additional information check the [error](/api/web/tabstrip#events-error) event documentation.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->error('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onError(e) {
            // handle the error event.
        }
    </script>
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->error('onError');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->error(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### addItem

Adds one or more TabStripItem to the TabStrip.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\TabStripItem|array`

#### Example - using \Kendo\UI\TabStripItem

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $item = new \Kendo\UI\TabStripItem();
    $contentUrl = 'value';
    $item->contentUrl($contentUrl);
    $tabStrip->addItem($item);
    ?>

#### Example - using array

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $contentUrl = 'value';
    $tabStrip->addItem(array('contentUrl' => $contentUrl));
    ?>

#### Example - adding more than one TabStripItem

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $first  = new \Kendo\UI\TabStripItem();
    $second = new \Kendo\UI\TabStripItem();
    $tabStrip->addItem($first, $second);
    ?>

### navigatable
Specifies whether the TabStrip should be keyboard navigatable.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->navigatable(true);
    ?>

### select
Triggered before a tab is selected.
For additional information check the [select](/api/web/tabstrip#events-select) event documentation.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->select('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onSelect(e) {
            // handle the select event.
        }
    </script>
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->select('onSelect');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->select(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### show
Triggered just after a tab is being made visible, but before the end of the animation. Before Q2 2014 this event was called activate.
For additional information check the [show](/api/web/tabstrip#events-show) event documentation.

#### Returns
`\Kendo\UI\TabStrip`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->show('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onShow(e) {
            // handle the show event.
        }
    </script>
    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->show('onShow');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $tabStrip = new \Kendo\UI\TabStrip('TabStrip');
    $tabStrip->show(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

