---
title: DateTimePickerMonth
slug: php-ui-datetimepickermonth
tags: api, php
publish: true
---

# \Kendo\UI\DateTimePickerMonth

A PHP class representing the month setting of DateTimePicker.


## Methods

### content

Sets the HTML content of the DateTimePickerMonth.

#### Returns

`DateTimePickerMonth`

#### $value `string`

#### Example

    <?php
    $month = new \Kendo\UI\DateTimePickerMonth();
    $month->content('<strong>Content</strong>');
    ?>


### _empty
The template used for rendering cells in the calendar "month" view, which are outside the min/max range.

#### Returns
`\Kendo\UI\DateTimePickerMonth`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $month = new \Kendo\UI\DateTimePickerMonth();
    $month->_empty('value');
    ?>

