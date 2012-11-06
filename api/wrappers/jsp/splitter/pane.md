---
title: splitter-pane
slug: jsp-splitter-pane
tags: api, java
publish: true
---

# \<kendo:splitter-pane\>
A JSP tag representing Kendo Pane.

#### Example
    <kendo:splitter-panes>
        <kendo:splitter-pane></kendo:splitter-pane>
    </kendo:splitter-panes>


## Configuration Attributes


### collapsed `boolean`

Specifies whether a pane is initially collapsed (

#### Example
    <kendo:splitter collapsed="collapsed">
    </kendo:splitter>



### collapsible `boolean`

Specifies whether a pane is collapsible (

#### Example
    <kendo:splitter collapsible="collapsible">
    </kendo:splitter>



### contentUrl `boolean`

Specifies the URL from which to load the content of a pane.

#### Example
    <kendo:splitter contentUrl="contentUrl">
    </kendo:splitter>



### max `String`

Specifies the maximum size of a pane defined as pixels (i.e. "200px") or as a percentage (i.e. "50%"). The
size of a resized pane cannot exceed the defined maximum size.

#### Example
    <kendo:splitter max="max">
    </kendo:splitter>



### min `String`

Specifies the minimum size of a pane defined as pixels (i.e. "200px") or as a percentage (i.e. "50%"). The
size of a resized pane cannot be less than the defined minimum size.

#### Example
    <kendo:splitter min="min">
    </kendo:splitter>



### resizable `boolean`

Specifies whether a pane is resizable (

#### Example
    <kendo:splitter resizable="resizable">
    </kendo:splitter>



### scrollable `boolean`

Specifies whether a pane is scrollable (

#### Example
    <kendo:splitter scrollable="scrollable">
    </kendo:splitter>



### size `String`

Specifies the size of a pane defined as pixels (i.e. "200px") or as a percentage (i.e. "50%"). Note: This
value must not exceed

#### Example
    <kendo:splitter size="size">
    </kendo:splitter>


