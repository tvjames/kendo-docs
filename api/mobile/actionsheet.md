---
title: kendo.mobile.ui.ActionSheet
slug: mobile-kendo.mobile.ui.actionsheet
tags: api,mobile
publish: true
---

# kendo.mobile.ui.ActionSheet

Represents the Kendo UI Mobile ActionSheet widget. Inherits from [kendo.mobile.ui.Widget](/api/framework/mobilewidget).

## Configuration

### cancel `String`*(default: Cancel)*

 The text of the cancel button.

### popup `Object`

The popup configuration options (tablet only).

### popup.direction `Number | String`*(default: down)*

 The direction to which the popup will expand, relative to the target that opened it.

### popup.height `Number | String`*(default: auto)*

 The height of the popup in pixels.

### popup.width `Number | String`*(default: 240)*

 The width of the popup in pixels.

## Methods

### close

Close the ActionSheet.

### open

Open the ActionSheet.

#### Example

    <ul data-role="listview">
        <li> Foo <a data-role="button" id="button">Delete</a></li>
    </ul>

    <ul data-role="actionsheet" id="actionsheet">
        <li><a data-action="foo">Foo</a></li>
        <li><a data-action="bar">Bar</a></li>
    </ul>

    <script>
        $("#actionsheet").data("kendoMobileActionSheet").open($("#button"));
    </script>

#### Parameters

##### target `jQuery`

(optional) The target element of the ActionSheet, available in the callback methods.

**Notice** The target element is **mandatory** on tablets, as the ActionSheet widget positions itself relative to opening element when a tablet is detected.

##### context `Object`

(optional) The context of the ActionSheet, available in the callback methods.


## Events

### open

Fires when the ActionSheet is opened.

#### Event Data

##### e.target `jQuery`

The invocation target of the ActionSheet.

##### e.context `jQuery`

The defined ActionSheet context.
