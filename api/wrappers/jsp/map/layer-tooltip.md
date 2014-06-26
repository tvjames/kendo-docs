---
title: map-layer-tooltip
---

# \<kendo:map-layer-tooltip\>

The default Kendo UI Tooltip options for data-bound markers.

#### Example
    <kendo:map-layer>
        <kendo:map-layer-tooltip></kendo:map-layer-tooltip>
    </kendo:map-layer>

## Configuration Attributes

### autoHide `boolean`

Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Example
    <kendo:map-layer-tooltip autoHide="autoHide">
    </kendo:map-layer-tooltip>

### callout `boolean`

Specifies if the tooltip callout will be displayed.

#### Example
    <kendo:map-layer-tooltip callout="callout">
    </kendo:map-layer-tooltip>

### height `float`

The height (in pixels) of the tooltip.

#### Example
    <kendo:map-layer-tooltip height="height">
    </kendo:map-layer-tooltip>

### iframe `boolean`

Explicitly states whether content iframe should be created.

#### Example
    <kendo:map-layer-tooltip iframe="iframe">
    </kendo:map-layer-tooltip>

### position `java.lang.String`

The position relative to the target element, at which the tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Example
    <kendo:map-layer-tooltip position="position">
    </kendo:map-layer-tooltip>

### showAfter `float`

Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Example
    <kendo:map-layer-tooltip showAfter="showAfter">
    </kendo:map-layer-tooltip>

### showOn `java.lang.String`

The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Example
    <kendo:map-layer-tooltip showOn="showOn">
    </kendo:map-layer-tooltip>

### template `java.lang.String`

The template which renders the tooltip content.The fields which can be used in the template are:

#### Example
    <kendo:map-layer-tooltip template="template">
    </kendo:map-layer-tooltip>

### width `float`

The width (in pixels) of the tooltip.

#### Example
    <kendo:map-layer-tooltip width="width">
    </kendo:map-layer-tooltip>


##  Configuration JSP Tags

### kendo:map-layer-tooltip-animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

More documentation is available at [kendo:map-layer-tooltip-animation](/api/wrappers/jsp/map/layer-tooltip-animation).

#### Example

    <kendo:map-layer-tooltip>
        <kendo:map-layer-tooltip-animation></kendo:map-layer-tooltip-animation>
    </kendo:map-layer-tooltip>

