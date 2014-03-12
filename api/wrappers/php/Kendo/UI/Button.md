---
title: Button
slug: php-ui-button
tags: api, php
publish: true
---

# \Kendo\UI\Button

A PHP wrapper for Kendo UI [Button](/kendo-ui/api/web/button).

Inherits from [\Kendo\UI\Widget](/kendo-ui/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Button in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/kendo-ui/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Button

    <?php
    // Create a new instance of Button and specify its id
    $button = new \Kendo\UI\Button('Button');

    // Configure it
    $button->enable(true)

    // Output it

    echo $button->render();
    ?>


## Methods

### click
Fires when the Button is clicked with the mouse, touched on a touch device, or ENTER (or SPACE) is pressed while the Button is focused.
For additional information check the [click](/kendo-ui/api/web/button#events-click) event documentation.

#### Returns
`\Kendo\UI\Button`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->click('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onClick(e) {
            // handle the click event.
        }
    </script>
    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->click('onClick');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/kendo-ui/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->click(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### content

Sets the HTML content of the Button.

#### Returns

`Button`

#### $value `string`

#### Example

    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->content('<strong>Content</strong>');
    ?>


### enable
Indicates whether the Button should be enabled or disabled. By default, it is enabled, unless a disabled="disabled" attribute is detected.

#### Returns
`\Kendo\UI\Button`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->enable(true);
    ?>

### endContent

Stops output bufferring and sets the preceding markup as the content of the Button.

#### Example

    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->startContent();
    ?>
    <strong>Content</strong>
    <?php
    $button->endContent(); // content is set to <strong>Content</strong>
    ?>

### icon
Defines a name of an existing icon in the Kendo UI theme sprite. The icon will be applied as background image of a span element inside the Button.
The span element can be added automatically by the widget, or an existing element can be used, if it has a k-icon CSS class applied.
For a list of available icon names, please refer to the Icons demo.

#### Returns
`\Kendo\UI\Button`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->icon('value');
    ?>

### imageUrl
Defines a URL, which will be used for an img element inside the Button. The URL can be relative or absolute. In case it is relative, it will be evaluated with relation to the web page URL.The img element can be added automatically by the widget, or an existing element can be used, if it has a k-image CSS class applied.

#### Returns
`\Kendo\UI\Button`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->imageUrl('value');
    ?>

### spriteCssClass
Defines a CSS class (or multiple classes separated by spaces), which will be used for applying a background image to a span element inside the Button.
In case you want to use an icon from the Kendo UI theme sprite background image, it is easier to use the icon property.The span element can be added automatically by the widget, or an existing element can be used, if it has a k-sprite CSS class applied.

#### Returns
`\Kendo\UI\Button`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->spriteCssClass('value');
    ?>

### startContent

Starts output bufferring. Any following markup will be set as the content of the Button.

#### Example

    <?php
    $button = new \Kendo\UI\Button('Button');
    $button->startContent();
    ?>
    <strong>Content</strong>
    <?php
    $button->endContent(); // content is set to <strong>Content</strong>
    ?>


