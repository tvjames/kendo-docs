---
title: diagram-connection
slug: jsp-diagram-connection
tags: api, java
publish: true
---

# \<kendo:diagram-connection\>

Defines the connections configuration.

#### Example
    <kendo:diagram-connections>
        <kendo:diagram-connection></kendo:diagram-connection>
    </kendo:diagram-connections>

## Configuration Attributes

### endCap `java.lang.String`

The start cap (arrow, head or decoration) of the connection:Note that you can also use the "ArrowStart" for the endCap but its direction will be inversed. Much like the startCap example above, you can define custom caps (markers) for the endpoint of the connection.

#### Example
    <kendo:diagram-connection endCap="endCap">
    </kendo:diagram-connection>

### startCap `java.lang.String`

The start cap (arrow, head or decoration) of the connection:

#### Example
    <kendo:diagram-connection startCap="startCap">
    </kendo:diagram-connection>


##  Configuration JSP Tags

### kendo:diagram-connection-hover

Defines the hover configuration.

More documentation is available at [kendo:diagram-connection-hover](/kendo-ui/api/wrappers/jsp/diagram/connection-hover).

#### Example

    <kendo:diagram-connection>
        <kendo:diagram-connection-hover></kendo:diagram-connection-hover>
    </kendo:diagram-connection>

### kendo:diagram-connection-points

Sets the intermediate points (in global coordinates) of the connection. It's important to note that currently these points cannot be manipulated in the interface.

More documentation is available at [kendo:diagram-connection-points](/kendo-ui/api/wrappers/jsp/diagram/connection-points).

#### Example

    <kendo:diagram-connection>
        <kendo:diagram-connection-points></kendo:diagram-connection-points>
    </kendo:diagram-connection>

### kendo:diagram-connection-stroke

Defines the stroke configuration.

More documentation is available at [kendo:diagram-connection-stroke](/kendo-ui/api/wrappers/jsp/diagram/connection-stroke).

#### Example

    <kendo:diagram-connection>
        <kendo:diagram-connection-stroke></kendo:diagram-connection-stroke>
    </kendo:diagram-connection>

