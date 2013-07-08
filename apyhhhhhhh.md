---
title: kendo
slug: fw-kendo-main
tags: api,framework
publish: true
---

# kendo

## Methods

### bind
Binds a HTML View to a View-Model.

Model View ViewModel ([MVVM](http://en.wikipedia.org/wiki/Model_View_ViewModel)) is a design pattern which helps developers separate the Model from the View. The View-Model part of MVVM is responsible for
exposing the data objects from the Model in such a way that those objects are easily consumed in the View.

&gt; **Important:** Kendo UI Mobile is not included in the default list of initialized namespaces. You can initialize it explicitly by yep
  running `kendo.bind(element, viewModel, kendo.mobile.ui);`


#### Example
     &lt;!-- View --&gt;
     &lt;div id=&quot;view&quot;&gt;
       &lt;!-- The value of the INPUT element is bound to the &quot;firstName&quot; field of the View-Model.
       When the value changes so will the &quot;firstName&quot; field and vice versa.  --&gt;
       &lt;label&gt;First Name:&lt;input data-bind=&quot;value: firstName&quot; /&gt;&lt;/label&gt;
       &lt;!-- The value of the INPUT element is bound to the &quot;lastName&quot; field of the View-Model.
       When the value changes so will the &quot;lastName&quot; field and vice versa.   --&gt;
       &lt;label&gt;Last Name:&lt;input data-bind=&quot;value: lastName&quot; /&gt;&lt;/label&gt;
       &lt;!-- The click event of the BUTTON element is bound to the &quot;displayGreeting&quot; method of the View-Model.
       When the user clicks the button the &quot;displayGreeting&quot; method will be invoked.  --&gt;
       &lt;button data-bind=&quot;click: displayGreeting&quot;&gt;Display Greeting&lt;/button&gt;
     &lt;/div&gt;
     &lt;script&gt;
       // View-Model
       var viewModel = kendo.observable({
          firstName: &quot;John&quot;,
          lastName: &quot;Doe&quot;,
          displayGreeting: function() {
              // Get the current values of &quot;firstName&quot; and &quot;lastName&quot;
              var firstName = this.get(&quot;firstName&quot;);
              var lastName = this.get(&quot;lastName&quot;);
              alert(&quot;Hello, &quot; + firstName + &quot; &quot; + lastName + &quot;!!!&quot;);
          }
       });

       // Bind the View to the View-Model
       kendo.bind($(&quot;#view&quot;), viewModel);
     &lt;/script&gt;
#### Parameters

##### element `String|jQuery|Node`

The root element(s) from which the binding starts. Can be a valid jQuery string selector, a DOM element or a jQuery object.
All child elements are traversed.

##### viewModel `Object|kendo.data.ObservableObject`

The View-Model which the elements are bound to. Wraped as an instance of `kendo.data.ObservableObject` if not already.

##### namespace `Object`

Optional namespace too look in when instantiating Kendo UI widgets. The valid namespaces are `kendo.ui`, `kendo.dataviz.ui` and `kendo.mobile.ui`. If omitted
`kendo.ui` will be used.

### culture
Sets or gets the current culture. Uses the passed culture name to select a culture from the culture scripts that you have included and then sets the current culture.
If there is no corresponding culture then the method will try to find culture which is equal to the country part of the culture name.
If no culture is found the default one is used.

#### Include culture JavaScript files and select a culture
    &lt;script src=&quot;jquery.js&quot; &gt;&lt;/script&gt;
    &lt;script src=&quot;kendo.all.min.js&quot;&gt;&lt;/script&gt;
    &lt;script src=&quot;kendo.culture.en-GB.js&quot;&gt;&lt;/script&gt;
    &lt;script&gt;
    //set current culture to &quot;en-GB&quot;.
    kendo.culture(&quot;en-GB&quot;);
    &lt;/script&gt;
#### Get the current culture
    var culture = kendo.culture();

### destroy
Finds all Kendo widgets that are children of the specified element and calls their destroy method.

#### Parameters

##### element `String|jQuery|Node`

### format
Replaces each format item in a specified string with the text equivalent of a corresponding object&#39;s value.

#### Example
    kendo.format(&quot;{0} - {1}&quot;, 12, 24); //12 - 24
    kendo.format(&quot;{0:c} - {1:c}&quot;, 12, 24); //$12.00 - $24.00

#### Returns

`String` The formatted string.

### htmlEncode

Encodes HTML characters to entities.

#### Example
    var html = kendo.htmlEncode(&quot;&lt;span&gt;Hello&lt;/span&gt;&quot;);
    console.log(html); // outputs &quot;&amp;lt;span&amp;gt;Hello&amp;lt;/span&amp;gt;&quot;

#### Parameters

##### value `String`

The string that needs to be HTML encoded.

#### Returns

`String` The encoded string.

### parseDate
Parses as a formatted string as a `Date`.
#### Example
    kendo.parseDate(&quot;12/22/2000&quot;); //Fri Dec 22 2000
    kendo.parseDate(&quot;2000/12/22&quot;, &quot;yyyy/MM/dd&quot;); //Fri Dec 22 2000
#### Returns
`Date` the parsed date.

#### Parameters

##### value `String`
The formatted string which should be parsed as date.

##### formats `String|Array` *(optional)*
The format(s) that will be used to parse the date. By default all standard date formats are used.

##### culture `String` *(optional)*
The culture used to parse the number. The current culture is used by default.

### parseFloat
Parses as a formatted string as a floating point number.

#### Example
    kendo.parseFloat(&quot;12.22&quot;); //12.22

    kendo.culture(&quot;de-DE&quot;);
    kendo.parseFloat(&quot;1.212,22 €&quot;); //1212.22
#### Returns
`Number` the parsed number.

#### Parameters

##### value `String`
The formatted string which should be parsed as number.

##### culture `String` *(optional)*
The culture used to parse the number. The current culture is used by default.

### parseInt
Parses as a formatted string as an integer.
#### Example
    kendo.parseInt(&quot;12.22&quot;); //12

    kendo.culture(&quot;de-DE&quot;);
    kendo.parseInt(&quot;1.212,22 €&quot;); //1212
#### Returns
`Number` the parsed number.

#### Parameters

##### value `String`
The formatted string which should be parsed as number.

##### culture `String` *(optional)*
The culture used to parse the number. The current culture is used by default.

### render

Renders the specified template using the provided data.

#### Example
    var template = kendo.template(&quot;&lt;li&gt;#: name #&lt;/li&gt;&quot;);
    var data = [ { name: &quot;John Doe&quot; }, { name: &quot;Jane Doe&quot; }];
    $(&quot;ul&quot;).html(kendo.render(template, data)); // sets the html to &lt;li&gt;John Doe&lt;/li&gt;&lt;li&gt;Jane Doe&lt;/li&gt;

#### Parameters

##### template `Function`

The Kendo template which should be rendered.

##### data `Array`

Array of JavaScript objects which contains the data that the template will render.

### template
Compiles a template to a function that builds HTML. Useful when a template will be used several times.
Templates offer way of creating HTML chunks. Options such as HTML encoding and compilation for optimal
performance are available.

#### Returns
`Function` the compiled template as a JavaScript function. When called this function will return the generated HTML string.

#### Basic template

    var inlineTemplate = kendo.template(&quot;Hello, #= firstName # #= lastName #&quot;);
    var inlineData = { firstName: &quot;John&quot;, lastName: &quot;Doe&quot; };
    $(&quot;#inline&quot;).html(inlineTemplate(inlineData));

#### Output:

    Hello, John Doe!

#### Encode HTML

    var encodingTemplate = kendo.template(&quot;HTML tags are encoded as follows: #:html#&quot;);
    var encodingData = { html: &quot;&lt;strong&gt;lorem ipsum&lt;/strong&gt;&quot; };
    $(&quot;#encoding&quot;).html(encodingTemplate(encodingData));

#### Output:

    HTML tags are encoded as follows: &lt;strong&gt;lorem ipsum&lt;/strong&gt;

#### Use JavaScript in templates

    var encodingTemplate = kendo.template(&quot;#if (foo) {# bar #}#&quot;);
    var data = { foo: true};
    $(&quot;#encoding&quot;).html(encodingTemplate(data)); // outputs bar

#### Escape sharp symbols in JavaScript strings

    var encodingTemplate = kendo.template(&quot;&lt;a href=&#39;\\#&#39;&gt;Link&lt;/a&gt;&quot;);

#### Escape sharp symbols in script templates

    &lt;script type=&quot;text/x-kendo-template&quot; id=&quot;template&quot;&gt;
     &lt;a href=&quot;\#&quot;&gt;Link&lt;/a&gt;
    &lt;/script&gt;

    &lt;script&gt;
    var encodingTemplate = kendo.template($(&quot;#template&quot;).html());
    &lt;/script&gt;

#### Parameters
##### template `String`

The template that will be compiled.
##### options `Object` (optional)
Template compilation options.

##### options.paramName `String` *(default: &quot;data&quot;)*
The name of the parameter used by the generated function. Useful when `useWithBlock` is set to `false`.

###### Example
    var template = kendo.template(&quot;&lt;strong&gt;#: d.name #&lt;/strong&gt;&quot;, { paramName: &quot;d&quot;, useWithBlock: false });

##### options.useWithBlock `Boolean` *(default: true)*
Wraps the generated code in a `with` block. This allows the usage of unqualified fields in the template. Disabling the `with` block will improve
the performance of the template.

###### Example
    var template = kendo.template(&quot;&lt;strong&gt;#: data.name #&lt;/strong&gt;&quot;, { useWithBlock: false }); // Note that &quot;data.&quot; is used to qualify the field

    console.log(template({ name: &quot;John Doe&quot; })); // outputs &quot;&lt;strong&gt;John Doe&lt;/strong&gt;&quot;

### touchScroller

Enables kinetic scrolling on touch devices

#### Parameters

##### element `Selector`

The container element to enable scrolling for.
### toString
Formats a `Number` or `Date` using the specified format and the current culture.
#### Returns
`String` the string representation of the formatted value.
#### Formatting numbers and dates
    //format a number using standard number formats and default culture en-US
    kendo.toString(10.12, &quot;n&quot;); //10.12
    kendo.toString(10.12, &quot;n0&quot;); //10
    kendo.toString(10.12, &quot;n5&quot;); //10.12000
    kendo.toString(10.12, &quot;c&quot;); //$10.12
    kendo.toString(0.12, &quot;p&quot;); //12.00 %
    //format a number using custom number formats
    kendo.toString(19.12, &quot;00##&quot;); //0019
    //format a date
    kendo.toString(new Date(2010, 9, 5), &quot;yyyy/MM/dd&quot; ); // &quot;2010/10/05&quot;
    kendo.toString(new Date(2010, 9, 5), &quot;dddd MMMM d, yyyy&quot; ); // &quot;Tuesday October 5, 2010&quot;
    kendo.toString(new Date(2010, 10, 10, 22, 12), &quot;hh:mm tt&quot; ); // &quot;10:12 PM&quot;
#### Parameters

##### value `Date|Number`
The `Date` or `Number` which should be formatted.

##### format `String`
The format string which should be used to format the value.

## Properties

### support
A range of useful supported by the current browser capabilities and features.

#### support

##### touch `Boolean`
Return true if the browser supports touch events.

##### pointers `Boolean`
Return true if the browser supports pointer events (IE10 and Metro apps currently).

##### scrollbar `Function`
Checks for the browser scrollbar width, returns scrollbar width in pixels, 0 if no scrollbars available (e.g. in mobile).

##### hasHW3D `Boolean`
Return true if the browser supports 3D transitions and transforms.

##### hasNativeScrolling `Boolean`
Returns true if the browser supports overflow-scrolling CSS property (currently only iOS 5+).

##### devicePixelRatio `Number` *(default: 1)*
Returns the current device Device to Pixel Ratio - works only in Android.

##### placeHolder `Boolean`
Retruns true if the browser supports input placeholders.

##### zoomLevel `Number` *(default: 1)*
Returns the current zoom level on a mobile browser (returns 1 on desktop).

### support.transforms `Object`
Returns a number of browser specific transformation properties

#### support.transforms
##### transforms.css `String`
Returns the CSS prefix of the current browser proprietary transform properties. E.g. &quot;-webkit-&quot;, &quot;-moz-&quot;, &quot;-o-&quot;, &quot;-ms-&quot;

##### transforms.prefix `String`
Returns the JavaScript prefix of the current browser proprietary transform properties. E.g. &quot;webkit&quot;, &quot;Moz&quot;, &quot;O&quot;, &quot;ms&quot;

### support.transitions `Object`
Returns a number of browser specific transition properties

#### support.transitions
##### transitions.css `String`
Returns the CSS prefix of the current browser proprietary transition properties. E.g. &quot;-webkit-&quot;, &quot;-moz-&quot;, &quot;-o-&quot;, &quot;-ms-&quot;

##### transitions.prefix `String`
Returns the JavaScript prefix of the current browser proprietary transition properties. E.g. &quot;webkit&quot;, &quot;Moz&quot;, &quot;O&quot;, &quot;ms&quot;

##### transitions.event `String`
Returns the transition end event name in the current browser. E.g. &quot;webkitTransitionEnd&quot;, &quot;transitionend&quot;, &quot;oTransitionEnd&quot;

### support.mobileOS `Object`
Returns a number of properties that identify the current mobile browser. Parses navigator.userAgent to do it. Undefined on desktop.

#### support.mobileOS
##### device `String`
Returns the current mobile device identificator, can be &quot;fire&quot;, &quot;android&quot;, &quot;iphone&quot;, &quot;ipad&quot;, &quot;meego&quot;, &quot;webos&quot;, &quot;blackberry&quot;, &quot;playbook&quot;, &quot;winphone&quot;, &quot;windows&quot;.

##### tablet `String` *(default: false)*
Returns the current tablet identificator or false if the current device is not a tablet, can be &quot;fire&quot;, &quot;ipad&quot;, &quot;playbook&quot; or false.

##### browser `String` *(default: &quot;default&quot;)*
Returns the current browser identificator or &quot;default&quot; if the browser is the native one, can be &quot;omini&quot;, &quot;omobile&quot;, &quot;firefox&quot;, &quot;mobilesafari&quot;, &quot;webkit&quot;, &quot;ie&quot;, &quot;default&quot;.

##### name `String`
Returns the current os name identificator, can be &quot;ios&quot;, &quot;android&quot;, &quot;blackberry&quot;, &quot;windows&quot;, &quot;webos&quot;, &quot;meego&quot;. For convenience a property with the os name is also initialized,
for instance:

    if (kendo.support.mobileOS.android) {
        // Do something in Android
    }

##### majorVersion `String`
The current OS major version, e.g. &quot;5&quot; in iOS 5.1.

##### minorVersion `String`
The current OS minor versions, e.g. &quot;1.1&quot; in iOS 5.1.1.

##### flatVersion `Number`
A convenience property to allow easier version checks, for instance:

    var os = kendo.support.mobileOS;
    if (os.ios &amp;&amp; os.flatVersion &gt;= 400 &amp;&amp; os.flatVersion &lt; 500) {
        // Do something in iOS 4.x
    }

##### appMode `Boolean`
Returns true if running in application mode - pinned to desktop in iOS or running in PhoneGap/WebView.

## Standard number formats

*n* - number
    kendo.culture(&quot;en-US&quot;);
    kendo.toString(1234.567, &quot;n&quot;); //1,234.57

    kendo.culture(&quot;de-DE&quot;);
    kendo.toString(1234.567, &quot;n3&quot;); //1.234,567

*c* - currency
    kendo.culture(&quot;en-US&quot;);
    kendo.toString(1234.567, &quot;c&quot;); //$1,234.57

    kendo.culture(&quot;de-DE&quot;);
    kendo.toString(1234.567, &quot;c3&quot;); //1.234,567 €

*p* - percentage (the value is multiplied by 100)
    kendo.culture(&quot;en-US&quot;);
    kendo.toString(0.222, &quot;p&quot;); //22.20 %

    kendo.culture(&quot;de-DE&quot;);
    kendo.toString(0.22, &quot;p3&quot;); //22.000 %

*e* - exponential
    kendo.toString(0.122, &quot;e&quot;); //1.22e-1
    kendo.toString(0.122, &quot;e4&quot;); //1.2200e-1

## Custom number formats

Custom number formats can be created by using one or more custom numeric specifiers.

### Format Specifiers

#### *0* - zero placeholder

Replaces the zero with the corresponding digit if one is present; otherwise, zero appears in the result string.
    kendo.toString(1234.5678, &quot;00000&quot;); // 01235

#### *#* - digit placeholder

Replaces the pound sign with the corresponding digit if one is present; otherwise, no digit appears in the result string.
    kendo.toString(1234.5678, &quot;#####&quot;); // 1235

#### *.* - decimal placeholder

Determines the location of the decimal separator in the result string.
    kendo.tostring(0.45678, &quot;0.00&quot;); // 0.46

#### *,* - group separator placeholder
Inserts a group separator between each group of digits.
    kendo.tostring(12345678, &quot;##,#&quot;); // 12,345,678

#### *%* - percentage placeholder
Multiplies a number by 100 and inserts a the percentage symbol (according to the current culture) in the result string.

#### *e* - exponential notation
    kendo.toString(0.45678, &quot;e0&quot;); // 5e-1

#### *;* - section separator

Defines sections of separate format strings for positive, negative, and zero numbers.

#### *&quot;string&quot;|&#39;string&#39;* - literal string
Indicates literal strings which should be included in the result verbatim.

## Standard date formats

#### *d* - short date pattern
    kendo.toString(new Date(2000, 10, 6), &quot;d&quot;); // 11/6/2000

#### *D* - long date pattern
    kendo.toString(new Date(2000, 10, 6), &quot;D&quot;); // Monday, November 06, 2000

#### *F* - full date/time pattern
    kendo.toString(new Date(2000, 10, 6), &quot;F&quot;); // Monday, November 06, 2000 12:00:00 AM

#### *g* - general date/time pattern (short time)
    kendo.toString(new Date(2000, 10, 6), &quot;g&quot;); // 11/6/2000 12:00 AM

#### *G* - general date/time pattern (long time)
    kendo.toString(new Date(2000, 10, 6), &quot;G&quot;); // 11/6/2000 12:00:00 AM

#### *m|M* - month/day pattern
    kendo.toString(new Date(2000, 10, 6), &quot;m&quot;); // November 06

#### *u* - universal sortable date/time pattern
    kendo.toString(new Date(2000, 10, 6), &quot;u&quot;); // 2000-11-06 00:00:00Z

#### *y|Y* - month/year pattern
    kendo.toString(new Date(2000, 10, 6), &quot;y&quot;); // November, 2000

## Custom date formats
Custom date formats can be created by using one or more custom date specifiers.

### Format Specifiers

#### *d* - the day of the month, from 1 to 31

#### *dd* - the zero-padded day of the month - from 01 to 31

#### *ddd* - the abbreviated name of the day of the week

#### *dddd* - the full name of the day of the week

#### *f* - the tenths of a second

#### *ff* - the hundreds of a second

#### *fff* - the milliseconds

#### *M* - the month, from 1 to 12

#### *MM* - the zero-padded month, from 01 to 12

#### *MMM* - the abbreviated name of the month

#### *MMMM* - the full name of the month

#### *h* - the hour, using 12-hour clock - from 1 to 12

#### *hh* - the zero-padded hour, using 12-hour clock - from 01 to 12

#### *H* - the hour, using 24-hour clock - from 0 to 23

#### *HH* - the zero-padded hour, using 24-hour clock - from 00 to 23

#### *m* - the minute, from 0 to 59

#### *mm* - the zero-padded minute, from 00 to 59

#### *s* - the second, from 00 to 59

#### *ss* - the zero-padded second, from 00 to 59

#### *tt* - the AM/PM designator

### unbind

Unbinds a tree of HTML elements from a View-Model.
#### Example
    kendo.unbind($(&quot;body&quot;));
#### Parameters
##### element `String|jQuery|Node`

The root element(s) from which the unbinding starts. Can be a valid jQuery string selector, a DOM element or a jQuery object.
All child elements are traversed.
