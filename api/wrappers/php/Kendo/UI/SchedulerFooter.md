---
title: SchedulerFooter
slug: php-ui-schedulerfooter
tags: api, php
publish: true
---

# \Kendo\UI\SchedulerFooter

A PHP class representing the footer setting of Scheduler.


## Methods

### command
Sets the command which will be displayed in the scheduler footer. Currently only "workDay" option is supported. If the option is set  to false, the "workDay" button will be removed from the footer.

#### Returns
`\Kendo\UI\SchedulerFooter`

#### Parameters

##### $value `string|boolean`



#### Example  - using string
    <?php
    $footer = new \Kendo\UI\SchedulerFooter();
    $footer->command('value');
    ?>

#### Example  - using boolean
    <?php
    $footer = new \Kendo\UI\SchedulerFooter();
    $footer->command(true);
    ?>

