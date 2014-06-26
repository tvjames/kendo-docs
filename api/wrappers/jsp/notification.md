---
title: notification
---

# \<kendo:notification\>
A JSP wrapper for Kendo UI [Notification](/api/web/notification).

## Configuration Attributes

### allowHideAfter `float`

Indicates the period in milliseconds after which a notification can be dismissed (hidden) by the user.

#### Example
    <kendo:notification allowHideAfter="allowHideAfter">
    </kendo:notification>

### animation `java.lang.Object`

Defines custom show and hide animations via an Kendo UI Animation object. Setting the value to false disables animations.

#### Example
    <kendo:notification animation="animation">
    </kendo:notification>

### appendTo `java.lang.Object`

Defines the element to which the notifications will be appended or prepended (depending on the stacking direction).

#### Example
    <kendo:notification appendTo="appendTo">
    </kendo:notification>

### autoHideAfter `float`

Indicates the period in milliseconds after which a notification disappears automatically. Setting a zero value disables this behavior.

#### Example
    <kendo:notification autoHideAfter="autoHideAfter">
    </kendo:notification>

### button `boolean`

Determines whether the notifications will include a hide button. This setting works with the built-in templates only.

#### Example
    <kendo:notification button="button">
    </kendo:notification>

### height `java.lang.Object`

Defines the notifications' height. Numbers are treated as pixels.

#### Example
    <kendo:notification height="height">
    </kendo:notification>

### hideOnClick `boolean`

Determines whether notifications can be hidden by clicking anywhere on their content.

#### Example
    <kendo:notification hideOnClick="hideOnClick">
    </kendo:notification>

### stacking `java.lang.String`

Determines the direction in which multiple notification will stack (arrange) with regard to the first one. Possible values are "up", "right", "down", "left" and "default".
The "default" setting takes into consideration the applied position settings and is evaluated to "up" or "down".

#### Example
    <kendo:notification stacking="stacking">
    </kendo:notification>

### width `java.lang.Object`

Defines the notifications' width. Numbers are treated as pixels.

#### Example
    <kendo:notification width="width">
    </kendo:notification>


##  Configuration JSP Tags

### kendo:notification-position

This setting applies to popup notifications only, i.e. in cases when appendTo is not set.
It determines the position of the first notification on the screen, as well as whether the notifications will move together with the page content during scrolling.
top takes precedence over bottom and left takes precedence over right.

More documentation is available at [kendo:notification-position](/api/wrappers/jsp/notification/position).

#### Example

    <kendo:notification>
        <kendo:notification-position></kendo:notification-position>
    </kendo:notification>

### kendo:notification-templates

Describes the HTML markup of the different notification types as Kendo UI template strings. The built-in types are "info", "success", "warning" and "error".This documentation section assumes that you are familiar with Kendo UI templates.

More documentation is available at [kendo:notification-templates](/api/wrappers/jsp/notification/templates).

#### Example

    <kendo:notification>
        <kendo:notification-templates></kendo:notification-templates>
    </kendo:notification>


## Event Attributes

### hide `String`

Fires when a notification's hiding animation starts.


For additional information check the [hide](/api/web/notification#events-hide) event documentation.

#### Example
    <kendo:notification hide="handle_hide">
    </kendo:notification>
    <script>
        function handle_hide(e) {
            // Code to handle the hide event.
        }
    </script>

### show `String`

Fires when a notification's showing animation starts.


For additional information check the [show](/api/web/notification#events-show) event documentation.

#### Example
    <kendo:notification show="handle_show">
    </kendo:notification>
    <script>
        function handle_show(e) {
            // Code to handle the show event.
        }
    </script>

## Event Tags

### kendo:notification-hide

Fires when a notification's hiding animation starts.


For additional information check the [hide](/api/web/notification#events-hide) event documentation.

#### Example
    <kendo:notification>
        <kendo:notification-hide>
            <script>
                function(e) {
                    // Code to handle the hide event.
                }
            </script>
        </kendo:notification-hide>
    </kendo:notification>

### kendo:notification-show

Fires when a notification's showing animation starts.


For additional information check the [show](/api/web/notification#events-show) event documentation.

#### Example
    <kendo:notification>
        <kendo:notification-show>
            <script>
                function(e) {
                    // Code to handle the show event.
                }
            </script>
        </kendo:notification-show>
    </kendo:notification>

