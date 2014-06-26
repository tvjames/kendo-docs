---
title: ToolBar
---

# \Kendo\UI\ToolBar

A PHP wrapper for Kendo UI [ToolBar](/api/web/toolbar).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use ToolBar in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo ToolBar

    <?php
    // Create a new instance of ToolBar and specify its id
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');

    // Configure it
    $toolBar->resizable(true)

    // Output it

    echo $toolBar->render();
    ?>


## Methods

### click
Fires when the user clicks a command button.
For additional information check the [click](/api/web/toolbar#events-click) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->click('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClick(e) {
            // handle the click event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->click('onClick');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->click(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### close
Fires when the SplitButton's popup closes.
For additional information check the [close](/api/web/toolbar#events-close) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->close('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClose(e) {
            // handle the close event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->close('onClose');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->close(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### addItem

Adds one or more ToolBarItem to the ToolBar.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\ToolBarItem|array`

#### Example - using \Kendo\UI\ToolBarItem

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $item = new \Kendo\UI\ToolBarItem();
    $enable = true;
    $item->enable($enable);
    $toolBar->addItem($item);
    ?>

#### Example - using array

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $enable = true;
    $toolBar->addItem(array('enable' => $enable));
    ?>

#### Example - adding more than one ToolBarItem

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $first  = new \Kendo\UI\ToolBarItem();
    $second = new \Kendo\UI\ToolBarItem();
    $toolBar->addItem($first, $second);
    ?>

### open
Fires when the Split Button's popup opens.
For additional information check the [open](/api/web/toolbar#events-open) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->open('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOpen(e) {
            // handle the open event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->open('onOpen');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->open(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### overflowClose
Fires when the overflow popup container is about to close.
For additional information check the [overflowClose](/api/web/toolbar#events-overflowClose) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowClose('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOverflowClose(e) {
            // handle the overflowClose event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowClose('onOverflowClose');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowClose(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### overflowOpen
Fires when the overflow popup container is about to open.
For additional information check the [overflowOpen](/api/web/toolbar#events-overflowOpen) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowOpen('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onOverflowOpen(e) {
            // handle the overflowOpen event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowOpen('onOverflowOpen');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->overflowOpen(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### resizable
If resizable is set to true the widget will detect changes in the viewport width and hides the overflowing controls in the command overflow popup.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->resizable(true);
    ?>

### toggle
Fires when the user changes the checked state of a toggle button.
For additional information check the [toggle](/api/web/toolbar#events-toggle) event documentation.

#### Returns
`\Kendo\UI\ToolBar`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->toggle('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onToggle(e) {
            // handle the toggle event.
        }
    </script>
    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->toggle('onToggle');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $toolBar = new \Kendo\UI\ToolBar('ToolBar');
    $toolBar->toggle(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

