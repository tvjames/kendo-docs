---
title: map-marker-tooltip
---

# \<kendo:map-marker-tooltip\>

Kendo UI Tooltip options for this marker.

#### Example
    <kendo:map-marker>
        <kendo:map-marker-tooltip></kendo:map-marker-tooltip>
    </kendo:map-marker>

## Configuration Attributes

### autoHide `boolean`

Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Example
    <kendo:map-marker-tooltip autoHide="autoHide">
    </kendo:map-marker-tooltip>

### callout `boolean`

Specifies if the tooltip callout will be displayed.

#### Example
    <kendo:map-marker-tooltip callout="callout">
    </kendo:map-marker-tooltip>

### height `float`

The height (in pixels) of the tooltip.

#### Example
    <kendo:map-marker-tooltip height="height">
    </kendo:map-marker-tooltip>

### iframe `boolean`

Explicitly states whether content iframe should be created.

#### Example
    <kendo:map-marker-tooltip iframe="iframe">
    </kendo:map-marker-tooltip>

### position `java.lang.String`

The position relative to the target element, at which tlhe tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Example
    <kendo:map-marker-tooltip position="position">
    </kendo:map-marker-tooltip>

### showAfter `float`

Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Example
    <kendo:map-marker-tooltip showAfter="showAfter">
    </kendo:map-marker-tooltip>

### showOn `java.lang.String`

The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Example
    <kendo:map-marker-tooltip showOn="showOn">
    </kendo:map-marker-tooltip>

### template `java.lang.String`

The template which renders the tooltip content.The fields which can be used in the template are:

#### Example
    <kendo:map-marker-tooltip template="template">
    </kendo:map-marker-tooltip>

### width `float`

The width (in pixels) of the tooltip.

#### Example
    <kendo:map-marker-tooltip width="width">
    </kendo:map-marker-tooltip>


##  Configuration JSP Tags

### kendo:map-marker-tooltip-animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

More documentation is available at [kendo:map-marker-tooltip-animation](/api/wrappers/jsp/map/marker-tooltip-animation).

#### Example

    <kendo:map-marker-tooltip>
        <kendo:map-marker-tooltip-animation></kendo:map-marker-tooltip-animation>
    </kendo:map-marker-tooltip>

