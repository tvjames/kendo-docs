---
title: notification-position
slug: jsp-notification-position
tags: api, java
publish: true
---

# \<kendo:notification-position\>

This setting applies to popup notifications only, i.e. in cases when appendTo is not set.
It determines the position of the first notification on the screen, as well as whether the notifications will move together with the page content during scrolling.
top takes precedence over bottom and left takes precedence over right.

#### Example
    <kendo:notification>
        <kendo:notification-position></kendo:notification-position>
    </kendo:notification>

## Configuration Attributes

### bottom `float`

Determines the pixel position of the first popup notification with regard to the viewport's bottom edge.

#### Example
    <kendo:notification-position bottom="bottom">
    </kendo:notification-position>

### left `float`

Determines the pixel position of the first popup notification with regard to the viewport's left edge.

#### Example
    <kendo:notification-position left="left">
    </kendo:notification-position>

### pinned `boolean`

Determines whether the popup notifications will move together with the other page content during scrolling.

#### Example
    <kendo:notification-position pinned="pinned">
    </kendo:notification-position>

### right `float`

Determines the pixel position of the first popup notification with regard to the viewport's right edge.

#### Example
    <kendo:notification-position right="right">
    </kendo:notification-position>

### top `float`

Determines the position of the first popup notification with regard to the viewport's top edge. Numeric values are treated as pixels.

#### Example
    <kendo:notification-position top="top">
    </kendo:notification-position>

