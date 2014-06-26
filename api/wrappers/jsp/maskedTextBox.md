---
title: maskedTextBox
---

# \<kendo:maskedTextBox\>
A JSP wrapper for Kendo UI [MaskedTextBox](/api/web/maskedtextbox).

## Configuration Attributes

### culture `java.lang.String`

Specifies the culture info used by the widget.

#### Example
    <kendo:maskedTextBox culture="culture">
    </kendo:maskedTextBox>

### mask `java.lang.String`

Specifies the input mask. The following mask rules are supported:

#### Example
    <kendo:maskedTextBox mask="mask">
    </kendo:maskedTextBox>

### promptChar `java.lang.String`

Specifies the character used to represent the absence of user input in the widget

#### Example
    <kendo:maskedTextBox promptChar="promptChar">
    </kendo:maskedTextBox>

### rules `java.lang.Object`

Defines an object of custom mask rules.

#### Example
    <kendo:maskedTextBox rules="rules">
    </kendo:maskedTextBox>

### value `java.lang.String`

Specifies the value of the MaskedTextBox widget.

#### Example
    <kendo:maskedTextBox value="value">
    </kendo:maskedTextBox>


## Event Attributes

### change `String`

Fires when the value is changed


For additional information check the [change](/api/web/maskedtextbox#events-change) event documentation.

#### Example
    <kendo:maskedTextBox change="handle_change">
    </kendo:maskedTextBox>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

## Event Tags

### kendo:maskedTextBox-change

Fires when the value is changed


For additional information check the [change](/api/web/maskedtextbox#events-change) event documentation.

#### Example
    <kendo:maskedTextBox>
        <kendo:maskedTextBox-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:maskedTextBox-change>
    </kendo:maskedTextBox>

