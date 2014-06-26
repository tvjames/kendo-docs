---
title: StockChartCategoryAxisItemNotesLabel
---

# \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel

A PHP class representing the label setting of StockChartCategoryAxisItemNotes.


## Methods

### background
The background color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->background('value');
    ?>

### border

The border of the label.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabelBorder|array`


#### Example - using [\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabelBorder](/api/wrappers/php/Kendo/Dataviz/UI/StockChartCategoryAxisItemNotesLabelBorder)
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $border = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabelBorder();
    $color = 'value';
    $border->color($color);
    $label->border($border);
    ?>

#### Example - using array

    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $color = 'value';
    $label->border(array('color' => $color));
    ?>

### color
The text color of the label. Accepts a valid CSS color string, including hex and rgb.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->color('value');
    ?>

### font
The font style of the label.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->font('value');
    ?>

### format
The format used to display the notes label. Uses kendo.format. Contains one placeholder ("{0}") which represents the category value.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->format('value');
    ?>

### position
The position of the labels.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->position('value');
    ?>

### rotation
The rotation angle of the label. By default the label are not rotated.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->rotation(1);
    ?>

### template
The template which renders the labels.The fields which can be used in the template are:

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `string|\Kendo\JavaScriptFunction`



#### Example  - using string
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->template('value');
    ?>

#### Example  - using \Kendo\JavaScriptFunction
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->template(new \Kendo\JavaScriptFunction('function() { }'));
    ?>

### visible
If set to true the chart will display the category notes label. By default the category notes label are visible.

#### Returns
`\Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel`

#### Parameters

##### $value `boolean`



#### Example 
    <?php
    $label = new \Kendo\Dataviz\UI\StockChartCategoryAxisItemNotesLabel();
    $label->visible(true);
    ?>

