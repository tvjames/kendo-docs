---
title: diagram-layout-grid
slug: jsp-diagram-layout-grid
tags: api, java
publish: true
---

# \<kendo:diagram-layout-grid\>

Each layout algorithm has a different set of parameters customizing the layout but they also all have a common collection of parameters which relate to the way 'pieces' of a diagram are organized.
A diagram can have in general disconnected pieces, known as components, which can be organized in a way independent of the way a component on its own is arranged. In the picture above, this is one diagram consisting of four components.When you apply a certain layout an analysis will first split the diagram in components, arrange each component individually and thereafter organize the components in a grid. The common parameters referred above deal with this grid layout, they define the width, margin and padding of the (invisible) grid used to organize the components.

#### Example
    <kendo:diagram-layout>
        <kendo:diagram-layout-grid></kendo:diagram-layout-grid>
    </kendo:diagram-layout>

## Configuration Attributes

### componentSpacingX `float`

defines the horizontal spacing between each component. The default is 50.

#### Example
    <kendo:diagram-layout-grid componentSpacingX="componentSpacingX">
    </kendo:diagram-layout-grid>

### componentSpacingY `float`

defines the vertical spacing between each component. The default is 50.

#### Example
    <kendo:diagram-layout-grid componentSpacingY="componentSpacingY">
    </kendo:diagram-layout-grid>

### offsetX `float`

defines the left offset of the grid layout. The default is 50.

#### Example
    <kendo:diagram-layout-grid offsetX="offsetX">
    </kendo:diagram-layout-grid>

### offsetY `float`

defines the top offset of the grid layout. The default is 50.

#### Example
    <kendo:diagram-layout-grid offsetY="offsetY">
    </kendo:diagram-layout-grid>

### width `float`

defines the width of the grid. The bigger this parameter the more components will be organized in an horizontal row. How many components really depends on your diagram and they type of layout applied to each component. The default is set to 800.

#### Example
    <kendo:diagram-layout-grid width="width">
    </kendo:diagram-layout-grid>

