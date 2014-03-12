---
title: scheduler-footer
slug: jsp-scheduler-footer
tags: api, java
publish: true
---

# \<kendo:scheduler-footer\>

If set to false the footer of the scheduler would not be displayed.

#### Example
    <kendo:scheduler>
        <kendo:scheduler-footer></kendo:scheduler-footer>
    </kendo:scheduler>

## Configuration Attributes

### command `java.lang.Object`

Sets the command which will be displayed in the scheduler footer. Currently only "workDay" option is supported. If the option is set  to false, the "workDay" button will be removed from the footer.

#### Example
    <kendo:scheduler-footer command="command">
    </kendo:scheduler-footer>

