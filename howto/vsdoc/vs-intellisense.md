---
title: VS Intellisense
page_title: Kendo UI Visual Studio Intellisense Documentation
description: Learn how to reference Kendo UI Visual Studio Intellisense by using an additional vsdoc Javascript file.
---

# KendoUI Visual Studio Intellisense

Kendo UI provides intellisense using an additional vsdoc javascript file. The approach was initially described in Scott Guthrie's blog post [jQuery Intellisense in VS 2008](http://weblogs.asp.net/scottgu/archive/2008/11/21/jquery-intellisense-in-vs-2008.aspx).
Visual Studio 2008 SP1 (or later) is needed. It also works with Visual Web Developer (free).

## Installation

Each bundle package contains a *vsdoc* directory, which contains a vsdoc.js and intellisense.js files. Visual Studio 2008 SP1 (or later) users should put the vsdoc.js file next to kendoui bundle script, Visual Studio 2012 users should use intellisense.js file. Make sure its naming prefix matches the kendoui bundle name.

- Visual Studio 2008 SP1

![Solution Explorer](/howto/vsdoc/solution-explorer.png)

- Visual Studio 2012

![Solution Explorer VS2012](/howto/vsdoc/solution-explorer-vs2012.png)

## Features

### Widget Initialization Configuration Options

![jquery plugin](/howto/vsdoc/jquery-plugin.png)

### Widget accessors

![jquery plugin](/howto/vsdoc/jquery-accessor.png)

### Widget Methods

![jquery plugin](/howto/vsdoc/widget-method.png)

## Referencing

There are two ways to reference the intellisense.

1. When the script is directly added to a page as shown above.
The `kendo.all-vsdoc.js` and `kendo.all.min.intellisense.js` files are also available on the [Kendo UI CDN](/getting-started/javascript-dependencies#cdn), in the same folder as the regular JS files.
1. Using a reference hint from within an external JS file as shown below

![script reference](/howto/vsdoc/js-reference.png)