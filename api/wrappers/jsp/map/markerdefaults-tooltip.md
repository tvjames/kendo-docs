---
title: map-markerDefaults-tooltip
slug: jsp-map-markerDefaults-tooltip
tags: api, java
publish: true
---

# \<kendo:map-markerDefaults-tooltip\>

Default Kendo UI Tooltip options for this marker.

#### Example
    <kendo:map-markerDefaults>
        <kendo:map-markerDefaults-tooltip></kendo:map-markerDefaults-tooltip>
    </kendo:map-markerDefaults>

## Configuration Attributes

### autoHide `boolean`

Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Example
    <kendo:map-markerDefaults-tooltip autoHide="autoHide">
    </kendo:map-markerDefaults-tooltip>

### callout `boolean`

Specifies if the tooltip callout will be displayed.

#### Example
    <kendo:map-markerDefaults-tooltip callout="callout">
    </kendo:map-markerDefaults-tooltip>

### height `float`

The height (in pixels) of the tooltip.

#### Example
    <kendo:map-markerDefaults-tooltip height="height">
    </kendo:map-markerDefaults-tooltip>

### iframe `boolean`

Explicitly states whether content iframe should be created.

#### Example
    <kendo:map-markerDefaults-tooltip iframe="iframe">
    </kendo:map-markerDefaults-tooltip>

### position `java.lang.String`

The position relative to the target element, at which the tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Example
    <kendo:map-markerDefaults-tooltip position="position">
    </kendo:map-markerDefaults-tooltip>

### showAfter `float`

Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Example
    <kendo:map-markerDefaults-tooltip showAfter="showAfter">
    </kendo:map-markerDefaults-tooltip>

### showOn `java.lang.String`

The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Example
    <kendo:map-markerDefaults-tooltip showOn="showOn">
    </kendo:map-markerDefaults-tooltip>

### template `java.lang.String`

The template which renders the tooltip content.The fields which can be used in the template are:

#### Example
    <kendo:map-markerDefaults-tooltip template="template">
    </kendo:map-markerDefaults-tooltip>

### width `float`

The width (in pixels) of the tooltip.

#### Example
    <kendo:map-markerDefaults-tooltip width="width">
    </kendo:map-markerDefaults-tooltip>


##  Configuration JSP Tags

### kendo:map-markerDefaults-tooltip-animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

More documentation is available at [kendo:map-markerDefaults-tooltip-animation](/kendo-ui/api/wrappers/jsp/map/markerdefaults-tooltip-animation).

#### Example

    <kendo:map-markerDefaults-tooltip>
        <kendo:map-markerDefaults-tooltip-animation></kendo:map-markerDefaults-tooltip-animation>
    </kendo:map-markerDefaults-tooltip>

