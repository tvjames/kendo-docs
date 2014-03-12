---
title: button
slug: jsp-button
tags: api, java
publish: true
---

# \<kendo:button\>
A JSP wrapper for Kendo UI [Button](/kendo-ui/api/web/button).

## Configuration Attributes

### content `java.lang.Object`

The content of the Button

#### Example
    <kendo:button content="content">
    </kendo:button>

### enable `boolean`

Indicates whether the Button should be enabled or disabled. By default, it is enabled, unless a disabled="disabled" attribute is detected.

#### Example
    <kendo:button enable="enable">
    </kendo:button>

### icon `java.lang.String`

Defines a name of an existing icon in the Kendo UI theme sprite. The icon will be applied as background image of a span element inside the Button.
The span element can be added automatically by the widget, or an existing element can be used, if it has a k-icon CSS class applied.
For a list of available icon names, please refer to the Icons demo.

#### Example
    <kendo:button icon="icon">
    </kendo:button>

### imageUrl `java.lang.String`

Defines a URL, which will be used for an img element inside the Button. The URL can be relative or absolute. In case it is relative, it will be evaluated with relation to the web page URL.The img element can be added automatically by the widget, or an existing element can be used, if it has a k-image CSS class applied.

#### Example
    <kendo:button imageUrl="imageUrl">
    </kendo:button>

### spriteCssClass `java.lang.String`

Defines a CSS class (or multiple classes separated by spaces), which will be used for applying a background image to a span element inside the Button.
In case you want to use an icon from the Kendo UI theme sprite background image, it is easier to use the icon property.The span element can be added automatically by the widget, or an existing element can be used, if it has a k-sprite CSS class applied.

#### Example
    <kendo:button spriteCssClass="spriteCssClass">
    </kendo:button>


## Event Attributes

### click `String`

Fires when the Button is clicked with the mouse, touched on a touch device, or ENTER (or SPACE) is pressed while the Button is focused.


For additional information check the [click](/kendo-ui/api/web/button#events-click) event documentation.

#### Example
    <kendo:button click="handle_click">
    </kendo:button>
    <script>
        function handle_click(e) {
            // Code to handle the click event.
        }
    </script>

## Event Tags

### kendo:button-click

Fires when the Button is clicked with the mouse, touched on a touch device, or ENTER (or SPACE) is pressed while the Button is focused.


For additional information check the [click](/kendo-ui/api/web/button#events-click) event documentation.

#### Example
    <kendo:button>
        <kendo:button-click>
            <script>
                function(e) {
                    // Code to handle the click event.
                }
            </script>
        </kendo:button-click>
    </kendo:button>

