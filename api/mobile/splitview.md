---
title: kendo.mobile.ui.SplitView
slug: mobile-kendo.mobile.ui.splitview
tags: api,mobile
publish: true
---

# kendo.mobile.ui.SplitView

## Configuration

### style `String`*(default: horizontal)*

 Defines the SplitView style - horizontal or vertical.

## Methods

### destroy
Prepares the **SplitView** for safe removal from DOM. Detaches all event handlers and removes jQuery.data attributes to avoid memory leaks. Calls destroy method of any child Kendo widgets.

> **Important:** This method does not remove the SplitView element from DOM.

#### Example

    var splitView = $("#splitView").data("kendoMobileSplitView");

    // detach events
    splitView.destroy();

## Events

### init

Fires after the mobile SplitView and its child widgets are initialized.

#### Event Data

##### e.view `jQuery`

The mobile SplitView instance

### show

Fires when the mobile SplitView becomes visible.

#### Event Data

##### e.view `jQuery`

The mobile SplitView instance
