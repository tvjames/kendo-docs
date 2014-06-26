---
title: GanttMessages
---

# \Kendo\UI\GanttMessages

A PHP class representing the messages setting of Gantt.


## Methods

### actions

The configuration of the gantt action messages. Use this option to customize or localize the gantt action messages.

#### Returns
`\Kendo\UI\GanttMessages`

#### Parameters

##### $value `\Kendo\UI\GanttMessagesActions|array`


#### Example - using [\Kendo\UI\GanttMessagesActions](/api/wrappers/php/Kendo/UI/GanttMessagesActions)
    <?php
    $messages = new \Kendo\UI\GanttMessages();
    $actions = new \Kendo\UI\GanttMessagesActions();
    $addChild = 'value';
    $actions->addChild($addChild);
    $messages->actions($actions);
    ?>

#### Example - using array

    <?php
    $messages = new \Kendo\UI\GanttMessages();
    $addChild = 'value';
    $messages->actions(array('addChild' => $addChild));
    ?>

### views

The configuration of the gantt view messages. Use this option to customize or localize the gantt view messages.

#### Returns
`\Kendo\UI\GanttMessages`

#### Parameters

##### $value `\Kendo\UI\GanttMessagesViews|array`


#### Example - using [\Kendo\UI\GanttMessagesViews](/api/wrappers/php/Kendo/UI/GanttMessagesViews)
    <?php
    $messages = new \Kendo\UI\GanttMessages();
    $views = new \Kendo\UI\GanttMessagesViews();
    $day = 'value';
    $views->day($day);
    $messages->views($views);
    ?>

#### Example - using array

    <?php
    $messages = new \Kendo\UI\GanttMessages();
    $day = 'value';
    $messages->views(array('day' => $day));
    ?>

