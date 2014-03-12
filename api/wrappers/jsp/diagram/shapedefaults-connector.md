---
title: diagram-shapeDefaults-connector
slug: jsp-diagram-shapeDefaults-connector
tags: api, java
publish: true
---

# \<kendo:diagram-shapeDefaults-connector\>

Defines the connectors the shape owns.You can easily define your own custom connectors or mix-match with the above defined custom connectors.Example - custom shape with custom connectorsThe following defines a custom shape with connectors adapted to the shape's outline. Note in particular the various helpful methods (right(), left(), top()) to define positions relative to the shape.

#### Example
    <kendo:diagram-shapeDefaults-connectors>
        <kendo:diagram-shapeDefaults-connector></kendo:diagram-shapeDefaults-connector>
    </kendo:diagram-shapeDefaults-connectors>

## Configuration Attributes

### description `java.lang.String`



#### Example
    <kendo:diagram-shapeDefaults-connector description="description">
    </kendo:diagram-shapeDefaults-connector>

### name `java.lang.String`



#### Example
    <kendo:diagram-shapeDefaults-connector name="name">
    </kendo:diagram-shapeDefaults-connector>

### position `java.lang.String`



#### Example
    <kendo:diagram-shapeDefaults-connector position="position">
    </kendo:diagram-shapeDefaults-connector>


## Event Attributes

### position `String`




#### Example
    <kendo:diagram-shapeDefaults-connector position="handle_position">
    </kendo:diagram-shapeDefaults-connector>
    <script>
        function handle_position(e) {
            // Code to handle the position event.
        }
    </script>

## Event Tags

### kendo:diagram-shapeDefaults-connector-position




#### Example
    <kendo:diagram-shapeDefaults-connector>
        <kendo:diagram-shapeDefaults-connector-position>
            <script>
                function(e) {
                    // Code to handle the position event.
                }
            </script>
        </kendo:diagram-shapeDefaults-connector-position>
    </kendo:diagram-shapeDefaults-connector>

