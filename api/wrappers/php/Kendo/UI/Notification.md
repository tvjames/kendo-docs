---
title: Notification
---

# \Kendo\UI\Notification

A PHP wrapper for Kendo UI [Notification](/api/web/notification).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use Notification in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo Notification

    <?php
    // Create a new instance of Notification and specify its id
    $notification = new \Kendo\UI\Notification('Notification');

    // Configure it
    $notification->allowHideAfter(1)

    // Output it

    echo $notification->render();
    ?>


## Methods

### allowHideAfter
Indicates the period in milliseconds after which a notification can be dismissed (hidden) by the user.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->allowHideAfter(1);
    ?>

### animation
Defines custom show and hide animations via an Kendo UI Animation object. Setting the value to false disables animations.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `|boolean`



#### Example  - using 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->animation(new ());
    ?>

#### Example  - using boolean
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->animation(true);
    ?>

### appendTo
Defines the element to which the notifications will be appended or prepended (depending on the stacking direction).

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `string|`



#### Example  - using string
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->appendTo('value');
    ?>

### autoHideAfter
Indicates the period in milliseconds after which a notification disappears automatically. Setting a zero value disables this behavior.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->autoHideAfter(1);
    ?>

### button
Determines whether the notifications will include a hide button. This setting works with the built-in templates only.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->button(true);
    ?>

### height
Defines the notifications' height. Numbers are treated as pixels.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->height(1);
    ?>

#### Example  - using string
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->height('value');
    ?>

### hide
Fires when a notification's hiding animation starts.
For additional information check the [hide](/api/web/notification#events-hide) event documentation.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->hide('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onHide(e) {
            // handle the hide event.
        }
    </script>
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->hide('onHide');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->hide(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### hideOnClick
Determines whether notifications can be hidden by clicking anywhere on their content.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->hideOnClick(true);
    ?>

### position

This setting applies to popup notifications only, i.e. in cases when appendTo is not set.
It determines the position of the first notification on the screen, as well as whether the notifications will move together with the page content during scrolling.
top takes precedence over bottom and left takes precedence over right.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `\Kendo\UI\NotificationPosition|array`


#### Example - using [\Kendo\UI\NotificationPosition](/api/wrappers/php/Kendo/UI/NotificationPosition)
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $position = new \Kendo\UI\NotificationPosition();
    $bottom = 1;
    $position->bottom($bottom);
    $notification->position($position);
    ?>

#### Example - using array

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $bottom = 1;
    $notification->position(array('bottom' => $bottom));
    ?>

### show
Fires when a notification's showing animation starts.
For additional information check the [show](/api/web/notification#events-show) event documentation.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`

#### Example - using string which defines a JavaScript function

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->show('function(e) { }');
    ?>

#### Example - using string which defines a JavaScript name
    <script>
        function onShow(e) {
            // handle the show event.
        }
    </script>
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->show('onShow');
    ?>

#### Example - using [\Kendo\JavaScriptFunction](/api/wrappers/php/kendo/javascriptfunction)

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->show(new \Kendo\JavaScriptFunction('function(e) { }'));
    ?>

### stacking
Determines the direction in which multiple notification will stack (arrange) with regard to the first one. Possible values are "up", "right", "down", "left" and "default".
The "default" setting takes into consideration the applied position settings and is evaluated to "up" or "down".

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->stacking('value');
    ?>

### addTemplate

Adds one or more NotificationTemplate to the Notification.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value[, $value2, ...] `\Kendo\UI\NotificationTemplate|array`

#### Example - using \Kendo\UI\NotificationTemplate

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $template = new \Kendo\UI\NotificationTemplate();
    $template = 'value';
    $template->template($template);
    $notification->addTemplate($template);
    ?>

#### Example - using array

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $template = 'value';
    $notification->addTemplate(array('template' => $template));
    ?>

#### Example - adding more than one NotificationTemplate

    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $first  = new \Kendo\UI\NotificationTemplate();
    $second = new \Kendo\UI\NotificationTemplate();
    $notification->addTemplate($first, $second);
    ?>

### width
Defines the notifications' width. Numbers are treated as pixels.

#### Returns
`\Kendo\UI\Notification`

#### Parameters

##### $value `float|string`



#### Example  - using float
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->width(1);
    ?>

#### Example  - using string
    <?php
    $notification = new \Kendo\UI\Notification('Notification');
    $notification->width('value');
    ?>

