---
title: diagram-shape-connector
slug: jsp-diagram-shape-connector
tags: api, java
publish: true
---

# \<kendo:diagram-shape-connector\>

Defines the connectors the shape owns.You can easily define your own custom connectors or mix-match with the above defined custom connectors.Example - custom shape with custom connectorsThe following defines a custom shape with connectors adapted to the shape's outline. Note in particular the various helpful methods (right(), left(), top()) to define positions relative to the shape.

#### Example
    <kendo:diagram-shape-connectors>
        <kendo:diagram-shape-connector></kendo:diagram-shape-connector>
    </kendo:diagram-shape-connectors>

## Configuration Attributes

### description `java.lang.String`



#### Example
    <kendo:diagram-shape-connector description="description">
    </kendo:diagram-shape-connector>

### name `java.lang.String`



#### Example
    <kendo:diagram-shape-connector name="name">
    </kendo:diagram-shape-connector>

### position `java.lang.String`



#### Example
    <kendo:diagram-shape-connector position="position">
    </kendo:diagram-shape-connector>


## Event Attributes

### position `String`




#### Example
    <kendo:diagram-shape-connector position="handle_position">
    </kendo:diagram-shape-connector>
    <script>
        function handle_position(e) {
            // Code to handle the position event.
        }
    </script>

## Event Tags

### kendo:diagram-shape-connector-position




#### Example
    <kendo:diagram-shape-connector>
        <kendo:diagram-shape-connector-position>
            <script>
                function(e) {
                    // Code to handle the position event.
                }
            </script>
        </kendo:diagram-shape-connector-position>
    </kendo:diagram-shape-connector>

