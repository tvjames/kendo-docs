---
title: editor-serialization
slug: jsp-editor-serialization
tags: api, java
publish: true
---

# \<kendo:editor-serialization\>

Allows setting of serialization options.

#### Example
    <kendo:editor>
        <kendo:editor-serialization></kendo:editor-serialization>
    </kendo:editor>

## Configuration Attributes

### entities `boolean`

Indicates whether the characters outside the ASCII range will be encoded as HTML entities. By default, they are encoded.

#### Example
    <kendo:editor-serialization entities="entities">
    </kendo:editor-serialization>

