---
title: notification-template
slug: jsp-notification-template
tags: api, java
publish: true
---

# \<kendo:notification-template\>

Describes the HTML markup of the different notification types as Kendo UI template strings. The built-in types are "info", "success", "warning" and "error".This documentation section assumes that you are familiar with Kendo UI templates.

#### Example
    <kendo:notification-templates>
        <kendo:notification-template></kendo:notification-template>
    </kendo:notification-templates>

## Configuration Attributes

### template `java.lang.String`

Defines a Kendo UI template to be used with the corresponding notification type. Either templates.template or templates.templateId must be set.See the example above.

#### Example
    <kendo:notification-template template="template">
    </kendo:notification-template>

### templateId `java.lang.String`

Defines a client ID of an external Kendo UI template to be used with the corresponding notification type. Do not include the # sign with the ID.
Either templates.template or templates.templateId must be set.See the example above.

#### Example
    <kendo:notification-template templateId="templateId">
    </kendo:notification-template>

### type `java.lang.String`

Required. Specified a unique identifier, which is used to retrieve the correct template when a notification of this type is shown.See the example above.

#### Example
    <kendo:notification-template type="type">
    </kendo:notification-template>

