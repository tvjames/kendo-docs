---
title: diagram-layout
---

# \<kendo:diagram-layout\>

The layout of a diagram consists in arranging the shapes (sometimes also the connections) in some fashion in order to achieve an aesthetically pleasing experience to the user. It aims at giving a more direct insight in the information contained within the diagram and its relational structure.On a technical level, layout consists of a multitude of algorithms and optimizations:and various ad-hoc calculations which depend on the type of layout. The criteria on which an algorithm is based vary but the common denominator is:Kendo diagram includes three of the most used layout algorithms which should cover most of your layout needs - tree layout, force-directed layout and layered layout. Please, check the type property for more details regarding each type.The generic way to apply a layout is by calling the layout() method on the diagram. The method has a single parameter options. It is an object, which can contain parameters which are specific to the layout as well as parameters customizing the global grid layout. Parameters which apply to other layout algorithms can be included but are overlooked if not applicable to the chose layout type. This means that you can define a set of parameters which cover all possible layout types and simply pass it in the method whatever the layout define in the first parameter.

#### Example
    <kendo:diagram>
        <kendo:diagram-layout></kendo:diagram-layout>
    </kendo:diagram>

## Configuration Attributes

### endRadialAngle `float`

Defines where the circle/arc ends. The positive direction is clockwise and the angle is in degrees. This setting is specific to the radial tree layout.

#### Example
    <kendo:diagram-layout endRadialAngle="endRadialAngle">
    </kendo:diagram-layout>

### horizontalSeparation `float`

Either the distance between the siblings if the tree is up/down or between levels if the tree is left/right. In tipOver tree layout this setting is used only for the direct children of the root

#### Example
    <kendo:diagram-layout horizontalSeparation="horizontalSeparation">
    </kendo:diagram-layout>

### iterations `float`

The number of times that all the forces in the diagram are being calculated and balanced. The default is set at 300, which should be enough for diagrams up to a hundred nodes. By increasing this parameter you increase the correctness of the simulation but it does not always lead to a more stable topology. In some situations a diagram simply does not have a stable minimum energy state and oscillates (globally or locally) between the minima. In such a situation increasing the iterations will not result in a better topology.In situations where there is enough symmetry in the diagram the increased number of iterations does lead to a better layout. In the example below the 100 iterations was not enough to bring the grid to a stable state while 300 iterations did bring all the nodes in such a position that the (virtual) energy of the diagram is a minimum.This setting is specific to the force-directed layout

#### Example
    <kendo:diagram-layout iterations="iterations">
    </kendo:diagram-layout>

### layerSeparation `float`

The height (in a vertical layout) or width (in a horizontal layout) between the layers.

#### Example
    <kendo:diagram-layout layerSeparation="layerSeparation">
    </kendo:diagram-layout>

### nodeDistance `float`

In the force-directed layout this setting defines the optimal length between 2 nodes, which directly correlates to the state of the link between them. If a link is longer than there will be a force pulling the nodes together, if the link is shorter the force will push the nodes apart. The optimal length is more and indication in the algorithm than a guarantee that all nodes will be at this distance. The result of the layout is really a combination of the incidence structure of the diagram, the initial topology (positions of the nodes) and the number of iterations.In the layered layout it defines the minimum distance between nodes on the same level. Due to the nature of the algorithm this distance will only be respected if the the whole crossing of links and optimimzation does not induce a shift of the siblings.This setting is specific to the force-directed layout and layered layout

#### Example
    <kendo:diagram-layout nodeDistance="nodeDistance">
    </kendo:diagram-layout>

### radialFirstLevelSeparation `float`

Controls the distance between the root and the immediate children of the root. This setting is specific to the radial tree layout.

#### Example
    <kendo:diagram-layout radialFirstLevelSeparation="radialFirstLevelSeparation">
    </kendo:diagram-layout>

### radialSeparation `float`

Defines the radial separation between the levels (except the first one which is defined by the aforementioned radialFirstLevelSeparation). This setting is specific to the radial tree layout.

#### Example
    <kendo:diagram-layout radialSeparation="radialSeparation">
    </kendo:diagram-layout>

### startRadialAngle `float`

Defines where the circle/arc starts. The positive direction is clockwise and the angle is in degrees. This setting is specific to the radial tree layout.

#### Example
    <kendo:diagram-layout startRadialAngle="startRadialAngle">
    </kendo:diagram-layout>

### subtype `java.lang.String`

The layout subtype.

#### Example
    <kendo:diagram-layout subtype="subtype">
    </kendo:diagram-layout>

### type `java.lang.String`

The layout type.

#### Example
    <kendo:diagram-layout type="type">
    </kendo:diagram-layout>

### underneathHorizontalOffset `float`

Defines the horizontal offset from a child with respect to its parent. This setting is specific to the tipOver tree layout.

#### Example
    <kendo:diagram-layout underneathHorizontalOffset="underneathHorizontalOffset">
    </kendo:diagram-layout>

### underneathVerticalSeparation `float`

Defines the vertical separation between siblings and sub-branches. This setting is specific to the tipOver tree layout.

#### Example
    <kendo:diagram-layout underneathVerticalSeparation="underneathVerticalSeparation">
    </kendo:diagram-layout>

### underneathVerticalTopOffset `float`

Defines the vertical separation between a parent and its first child. This offsets the whole set of children with respect to its parent. This setting is specific to the tipOver tree layout.

#### Example
    <kendo:diagram-layout underneathVerticalTopOffset="underneathVerticalTopOffset">
    </kendo:diagram-layout>

### verticalSeparation `float`

Either the distance between levels if the tree is up/down or between siblings if the tree is left/right. This property is not used in tipOver tree layout but rather replaced with three additional ones - underneathVerticalTopOffset, underneathVerticalSeparation and underneathHorizontalOffset

#### Example
    <kendo:diagram-layout verticalSeparation="verticalSeparation">
    </kendo:diagram-layout>


##  Configuration JSP Tags

### kendo:diagram-layout-grid

Each layout algorithm has a different set of parameters customizing the layout but they also all have a common collection of parameters which relate to the way 'pieces' of a diagram are organized.
A diagram can have in general disconnected pieces, known as components, which can be organized in a way independent of the way a component on its own is arranged. In the picture above, this is one diagram consisting of four components.When you apply a certain layout an analysis will first split the diagram in components, arrange each component individually and thereafter organize the components in a grid. The common parameters referred above deal with this grid layout, they define the width, margin and padding of the (invisible) grid used to organize the components.

More documentation is available at [kendo:diagram-layout-grid](/api/wrappers/jsp/diagram/layout-grid).

#### Example

    <kendo:diagram-layout>
        <kendo:diagram-layout-grid></kendo:diagram-layout-grid>
    </kendo:diagram-layout>

