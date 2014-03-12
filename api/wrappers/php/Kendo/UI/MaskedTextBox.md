---
title: MaskedTextBox
slug: php-ui-maskedtextbox
tags: api, php
publish: true
---

# \Kendo\UI\MaskedTextBox

A PHP wrapper for Kendo UI [MaskedTextBox](/kendo-ui/api/web/maskedtextbox).

Inherits from [\Kendo\UI\Widget](/kendo-ui/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use MaskedTextBox in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/kendo-ui/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo MaskedTextBox

    <?php
    // Create a new instance of MaskedTextBox and specify its id
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');

    // Configure it
    $maskedTextBox->culture('value')

    // Output it

    echo $maskedTextBox->render();
    ?>


## Methods

### change
Fires when the value is changed
For additional information check the [change](/kendo-ui/api/web/maskedtextbox#events-change) event documentation.

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->change('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onChange(e) {
            // handle the change event.
        }
    </script>
    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->change('onChange');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->change(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### culture
Specifies the culture info used by the widget.

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->culture('value');
    ?>

### mask
Specifies the input mask. The following mask rules are supported:

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->mask('value');
    ?>

### promptChar
Specifies the character used to represent the absence of user input in the widget

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->promptChar('value');
    ?>

### rules
Defines an object of custom mask rules.

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value ``



### value
Specifies the value of the MaskedTextBox widget.

#### Returns
`\Kendo\UI\MaskedTextBox`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $maskedTextBox = new \Kendo\UI\MaskedTextBox('MaskedTextBox');
    $maskedTextBox->value('value');
    ?>

