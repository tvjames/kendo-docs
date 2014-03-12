---
title: EditorSerialization
slug: php-ui-editorserialization
tags: api, php
publish: true
---

# \Kendo\UI\EditorSerialization

A PHP class representing the serialization setting of Editor.


## Methods

### entities
Indicates whether the characters outside the ASCII range will be encoded as HTML entities. By default, they are encoded.

#### Returns
`\Kendo\UI\EditorSerialization`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $serialization = new \Kendo\UI\EditorSerialization();
    $serialization->entities(true);
    ?>

