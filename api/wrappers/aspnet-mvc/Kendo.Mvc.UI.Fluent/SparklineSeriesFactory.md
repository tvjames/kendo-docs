---
title:SparklineSeriesFactory
slug:aspnetmvc-kendo.mvc.ui.fluent.sparklineseriesfactory
publish:true
---

# Kendo.Mvc.UI.Fluent.SparklineSeriesFactory
Creates series for the !:Sparkline{TModel}.


## Properties
### Container
The parent Sparkline



## Methods

### Bar(`System.Linq.Expressions.Expression<System.Func<T,T1>>,System.Linq.Expressions.Expression<System.Func<T,System.String>>`)
Defines bound bar series.


#### Parameters

##### valueExpression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the point value from the chart model

##### colorExpression `System.Linq.Expressions.Expression<System.Func<T,System.String>>`
The expression used to extract the point color from the chart model





### Bar(`System.String,System.String`)
Defines bound bar series.


#### Parameters

##### valueMemberName `System.String`
The name of the value member.

##### colorMemberName `System.String`
The name of the color member.





### Bar(`System.Type,System.String,System.String`)
Defines bound bar series.


#### Parameters

##### memberType `System.Type`
The type of the value member.

##### valueMemberName `System.String`
The name of the value member.

##### colorMemberName `System.String`
The name of the color member.





### Bar(`System.Collections.IEnumerable`)
Defines bar series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to.





### Column(`System.Linq.Expressions.Expression<System.Func<T,T1>>,System.Linq.Expressions.Expression<System.Func<T,System.String>>`)
Defines bound column series.


#### Parameters

##### valueExpression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the point value from the chart model

##### colorExpression `System.Linq.Expressions.Expression<System.Func<T,System.String>>`
The expression used to extract the point color from the chart model





### Column(`System.String,System.String`)
Defines bound bar series.


#### Parameters

##### valueMemberName `System.String`
The name of the value member.

##### colorMemberName `System.String`
The name of the color member.





### Column(`System.Type,System.String,System.String`)
Defines bound bar series.


#### Parameters

##### memberType `System.Type`
The type of the value member.

##### valueMemberName `System.String`
The name of the value member.

##### colorMemberName `System.String`
The name of the color member.





### Column(`System.Collections.IEnumerable`)
Defines bar series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to





### Line(`System.Linq.Expressions.Expression<System.Func<T,T1>>`)
Defines bound line series.


#### Parameters

##### expression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the series value from the chart model





### Line(`System.String`)
Defines bound line series.


#### Parameters

##### memberName `System.String`
The name of the value member.





### Line(`System.Type,System.String`)
Defines bound line series.


#### Parameters

##### memberType `System.Type`
The type of the value member.

##### memberName `System.String`
The name of the value member.





### Line(`System.Collections.IEnumerable`)
Defines line series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to





### Area(`System.Linq.Expressions.Expression<System.Func<T,T1>>`)
Defines bound area series.


#### Parameters

##### expression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the series value from the chart model.





### Area(`System.String`)
Defines bound area series.


#### Parameters

##### memberName `System.String`
The name of the value member.





### Area(`System.Type,System.String`)
Defines bound area series.


#### Parameters

##### memberType `System.Type`
The type of the value member.

##### memberName `System.String`
The name of the value member.





### Area(`System.Collections.IEnumerable`)
Defines area series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to





### Pie(`System.Linq.Expressions.Expression<System.Func<T,T1>>,System.Linq.Expressions.Expression<System.Func<T,System.String>>,System.Linq.Expressions.Expression<System.Func<T,System.String>>,System.Linq.Expressions.Expression<System.Func<T,System.Boolean>>,System.Linq.Expressions.Expression<System.Func<T,System.Boolean>>`)
Defines bound pie series.





### Pie(`System.String,System.String,System.String,System.String,System.String`)
Defines bound pie series.





### Pie(`System.Type,System.String,System.String,System.String,System.String,System.String`)
Defines bound pie series.





### Pie(`System.Collections.IEnumerable`)
Defines pie series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to





### Bullet(`System.Linq.Expressions.Expression<System.Func<T,T1>>,System.Linq.Expressions.Expression<System.Func<T,T1>>,System.Linq.Expressions.Expression<System.Func<T,System.String>>`)
Defines bound bullet series.


#### Parameters

##### currentExpression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the point current value from the chart model

##### targetExpression `System.Linq.Expressions.Expression<System.Func<T,T1>>`
The expression used to extract the point target value from the chart model

##### colorExpression `System.Linq.Expressions.Expression<System.Func<T,System.String>>`
The expression used to extract the point color from the chart model





### Bullet(`System.String,System.String,System.String`)
Defines bound bar series.


#### Parameters

##### currentMemberName `System.String`
The name of the current value member.

##### targetMemberName `System.String`
The name of the target value member.

##### colorMemberName `System.String`
The name of the color member.





### Bullet(`System.Type,System.String,System.String,System.String`)
Defines bound bullet series.


#### Parameters

##### currentMemberType `System.Type`
The type of the current value member.

##### targetMemberName `System.String`
The name of the target value member.

##### colorMemberName `System.String`
The name of the color member.





### Bullet(`System.Collections.IEnumerable`)
Defines bar series bound to inline data.


#### Parameters

##### data `System.Collections.IEnumerable`
The data to bind to.






