---
title:HierarchicalModelDescriptorBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.hierarchicalmodeldescriptorbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.HierarchicalModelDescriptorBuilder
Defines the fluent interface for configuring the HierarchicalModelDescriptor.



## Methods

### Id(`System.String`)
Specify the model id member name.


#### Parameters

##### fieldName `System.String`
The member name.





### Children(`System.String`)
Specify the model children member name.


#### Parameters

##### fieldName `System.String`
The member name.





### Children(`System.Action<Kendo.Mvc.UI.Fluent.HierarchicalDataSourceBuilder>`)
Specify the children DataSource configuration.


#### Parameters

##### fieldName System.Action<[Kendo.Mvc.UI.Fluent.HierarchicalDataSourceBuilder](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/HierarchicalDataSourceBuilder)>
The configurator action.





### HasChildren(`System.String`)
Specify the member name used to determine if the model has children.


#### Parameters

##### fieldName `System.String`
The member name.





### Field(`System.String,System.Type`)
Describes a Model field


#### Parameters

##### memberName `System.String`
Field name

##### memberType `System.Type`
Field type






