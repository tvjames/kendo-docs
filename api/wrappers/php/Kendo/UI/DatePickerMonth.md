---
title: DatePickerMonth
---

# \Kendo\UI\DatePickerMonth

A PHP class representing the month setting of DatePicker.


## Methods

### content

Sets the HTML content of the DatePickerMonth.

#### Returns

`DatePickerMonth`

#### $value `string`

#### Example

    <?php
    $month = new \Kendo\UI\DatePickerMonth();
    $month->content('<strong>Content</strong>');
    ?>


### _empty
The template used for rendering cells in the "month" view, which are outside the min/max range.

#### Returns
`\Kendo\UI\DatePickerMonth`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $month = new \Kendo\UI\DatePickerMonth();
    $month->_empty('value');
    ?>

