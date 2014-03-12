---
title: TreeViewMessages
slug: php-ui-treeviewmessages
tags: api, php
publish: true
---

# \Kendo\UI\TreeViewMessages

A PHP class representing the messages setting of TreeView.


## Methods

### loading
The text message shown while the root level items are loading.

#### Returns
`\Kendo\UI\TreeViewMessages`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $messages = new \Kendo\UI\TreeViewMessages();
    $messages->loading('value');
    ?>

### requestFailed
The text message shown when an error occurs while fetching the content.

#### Returns
`\Kendo\UI\TreeViewMessages`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $messages = new \Kendo\UI\TreeViewMessages();
    $messages->requestFailed('value');
    ?>

### retry
The text message shown in the retry button.

#### Returns
`\Kendo\UI\TreeViewMessages`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $messages = new \Kendo\UI\TreeViewMessages();
    $messages->retry('value');
    ?>

