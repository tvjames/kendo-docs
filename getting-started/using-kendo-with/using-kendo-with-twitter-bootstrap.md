---
title: Using Kendo With Twitter Bootstrap
slug: gs-using-kendo-with-twitter-bootstrap
tags: 101, Getting Started, Twitter Bootstrap
publish: true
---

# Using Kendo with Twitter Bootstrap

Kendo UI widgets can be used seamlessly alongside [Twitter Bootstrap](http://getbootstrap.com/).

To replicate the look and feel of Bootstrap in Kendo UI, take the following steps:

  1. Use the kendo.common-bootstrap.min.css instead of kendo.common.css. This ensures that the dimensions of Kendo UI will match the ones in Bootstrap.
  2. Use the kendo.bootstrap.min.css theme, which applies the Bootstrap colors to the Kendo UI widgets.

The following example demonstrates the necessary links to these stylesheets (replace VERSION with the Kendo UI version that you want to use):

    <link rel="stylesheet" href="http://cdn.kendostatic.com/VERSION/styles/kendo.common-bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.kendostatic.com/VERSION/styles/kendo.bootstrap.min.css">

While these files will ensure that Kendo UI looks a lot like Bootstrap, it is not mandatory to use them. The default Kendo UI common.css and any other theme will style the widgets differently, but they will continue to function properly.

## Using the responsive features of Bootstrap

Using the responsive features of Bootstrap does not differ from other responsive sites; refer to the help topic on [how to use Kendo UI in responsive web pages](./using-kendo-in-responsive-web-pages).

## Using a customized version of Bootstrap

If you have customized the colors of Bootstrap before using it, and need Kendo UI to match the newly chosen colors, you will need to customize Kendo UI's bootstrap theme through the [Kendo UI ThemeBuilder](http://demos.telerik.com/kendo-ui/themebuilder/web.html).
