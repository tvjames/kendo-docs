---
title: datePicker
slug: jsp-datePicker
tags: api, java
publish: true
---

# \<kendo:datePicker\>
A JSP wrapper for Kendo UI [DatePicker](/api/web/datepicker).

## Configuration Attributes

### culture `String`

Specifies the culture info used by the widget.

#### Example
    <kendo:datePicker culture="culture">
    </kendo:datePicker>

### dates `Object`

Specifies a list of dates, which will be passed to the month template.

#### Example
    <kendo:datePicker dates="dates">
    </kendo:datePicker>

### depth `String`

Specifies the navigation depth. The following
settings are available for the depth value:

#### Example
    <kendo:datePicker depth="depth">
    </kendo:datePicker>

### footer `String`

Template to be used for rendering the footer of the calendar.

#### Example
    <kendo:datePicker footer="footer">
    </kendo:datePicker>

### format `String`

Specifies the format, which is used to format the value of the DatePicker displayed in the input. The format also will be used to parse the input.

#### Example
    <kendo:datePicker format="format">
    </kendo:datePicker>

### max `java.util.Date`

Specifies the maximum date, which the calendar can show.

#### Example
    <kendo:datePicker max="max">
    </kendo:datePicker>

### min `java.util.Date`

Specifies the minimum date that the calendar can show.

#### Example
    <kendo:datePicker min="min">
    </kendo:datePicker>

### parseFormats `Object`

Specifies the formats, which are used to parse the value set with value() method or by direct input. If not set the value of the format will be used. Note that value of the format option is always used.

#### Example
    <kendo:datePicker parseFormats="parseFormats">
    </kendo:datePicker>

### start `String`

Specifies the start view.
The following settings are available for the start value:

#### Example
    <kendo:datePicker start="start">
    </kendo:datePicker>

### value `java.util.Date`

Specifies the selected date.

#### Example
    <kendo:datePicker value="value">
    </kendo:datePicker>


##  Configuration JSP Tags

### kendo:datePicker-animation

The animation(s) used for opening and/or closing the pop-up. Setting this value to false
will disable the animation(s).

More documentation is available at [kendo:datePicker-animation](datepicker/animation).

#### Example

    <kendo:datePicker>
        <kendo:datePicker-animation></kendo:datePicker-animation>
    </kendo:datePicker>

### kendo:datePicker-month

Templates for the cells rendered in the calendar "month" view.

More documentation is available at [kendo:datePicker-month](datepicker/month).

#### Example

    <kendo:datePicker>
        <kendo:datePicker-month></kendo:datePicker-month>
    </kendo:datePicker>


## Event Attributes

### change `String`

Fires when the selected date is changed


For additional information check the [change](/api/web/datepicker#events-change) event documentation.

#### Example
    <kendo:datePicker change="handle_change">
    </kendo:datePicker>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>

### close `String`

Fires when the calendar is closed


For additional information check the [close](/api/web/datepicker#events-close) event documentation.

#### Example
    <kendo:datePicker close="handle_close">
    </kendo:datePicker>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>

### open `String`

Fires when the calendar is opened


For additional information check the [open](/api/web/datepicker#events-open) event documentation.

#### Example
    <kendo:datePicker open="handle_open">
    </kendo:datePicker>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>

## Event Tags

### kendo:datePicker-change

Fires when the selected date is changed


For additional information check the [change](/api/web/datepicker#events-change) event documentation.

#### Example
    <kendo:datePicker>
        <kendo:datePicker-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:datePicker-change>
    </kendo:datePicker>

### kendo:datePicker-close

Fires when the calendar is closed


For additional information check the [close](/api/web/datepicker#events-close) event documentation.

#### Example
    <kendo:datePicker>
        <kendo:datePicker-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:datePicker-close>
    </kendo:datePicker>

### kendo:datePicker-open

Fires when the calendar is opened


For additional information check the [open](/api/web/datepicker#events-open) event documentation.

#### Example
    <kendo:datePicker>
        <kendo:datePicker-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:datePicker-open>
    </kendo:datePicker>

