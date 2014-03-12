---
title:CustomDataSourceTransportBuilderBase
slug:aspnetmvc-kendo.mvc.ui.fluent.customdatasourcetransportbuilderbase
publish:true
---

# Kendo.Mvc.UI.Fluent.CustomDataSourceTransportBuilderBase
Defines the fluent interface for configuring the Transport options.



## Methods

### ParameterMap(`System.Func<System.Object,System.Object>`)
Sets the parameterMap function.





### ParameterMap(`System.String`)
Sets the parameterMap function.


#### Parameters

##### handler `System.String`
JavaScript function name





### Read(`System.Action<Kendo.Mvc.UI.Fluent.CustomCrudOperationBuilder>`)
Configures the URL for Read operation.





### Read(`System.String,System.String,System.Object`)
Sets controller and action for Read operation.


#### Parameters

##### actionName `System.String`
Action name

##### controllerName `System.String`
Controller Name

##### routeValues `System.Object`
Route values





### Read(`System.String,System.String`)
Sets controller, action and routeValues for Read operation.


#### Parameters

##### actionName `System.String`
Action name

##### controllerName `System.String`
Controller Name





### Read(`System.Object`)
Sets the Read operation using anonymous object.





### Read(`System.String`)
Sets JavaScript function which to return additional parameters which to be sent the server.


#### Parameters

##### handler `System.String`
JavaScript function name






