---
title: ToolBar
page_title: Configuration, methods and events of Kendo UI ToolBar
relatedDocs: gs-web-toolbar-overview
---

# kendo.ui.ToolBar

Represents the Kendo UI ToolBar. Inherits from [Widget](/api/framework/widget).

## Configuration

### resizable `Boolean` *(default: true)*

If `resizable` is set to `true` the widget will detect changes in the viewport width and hides the overflowing controls in the command overflow popup.

#### Example - disable the resizable feature

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            resizable: false,
            items: [
                { type: "button", text: "MyButton" }
            ]
        });
    </script>

### items `Array`

A JavaScript array that contains the ToolBar's commands configuration. 

> For more information regarding supported commands and their configration properties check the [Getting Started topic](/getting-started/web/toolbar/overview#command-types).

#### Example - initialize ToolBar with Button, Toggle Button and SplitButton

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", text: "Button" },
                { type: "button", text: "Toggle", togglable: true },
                { type: "splitButton", text: "SplitButton", items: [{text: "Option 1"}, {text: "Option 2"}] }
            ]
        });
    </script>

### items.buttons `Array`

Specifies the buttons of ButtonGroup.

### items.buttons.click `Function`

Specifies the click event handler of the button. Applicable only for the children of a ButtonGroup.

### items.buttons.enable `Boolean` *(default: true)*

Specifies whether the button is initially enabled or disabled.

### items.buttons.group `String`

Assigns the button to a group. Applicable only for the children of a ButtonGroup that has togglable true.

### items.buttons.icon `String`

Sets icon for the menu button. The icon should be one of the existing in the Kendo UI theme sprite.

### items.buttons.id `String`

Specifies the ID of the button.

### items.buttons.imageUrl `String`

If set, the ToolBar will render an image with the specified URL in the button.

### items.buttons.selected `Boolean` *(default: false)*

Specifies if the toggle button is initially selected. Applicable only for the children of a ButtonGroup that has togglable true.

### items.buttons.showIcon `String` *(default: "both")*

Specifies where the icon of the button will be displayed. Applicable only for the children of a ButtonGroup.

### items.buttons.showText `String` *(default: "both")*

Specifies where the text of the menu button will be displayed. Applicable only for the buttons of a ButtonGroup.

### items.buttons.spriteCssClass `String`

Defines a CSS class (or multiple classes separated by spaces) which will be used for button icon.

### items.buttons.toggle `Function`

Specifies the toggle event handler of the button. Applicable only for the children of a ButtonGroup.

### items.buttons.togglable `Boolean`

Specifies if the button is togglable, e.g. has a selected and unselected state. Applicable only for the children of a ButtonGroup.

### items.buttons.text `String`

Specifies the text of the menu button.

### items.buttons.url `String`

Specifies the url of the button to navigate to.

### items.click `Function`

Specifies the click event handler of the button. Applicable only for commands of type `button` and `splitButton`.

### items.enable `Boolean` *(default: true)*

Specifies whether the control is initially enabled or disabled. Default value is "true".

### items.group `String`

Assigns the button to a group. Applicable only for buttons with `togglable: true`.

### items.icon `String`

Sets icon for the item. The icon should be one of the existing in the Kendo UI theme sprite.

### items.id `String`

Specifies the ID of the button.

### items.imageUrl `String`

If set, the ToolBar will render an image with the specified URL in the button.

### items.menuButtons `Array`

Specifies the menu buttons of a SplitButton.

### items.menuButtons.enable `Boolean`

Specifies whether the menu button is initially enabled or disabled.

### items.menuButtons.icon `String`

Sets icon for the menu buttons. The icon should be one of the existing in the Kendo UI theme sprite.

### items.menuButtons.id `String`

Specifies the ID of the menu buttons.

### items.menuButtons.imageUrl `String`

If set, the ToolBar will render an image with the specified URL in the menu button.

### items.menuButtons.spriteCssClass `String`

Defines a CSS class (or multiple classes separated by spaces) which will be used for menu button icon.

### items.menuButtons.text `String`

Specifies the text of the menu buttons.

### items.menuButtons.url `String`

Specifies the url of the menu button to navigate to.

### items.overflow `String` *(default: "auto")*

Specifies how the button behaves when the ToolBar is resized. Possible values are: "always", "never" or "auto" (default).

