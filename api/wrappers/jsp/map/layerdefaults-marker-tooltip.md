---
title: map-layerDefaults-marker-tooltip
slug: jsp-map-layerDefaults-marker-tooltip
tags: api, java
publish: true
---

# \<kendo:map-layerDefaults-marker-tooltip\>

The default Kendo UI Tooltip options for all marker layers.

#### Example
    <kendo:map-layerDefaults-marker>
        <kendo:map-layerDefaults-marker-tooltip></kendo:map-layerDefaults-marker-tooltip>
    </kendo:map-layerDefaults-marker>

## Configuration Attributes

### autoHide `boolean`

Specifies if the tooltip will be hidden when mouse leaves the target element. If set to false a close button will be shown within tooltip. If set to false, showAfter is specified and the showOn is set to "mouseenter" the Tooltip will be displayed after the given timeout even if the element is no longer hovered.

#### Example
    <kendo:map-layerDefaults-marker-tooltip autoHide="autoHide">
    </kendo:map-layerDefaults-marker-tooltip>

### callout `boolean`

Specifies if the tooltip callout will be displayed.

#### Example
    <kendo:map-layerDefaults-marker-tooltip callout="callout">
    </kendo:map-layerDefaults-marker-tooltip>

### height `float`

The height (in pixels) of the tooltip.

#### Example
    <kendo:map-layerDefaults-marker-tooltip height="height">
    </kendo:map-layerDefaults-marker-tooltip>

### iframe `boolean`

Explicitly states whether content iframe should be created.

#### Example
    <kendo:map-layerDefaults-marker-tooltip iframe="iframe">
    </kendo:map-layerDefaults-marker-tooltip>

### position `java.lang.String`

The position relative to the target element, at which the tooltip will be shown. Predefined values are "bottom", "top", "left", "right", "center".

#### Example
    <kendo:map-layerDefaults-marker-tooltip position="position">
    </kendo:map-layerDefaults-marker-tooltip>

### showAfter `float`

Specify the delay in milliseconds before the tooltip is shown. This option is ignored if showOn is set to "click" or "focus".

#### Example
    <kendo:map-layerDefaults-marker-tooltip showAfter="showAfter">
    </kendo:map-layerDefaults-marker-tooltip>

### showOn `java.lang.String`

The event on which the tooltip will be shown. Predefined values are "mouseenter", "click" and "focus".

#### Example
    <kendo:map-layerDefaults-marker-tooltip showOn="showOn">
    </kendo:map-layerDefaults-marker-tooltip>

### template `java.lang.String`

The template which renders the tooltip content.The fields which can be used in the template are:

#### Example
    <kendo:map-layerDefaults-marker-tooltip template="template">
    </kendo:map-layerDefaults-marker-tooltip>

### width `float`

The width (in pixels) of the tooltip.

#### Example
    <kendo:map-layerDefaults-marker-tooltip width="width">
    </kendo:map-layerDefaults-marker-tooltip>


##  Configuration JSP Tags

### kendo:map-layerDefaults-marker-tooltip-animation

A collection of {Animation} objects, used to change default animations. A value of false
will disable all animations in the widget.

More documentation is available at [kendo:map-layerDefaults-marker-tooltip-animation](/kendo-ui/api/wrappers/jsp/map/layerdefaults-marker-tooltip-animation).

#### Example

    <kendo:map-layerDefaults-marker-tooltip>
        <kendo:map-layerDefaults-marker-tooltip-animation></kendo:map-layerDefaults-marker-tooltip-animation>
    </kendo:map-layerDefaults-marker-tooltip>

