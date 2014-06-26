---
title: PivotConfigurator
---

# \Kendo\UI\PivotConfigurator

A PHP wrapper for Kendo UI [PivotConfigurator](/api/web/pivotconfigurator).

Inherits from [\Kendo\UI\Widget](/api/wrappers/php/Kendo/UI/Widget).

## Usage

To use PivotConfigurator in a PHP page instantiate a new instance, configure it via the available
configuration [methods](#methods) and output it by `echo`-ing the result of the [render](/api/wrappers/php/Kendo/UI/Widget#render) method.

### Using Kendo PivotConfigurator

    <?php
    // Create a new instance of PivotConfigurator and specify its id
    $pivotConfigurator = new \Kendo\UI\PivotConfigurator('PivotConfigurator');

    // Configure it
    $pivotConfigurator->dataSource(new ())

    // Output it

    echo $pivotConfigurator->render();
    ?>


## Methods

### dataSource

Sets the data source of the dataSource.

#### Returns
`\Kendo\UI\PivotConfigurator`

#### Parameters

##### $value `\Kendo\Data\DataSource|array`

#### Example - using [\Kendo\Data\DataSource](/api/wrappers/php/kendo/data/datasource)

    <?php
    $pivotConfigurator = new \Kendo\UI\PivotConfigurator('PivotConfigurator');
    $dataSource = new \Kendo\Data\DataSource();
    $pivotConfigurator->dataSource($dataSource);
    ?>

#### Example - using array

    <?php
    $pivotConfigurator = new \Kendo\UI\PivotConfigurator('PivotConfigurator');
    $schema = new \Kendo\Data\DataSourceSchema();
    $pivotConfigurator->dataSource(array('schema' => $schema));
    ?>

### messages

The text messages displayed in the fields sections.

#### Returns
`\Kendo\UI\PivotConfigurator`

#### Parameters

##### $value `\Kendo\UI\PivotConfiguratorMessages|array`


#### Example - using [\Kendo\UI\PivotConfiguratorMessages](/api/wrappers/php/Kendo/UI/PivotConfiguratorMessages)
    <?php
    $pivotConfigurator = new \Kendo\UI\PivotConfigurator('PivotConfigurator');
    $messages = new \Kendo\UI\PivotConfiguratorMessages();
    $columns = 'value';
    $messages->columns($columns);
    $pivotConfigurator->messages($messages);
    ?>

#### Example - using array

    <?php
    $pivotConfigurator = new \Kendo\UI\PivotConfigurator('PivotConfigurator');
    $columns = 'value';
    $pivotConfigurator->messages(array('columns' => $columns));
    ?>