### items.overflowTemplate `String|Function`

Specifies what element will be added in the command overflow popup. Applicable only for items that have a template.

### items.primary `Boolean` *(default: false)*

Specifies whether the button is primary. Primary buttons receive different styling.

### items.selectable `Boolean` *(default: false)*

Specifies if the toggle button is initially selected. Applicable only for buttons with `togglable: true`.

### items.showIcon `String` *(default: "both")*

Specifies where the button icon will be displayed. Possible values are: "toolbar", "overflow" or "both" (default).

### items.showText `String` *(default: "both")*

Specifies where the text will be displayed. Possible values are: "toolbar", "overflow" or "both" (default).

### items.spriteCssClass `String`

Defines a CSS class (or multiple classes separated by spaces) which will be used for button icon.

### items.template `String|Function`

Specifies what element will be added in the ToolBar wrapper. Items with template does not have a type.

### items.text `String`

Sets the text of the button.

### items.togglable `Boolean` *(default: false)*

Specifies if the button is togglable, e.g. has a selected and unselected state.

### items.toggle `Function`

Specifies the toggle event handler of the button. Applicable only for commands of type `button` and `togglable: true`.

### items.type `String`

Specifies the command type. Supported types are "button", "splitButton", "buttonGroup", "separator".

> Specifying the type is **mandatory**. Only commands that have a `template` does not need `type`.

### items.url `String`

Specifies the url to navigate to.

## Methods

### add

Adds new command to the ToolBar widget. Accepts object with [valid command configuration options](/getting-started/web/toolbar/overview#command-types).

#### Parameters

##### command `Object`

An object with valid command configuration options.

#### Example - add button to the ToolBar

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", text: "MyButton" }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.add({
            type: "button",
            text: "Just added",
            togglable: true
        });)
    </script>

### destroy

Prepares the widget for safe removal from DOM. Detaches all event handlers and removes jQuery.data attributes to avoid memory leaks. Calls destroy method of any child Kendo widgets.

> This method does not remove the widget element from DOM.

#### Example

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
          items: [
            { type: "button", text: "MyButton" }
          ]
        });
        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.destroy();
    </script>

### enable

Enables or disables the specified command. If the second parameter is omitted it will be treated as `true` and the command will be enabled.

#### Parameters

##### command `String|Element|jQuery`

A string, DOM element or jQuery object which represents the command to be enabled or disabled. A string is treated as jQuery selector.

##### enable `Boolean`

A boolean flag that determines whether the command should be enabled (true) or disabled (false). If omitted the command will be enabled.

#### Example - enable command

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1", enable: false }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.enable("#btn1"); //enables the initially disabled command
    </script>

#### Example - disable command

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1", enable: true }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.enable("#btn1", false); //disables the initially disabled command
    </script>

### getSelectedFromGroup

Returns the selected toggle button from the specified group.

#### Parameters

##### groupName `String`

The name of the group.

#### Example - get selected button from group with name "radio"

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { 
                    type: "buttonGroup",
                    items: [
                        { type: "button", id: "btn1", text: "Button 1", togglable: true, group: "radio" },
                        { type: "button", id: "btn1", text: "Button 1", togglable: true, group: "radio", selected: true },
                        { type: "button", id: "btn1", text: "Button 1", togglable: true, group: "radio" }
                    ]
                }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        var selected = toolbar.getSelectedFromGroup("radio");

        console.log(selected.attr("id"));
    </script>

### remove

Removes a command from the ToolBar widget. The command is removed from the ToolBar container and overflow popup (if resizable is enabled).

#### Parameters

##### command `String|Element|jQuery`

A string, DOM element or jQuery object which represents the command to be removed. A string is treated as jQuery selector.

#### Example - removed button from the ToolBar

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2" }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.remove($("#btn2"));
    </script>

## Events

### click

Fires when the user clicks a command button.

> The event does not fire for togglable buttons. If the button has `togglable: true` use the `toggle` event.

#### Event Data

##### e.target `jQuery`

The jQuery object that represents the command element.

##### e.id `String`

The id of the command element.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "click" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2" }
            ],
            click: function(e) {
                console.log("click", e.target.text());
            }
        });
    </script>

#### Example - subscribe to the "click" event after initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2" }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("click", function(e){
            console.log("click", e.target.text());
        });
    </script>

