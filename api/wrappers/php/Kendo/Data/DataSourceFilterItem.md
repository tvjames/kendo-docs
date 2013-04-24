---
title: DataSourceFilterItem
slug: php-data-datasourcefilteritem
tags: api, php
publish: true
---

# \Kendo\Data\DataSourceFilterItem

A PHP class representing the filterItem setting of DataSourceFilter.


## Methods

### field
The data item field to which the filter operator is applied.

#### Returns
`\Kendo\Data\DataSourceFilterItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $filterItem = new \Kendo\Data\DataSourceFilterItem();
    $filterItem->field('value');
    ?>

### operator
The filter operator (comparison). The supported operators are: "eq" (equal to), "neq" (not equal to), "lt" (less than), "lte" (less than or equal to), "gt" (greater than), "gte" (greater than or equal to),
"startswith", "endswith", "contains". The last three are supported only for string fields.

#### Returns
`\Kendo\Data\DataSourceFilterItem`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $filterItem = new \Kendo\Data\DataSourceFilterItem();
    $filterItem->operator('value');
    ?>

### value
The value to which the field is compared. The value must be from the same type as the field.

#### Returns
`\Kendo\Data\DataSourceFilterItem`

#### Parameters

##### $value ``



