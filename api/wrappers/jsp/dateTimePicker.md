---
title: dateTimePicker
slug: jsp-dateTimePicker
tags: api, java
publish: true
---

# \<kendo:dateTimePicker\>
A JSP tag representing Kendo DateTimePicker.


## Configuration Attributes


### culture `String`

Specifies the culture info used by the widget.

#### Example
    <kendo:dateTimePicker culture="culture">
    </kendo:dateTimePicker>



### dates `Object`

Specifies a list of dates, which are shown in the time drop-down list. If not set, the DateTimePicker will auto-generate the available times.

#### Example
    <kendo:dateTimePicker dates="dates">
    </kendo:dateTimePicker>



### depth `String`

Specifies the navigation depth of the calendar. The following
settings are available for the

#### Example
    <kendo:dateTimePicker depth="depth">
    </kendo:dateTimePicker>



### footer `String`

Template to be used for rendering the footer of the calendar.

#### Example
    <kendo:dateTimePicker footer="footer">
    </kendo:dateTimePicker>



### format `String`

Specifies the format, which is used to format the value of the DateTimePicker displayed in the input. The format also will be used to parse the input.

#### Example
    <kendo:dateTimePicker format="format">
    </kendo:dateTimePicker>



### interval `float`

Specifies the interval, between values in the popup list, in minutes.

#### Example
    <kendo:dateTimePicker interval="interval">
    </kendo:dateTimePicker>



### max `java.util.Date`

Specifies the maximum date, which the calendar can show.

#### Example
    <kendo:dateTimePicker max="max">
    </kendo:dateTimePicker>



### min `java.util.Date`

Specifies the minimum date that the calendar can show.

#### Example
    <kendo:dateTimePicker min="min">
    </kendo:dateTimePicker>



### parseFormats `Object`

Specifies the formats, which are used to parse the value set with value() method or by direct input. If not set the value of the options.format and options.timeFormat will be used. Note that value of the format option is always used.

#### Example
    <kendo:dateTimePicker parseFormats="parseFormats">
    </kendo:dateTimePicker>



### start `String`

Specifies the start view of the calendar.
The following settings are available for the

#### Example
    <kendo:dateTimePicker start="start">
    </kendo:dateTimePicker>



### timeFormat `String`

Specifies the format, which is used to format the values in the time drop-down list.

#### Example
    <kendo:dateTimePicker timeFormat="timeFormat">
    </kendo:dateTimePicker>



### value `java.util.Date`

Specifies the selected value.

#### Example
    <kendo:dateTimePicker value="value">
    </kendo:dateTimePicker>



### change `String`

Triggered when the underlying value of a DateTimePicker is changed.

#### Example
    <kendo:dateTimePicker change="handle_change">
    </kendo:dateTimePicker>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### close `String`

Fires when the calendar or the time drop-down list is closed

#### Example
    <kendo:dateTimePicker close="handle_close">
    </kendo:dateTimePicker>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### open `String`

Fires when the calendar or the time drop-down list is opened

#### Example
    <kendo:dateTimePicker open="handle_open">
    </kendo:dateTimePicker>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>



### Event Attributes


### change `String`

Triggered when the underlying value of a DateTimePicker is changed.

#### Example
    <kendo:dateTimePicker change="handle_change">
    </kendo:dateTimePicker>
    <script>
        function handle_change(e) {
            // Code to handle the change event.
        }
    </script>



### close `String`

Fires when the calendar or the time drop-down list is closed

#### Example
    <kendo:dateTimePicker close="handle_close">
    </kendo:dateTimePicker>
    <script>
        function handle_close(e) {
            // Code to handle the close event.
        }
    </script>



### open `String`

Fires when the calendar or the time drop-down list is opened

#### Example
    <kendo:dateTimePicker open="handle_open">
    </kendo:dateTimePicker>
    <script>
        function handle_open(e) {
            // Code to handle the open event.
        }
    </script>


## Event Tags
  

### kendo:dateTimePicker-change

Triggered when the underlying value of a DateTimePicker is changed.

#### Example
    <kendo:dateTimePicker>
        <kendo:dateTimePicker-change>
            <script>
                function(e) {
                    // Code to handle the change event.
                }
            </script>
        </kendo:dateTimePicker-change>
    </kendo:dateTimePicker>

 

### kendo:dateTimePicker-close

Fires when the calendar or the time drop-down list is closed

#### Example
    <kendo:dateTimePicker>
        <kendo:dateTimePicker-close>
            <script>
                function(e) {
                    // Code to handle the close event.
                }
            </script>
        </kendo:dateTimePicker-close>
    </kendo:dateTimePicker>

 

### kendo:dateTimePicker-open

Fires when the calendar or the time drop-down list is opened

#### Example
    <kendo:dateTimePicker>
        <kendo:dateTimePicker-open>
            <script>
                function(e) {
                    // Code to handle the open event.
                }
            </script>
        </kendo:dateTimePicker-open>
    </kendo:dateTimePicker>

 

## Child JSP Tags

### kendo:dateTimePicker-animation

The animation(s) used for opening and/or closing the pop-ups. Setting this value to

More documentation is available at [kendo:dateTimePicker-animation](/api/wrappers/jsp/datetimepicker/animation).

#### Example

    <kendo:dateTimePicker>
        <kendo:dateTimePicker-animation></kendo:dateTimePicker-animation>
    </kendo:dateTimePicker>
 
### kendo:dateTimePicker-month

Templates for the cells rendered in the calendar "month" view.

More documentation is available at [kendo:dateTimePicker-month](/api/wrappers/jsp/datetimepicker/month).

#### Example

    <kendo:dateTimePicker>
        <kendo:dateTimePicker-month></kendo:dateTimePicker-month>
    </kendo:dateTimePicker>
    