### close

Fires when the SplitButton's popup closes.

#### Event Data

##### e.SplitButton `jQuery`

The jQuery object that represents the SplitButton element.

##### e.preventDefault `Function`

Prevents the close action if called. The popup will remain open.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "close" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "splitButton", id: "splitButton", name: "splitButton", text: "Split Button", items: [
                    { id: "option1", text: "Option 1" },
                    { id: "option2", text: "Option 2" },
                    { id: "option3", text: "Option 3" },
                    { id: "option4", text: "Option 4" }
                ] }
            ],
            close: function(e) {
                console.log("close", e);
            }
        });
    </script>

#### Example - subscribe to the "close" event after initialization and prevent the popup closing

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "splitButton", id: "splitButton", name: "splitButton", text: "Split Button", items: [
                    { id: "option1", text: "Option 1" },
                    { id: "option2", text: "Option 2" },
                    { id: "option3", text: "Option 3" },
                    { id: "option4", text: "Option 4" }
                ] }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("close", function(e){
            console.log("close", e);
        });
    </script>

### open

Fires when the Split Button's popup opens.

#### Event Data

##### e.SplitButton `jQuery`

The jQuery object that represents the SplitButton element.

##### e.preventDefault `Function`

Prevents the open action if called. The popup will remain closed.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "open" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "splitButton", id: "splitButton", name: "splitButton", text: "Split Button", items: [
                    { id: "option1", text: "Option 1" },
                    { id: "option2", text: "Option 2" },
                    { id: "option3", text: "Option 3" },
                    { id: "option4", text: "Option 4" }
                ] }
            ],
            open: function(e) {
                console.log("open", e);
            }
        });
    </script>

#### Example - subscribe to the "open" event after initialization and prevent the popup closing

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "splitButton", id: "splitButton", name: "splitButton", text: "Split Button", items: [
                    { id: "option1", text: "Option 1" },
                    { id: "option2", text: "Option 2" },
                    { id: "option3", text: "Option 3" },
                    { id: "option4", text: "Option 4" }
                ] }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("open", function(e){
            console.log("open", e);
        });
    </script>

### toggle

Fires when the user changes the checked state of a toggle button.

> **Important** `click` event does not fire for buttons that have `togglable: true`

#### Event Data

##### e.target `jQuery`

The jQuery object that represents the command element.

##### e.checked `Boolean`

Boolean flag that indicates the button state.

##### e.id `String`

The id of the command element.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "toggle" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1", togglable: true },
                { type: "button", id: "btn2", text: "Button 2", togglable: true }
            ],
            toggle: function(e) {
                console.log("toggle", e.target.text(), e.checked);
            }
        });
    </script>

#### Example - subscribe to the "toggle" event after initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1", togglable: true },
                { type: "button", id: "btn2", text: "Button 2", togglable: true }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("toggle", function(e){
            console.log("toggle", e.target.text(), e.checked);
        });
    </script>

### overflowClose

Fires when the overflow popup container is about to close.

#### Event Data

##### e.preventDefault `Function`

Prevents the close action if called. The popup will remain open.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "overflowClose" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2", overflow: "always" }
            ],
            overflowClose: function(e) {
                console.log("close");
            }
        });
    </script>

#### Example - subscribe to the "overflowClose" event after initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2", overflow: "always" }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("overflowClose", function(e){
            console.log("close");
        });
    </script>

### overflowOpen

Fires when the overflow popup container is about to open.

#### Event Data

##### e.preventDefault `Function`

Prevents the close action if called. The popup will remain closed.

##### e.sender `kendo.ui.ToolBar`

The widget instance which fired the event.

#### Example - subscribe to the "overflowOpen" event during initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2", overflow: "always" }
            ],
            overflowOpen: function(e) {
                console.log("open");
            }
        });
    </script>

#### Example - subscribe to the "overflowOpen" event after initialization

    <div id="toolbar"></div>
    <script>
        $("#toolbar").kendoToolBar({
            items: [
                { type: "button", id: "btn1", text: "Button 1" },
                { type: "button", id: "btn2", text: "Button 2", overflow: "always" }
            ]
        });

        var toolbar = $("#toolbar").data("kendoToolBar");
        toolbar.bind("overflowOpen", function(e){
            console.log("open");
        });
    </script>
