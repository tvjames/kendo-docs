---
title: DiagramLayout
---

# \Kendo\Dataviz\UI\DiagramLayout

A PHP class representing the layout setting of Diagram.


## Methods

### endRadialAngle
Defines where the circle/arc ends. The positive direction is clockwise and the angle is in degrees. This setting is specific to the radial tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->endRadialAngle(1);
    ?>

### grid

Each layout algorithm has a different set of parameters customizing the layout but they also all have a common collection of parameters which relate to the way 'pieces' of a diagram are organized.
A diagram can have in general disconnected pieces, known as components, which can be organized in a way independent of the way a component on its own is arranged. In the picture above, this is one diagram consisting of four components.When you apply a certain layout an analysis will first split the diagram in components, arrange each component individually and thereafter organize the components in a grid. The common parameters referred above deal with this grid layout, they define the width, margin and padding of the (invisible) grid used to organize the components.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `\Kendo\Dataviz\UI\DiagramLayoutGrid|array`


#### Example - using [\Kendo\Dataviz\UI\DiagramLayoutGrid](/api/wrappers/php/Kendo/Dataviz/UI/DiagramLayoutGrid)
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $grid = new \Kendo\Dataviz\UI\DiagramLayoutGrid();
    $componentSpacingX = 1;
    $grid->componentSpacingX($componentSpacingX);
    $layout->grid($grid);
    ?>

#### Example - using array

    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $componentSpacingX = 1;
    $layout->grid(array('componentSpacingX' => $componentSpacingX));
    ?>

### horizontalSeparation
Either the distance between the siblings if the tree is up/down or between levels if the tree is left/right. In tipOver tree layout this setting is used only for the direct children of the root

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->horizontalSeparation(1);
    ?>

### iterations
The number of times that all the forces in the diagram are being calculated and balanced. The default is set at 300, which should be enough for diagrams up to a hundred nodes. By increasing this parameter you increase the correctness of the simulation but it does not always lead to a more stable topology. In some situations a diagram simply does not have a stable minimum energy state and oscillates (globally or locally) between the minima. In such a situation increasing the iterations will not result in a better topology.In situations where there is enough symmetry in the diagram the increased number of iterations does lead to a better layout. In the example below the 100 iterations was not enough to bring the grid to a stable state while 300 iterations did bring all the nodes in such a position that the (virtual) energy of the diagram is a minimum.This setting is specific to the force-directed layout

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->iterations(1);
    ?>

### layerSeparation
The height (in a vertical layout) or width (in a horizontal layout) between the layers.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->layerSeparation(1);
    ?>

### nodeDistance
In the force-directed layout this setting defines the optimal length between 2 nodes, which directly correlates to the state of the link between them. If a link is longer than there will be a force pulling the nodes together, if the link is shorter the force will push the nodes apart. The optimal length is more and indication in the algorithm than a guarantee that all nodes will be at this distance. The result of the layout is really a combination of the incidence structure of the diagram, the initial topology (positions of the nodes) and the number of iterations.In the layered layout it defines the minimum distance between nodes on the same level. Due to the nature of the algorithm this distance will only be respected if the the whole crossing of links and optimimzation does not induce a shift of the siblings.This setting is specific to the force-directed layout and layered layout

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->nodeDistance(1);
    ?>

### radialFirstLevelSeparation
Controls the distance between the root and the immediate children of the root. This setting is specific to the radial tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->radialFirstLevelSeparation(1);
    ?>

### radialSeparation
Defines the radial separation between the levels (except the first one which is defined by the aforementioned radialFirstLevelSeparation). This setting is specific to the radial tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->radialSeparation(1);
    ?>

### startRadialAngle
Defines where the circle/arc starts. The positive direction is clockwise and the angle is in degrees. This setting is specific to the radial tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->startRadialAngle(1);
    ?>

### subtype
The layout subtype.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->subtype('value');
    ?>

### type
The layout type.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `string`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->type('value');
    ?>

### underneathHorizontalOffset
Defines the horizontal offset from a child with respect to its parent. This setting is specific to the tipOver tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->underneathHorizontalOffset(1);
    ?>

### underneathVerticalSeparation
Defines the vertical separation between siblings and sub-branches. This setting is specific to the tipOver tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->underneathVerticalSeparation(1);
    ?>

### underneathVerticalTopOffset
Defines the vertical separation between a parent and its first child. This offsets the whole set of children with respect to its parent. This setting is specific to the tipOver tree layout.

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->underneathVerticalTopOffset(1);
    ?>

### verticalSeparation
Either the distance between levels if the tree is up/down or between siblings if the tree is left/right. This property is not used in tipOver tree layout but rather replaced with three additional ones - underneathVerticalTopOffset, underneathVerticalSeparation and underneathHorizontalOffset

#### Returns
`\Kendo\Dataviz\UI\DiagramLayout`

#### Parameters

##### $value `float`



#### Example 
    <?php
    $layout = new \Kendo\Dataviz\UI\DiagramLayout();
    $layout->verticalSeparation(1);
    ?>

