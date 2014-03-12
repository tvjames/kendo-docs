---
title: NotificationTemplate
slug: php-ui-notificationtemplate
tags: api, php
publish: true
---

# \Kendo\UI\NotificationTemplate

A PHP class representing the template setting of NotificationTemplates.


## Methods

### template
Defines a Kendo UI template to be used with the corresponding notification type. Either templates.template or templates.templateId must be set.See the example above.

#### Returns
`\Kendo\UI\NotificationTemplate`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $template = new \Kendo\UI\NotificationTemplate();
    $template->template('value');
    ?>

### templateId
Defines a client ID of an external Kendo UI template to be used with the corresponding notification type. Do not include the # sign with the ID.
Either templates.template or templates.templateId must be set.See the example above.

#### Returns
`\Kendo\UI\NotificationTemplate`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $template = new \Kendo\UI\NotificationTemplate();
    $template->templateId('value');
    ?>

### type
Required. Specified a unique identifier, which is used to retrieve the correct template when a notification of this type is shown.See the example above.

#### Returns
`\Kendo\UI\NotificationTemplate`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $template = new \Kendo\UI\NotificationTemplate();
    $template->type('value');
    ?>

