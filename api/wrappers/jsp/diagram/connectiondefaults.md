---
title: diagram-connectionDefaults
slug: jsp-diagram-connectionDefaults
tags: api, java
publish: true
---

# \<kendo:diagram-connectionDefaults\>

Defines the connections configuration.

#### Example
    <kendo:diagram>
        <kendo:diagram-connectionDefaults></kendo:diagram-connectionDefaults>
    </kendo:diagram>

## Configuration Attributes

### endCap `java.lang.String`

The start cap (arrow, head or decoration) of the connection:Note that you can also use the "ArrowStart" for the endCap but its direction will be inversed. Much like the startCap example above, you can define custom caps (markers) for the endpoint of the connection.

#### Example
    <kendo:diagram-connectionDefaults endCap="endCap">
    </kendo:diagram-connectionDefaults>

### startCap `java.lang.String`

The start cap (arrow, head or decoration) of the connection:

#### Example
    <kendo:diagram-connectionDefaults startCap="startCap">
    </kendo:diagram-connectionDefaults>


##  Configuration JSP Tags

### kendo:diagram-connectionDefaults-hover

Defines the hover configuration.

More documentation is available at [kendo:diagram-connectionDefaults-hover](/kendo-ui/api/wrappers/jsp/diagram/connectiondefaults-hover).

#### Example

    <kendo:diagram-connectionDefaults>
        <kendo:diagram-connectionDefaults-hover></kendo:diagram-connectionDefaults-hover>
    </kendo:diagram-connectionDefaults>

### kendo:diagram-connectionDefaults-stroke

Defines the stroke configuration.

More documentation is available at [kendo:diagram-connectionDefaults-stroke](/kendo-ui/api/wrappers/jsp/diagram/connectiondefaults-stroke).

#### Example

    <kendo:diagram-connectionDefaults>
        <kendo:diagram-connectionDefaults-stroke></kendo:diagram-connectionDefaults-stroke>
    </kendo:diagram-connectionDefaults>

