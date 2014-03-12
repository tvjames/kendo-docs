---
title: SchedulerMessagesRecurrenceEditor
slug: php-ui-schedulermessagesrecurrenceeditor
tags: api, php
publish: true
---

# \Kendo\UI\SchedulerMessagesRecurrenceEditor

A PHP class representing the recurrenceEditor setting of SchedulerMessages.


## Methods

### daily

The configuration of the scheduler recurrence editor daily messages. Use this option to customize or localize the scheduler recurrence editor daily messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorDaily|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorDaily](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorDaily)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $daily = new \Kendo\UI\SchedulerMessagesRecurrenceEditorDaily();
    $interval = 'value';
    $daily->interval($interval);
    $recurrenceEditor->daily($daily);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $interval = 'value';
    $recurrenceEditor->daily(array('interval' => $interval));
    ?>

### end

The configuration of the scheduler recurrence editor end messages. Use this option to customize or localize the scheduler recurrence editor end messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorEnd|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorEnd](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorEnd)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $end = new \Kendo\UI\SchedulerMessagesRecurrenceEditorEnd();
    $after = 'value';
    $end->after($after);
    $recurrenceEditor->end($end);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $after = 'value';
    $recurrenceEditor->end(array('after' => $after));
    ?>

### frequencies

The configuration of the scheduler recurrence editor frequencies messages. Use this option to customize or localize the scheduler recurrence editor frequencies messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorFrequencies|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorFrequencies](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorFrequencies)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $frequencies = new \Kendo\UI\SchedulerMessagesRecurrenceEditorFrequencies();
    $daily = 'value';
    $frequencies->daily($daily);
    $recurrenceEditor->frequencies($frequencies);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $daily = 'value';
    $recurrenceEditor->frequencies(array('daily' => $daily));
    ?>

### monthly

The configuration of the scheduler recurrence editor monthly messages. Use this option to customize or localize the scheduler recurrence editor monthly messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorMonthly|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorMonthly](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorMonthly)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $monthly = new \Kendo\UI\SchedulerMessagesRecurrenceEditorMonthly();
    $day = 'value';
    $monthly->day($day);
    $recurrenceEditor->monthly($monthly);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $day = 'value';
    $recurrenceEditor->monthly(array('day' => $day));
    ?>

### offsetPositions

The configuration of the scheduler recurrence editor offsetPositions messages. Use this option to customize or localize the scheduler recurrence editor offsetPositions messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorOffsetPositions|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorOffsetPositions](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorOffsetPositions)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $offsetPositions = new \Kendo\UI\SchedulerMessagesRecurrenceEditorOffsetPositions();
    $first = 'value';
    $offsetPositions->first($first);
    $recurrenceEditor->offsetPositions($offsetPositions);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $first = 'value';
    $recurrenceEditor->offsetPositions(array('first' => $first));
    ?>

### weekdays

The configuration of the scheduler recurrence editor week days messages. Use these options to customize or localize the scheduler recurrence editor weekdays messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorWeekdays|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorWeekdays](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorWeekdays)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $weekdays = new \Kendo\UI\SchedulerMessagesRecurrenceEditorWeekdays();
    $day = 'value';
    $weekdays->day($day);
    $recurrenceEditor->weekdays($weekdays);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $day = 'value';
    $recurrenceEditor->weekdays(array('day' => $day));
    ?>

### weekly

The configuration of the scheduler recurrence editor weekly messages. Use this option to customize or localize the scheduler recurrence editor weekly messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorWeekly|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorWeekly](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorWeekly)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $weekly = new \Kendo\UI\SchedulerMessagesRecurrenceEditorWeekly();
    $interval = 'value';
    $weekly->interval($interval);
    $recurrenceEditor->weekly($weekly);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $interval = 'value';
    $recurrenceEditor->weekly(array('interval' => $interval));
    ?>

### yearly

The configuration of the scheduler recurrence editor yearly messages. Use this option to customize or localize the scheduler recurrence editor yearly messages.

#### Returns
`\Kendo\UI\SchedulerMessagesRecurrenceEditor`

#### Parameters

##### $value `\Kendo\UI\SchedulerMessagesRecurrenceEditorYearly|array`


#### Example - using [\Kendo\UI\SchedulerMessagesRecurrenceEditorYearly](/kendo-ui/api/wrappers/php/Kendo/UI/SchedulerMessagesRecurrenceEditorYearly)
    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $yearly = new \Kendo\UI\SchedulerMessagesRecurrenceEditorYearly();
    $interval = 'value';
    $yearly->interval($interval);
    $recurrenceEditor->yearly($yearly);
    ?>

#### Example - using array

    <?php
    $recurrenceEditor = new \Kendo\UI\SchedulerMessagesRecurrenceEditor();
    $interval = 'value';
    $recurrenceEditor->yearly(array('interval' => $interval));
    ?>

