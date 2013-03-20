---
title: Technical Requirements
meta_title: Technical Requirements for using Kendo UI JavaScript framework
meta_description: Check browser and platform support and prerequisites for best performance when working with Kendo UI.
slug: gs-technical-requirements
publish: true
---

# Technical Requirements for using Kendo UI

Below are the system requirements for the Kendo UI Framework.

### Supported Desktop Browsers

<table class="devices-platforms stripes">
   <tbody>
        <tr>
            <th class="browsers"></th>
            <th class="browsers-windows" style="width: 100px">Windows</th>
            <th class="browsers-mac" style="width: 100px">Mac OS</th>
            <th class="browsers" style="width: 100px">Linux</th>
        </tr>
        <tr>
           <td><span class="ie"></span>Internet Explorer</td>
           <td>7.0 +</td>
           <td>-</td>
           <td>-</td>
        </tr>
        <tr>
            <td><span class="firefox"></span>Firefox</td>
            <td><a href="http://www.mozilla.org/en-US/firefox/organizations/">ESR</a> +</td>
            <td><a href="http://www.mozilla.org/en-US/firefox/organizations/">ESR</a> +</td>
            <td><a href="http://www.mozilla.org/en-US/firefox/organizations/">ESR</a> +</td>
        </tr>
        <tr>
            <td><span class="chrome"></span>Chrome</td>
            <td>Yes</td>
            <td>Yes</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td><span class="opera"></span>Opera</td>
            <td>11.0 +</td>
            <td>11.0 +</td>
            <td>11.0 +</td>
        </tr>
        <tr>
            <td><span class="safari"></span>Safari</td>
            <td>-</td>
            <td>5.0 +</td>
            <td>-</td>
        </tr>
    </tbody>
</table>

**NOTES:**

* Browsers in BETA stage are not supported
* Internet Explorer Quirksmode is not supported as it uses IE 5.5 rendering engine. Always specify [DOCTYPE](http://reference.sitepoint.com/html/doctypes) on your pages!

### Kendo UI Platform support

<table class="devices-platforms stripes">
    <tr>
        <th class="platform">Platform</th>
        <th class="platform-version">Version</th>
    </tr>
    <tr>
        <td style="width: 150px;"><span class="windows"></span>Windows</td>
        <td>XP +, Server 2003 +</td>
    </tr>
    <tr>
        <td><span class="mac"></span> Mac OS</td>
        <td>OS X +</td>
    </tr>
    <tr>
        <td><span class="android"></span> Android</td>
        <td>2.2 +</td>
    </tr>
    <tr>
        <td><span class="ios"></span> iOS</td>
        <td>4.0 +</td>
    </tr>
    <tr>
        <td><span class="blackberry"></span>BlackBerry</td>
        <td>7.0+</td>
    </tr>
    <tr>
        <td><span class="blackberry"></span>Windows Phone</td>
        <td>8.0+</td>
    </tr>
</table>

**NOTES:**

* Kendo UI DataViz is not supported on Android 2.x.
* Hybrid mouse and touch devices are supported (for instance IE10, Chrome and Firefox on Windows 8).

### Kendo UI Mobile Device Compatibility

Kendo UI Mobile currently supports the default browsers on

* iOS 4.0+
* Android 2.2+
* Windows Phone 8+ 
* BlackBerry 7.0+ touchscreen devices.

Chrome for Android is also supported.

## Prerequisites:

* JavaScript must be enabled on all browsers

For best performance:

* 'Disable script debugging' in the browser's config options must be checked
* Caching on Internet Explorer must be activated
