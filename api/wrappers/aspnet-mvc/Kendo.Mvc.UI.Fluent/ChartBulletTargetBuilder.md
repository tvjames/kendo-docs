---
title:ChartBulletTargetBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartbullettargetbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartBulletTargetBuilder
Defines the fluent interface for configuring the chart target.



## Methods

### Width(`System.Int32`)
Sets the target width.


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series
        .Bullet(s => s.Current, s => s.Target)
        .Target(target => target
        .Width(10)
        );
        )
        .Render();
    %>
        


#### Parameters

##### width `System.Int32`
The target width.




### Border(`System.Int32,System.String,Kendo.Mvc.UI.ChartDashType`)
Sets the target border


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series
        .Bullet(s => s.Current, s => s.Target)
        .Target(target => target
        .Border(1, "Red", ChartDashType.Dot)
        );
        )
        .Render();
    %>
        


#### Parameters

##### width `System.Int32`
The target border width.

##### color `System.String`
The target border color (CSS syntax).

##### dashType [Kendo.Mvc.UI.ChartDashType](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartDashType)
The target border dash type.




### Border(`System.Action<Kendo.Mvc.UI.Fluent.ChartBorderBuilder>`)
Configures the markers border



#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartBorderBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartBorderBuilder)>
The border configuration action




### Color(`System.String`)
Sets the color of the bullet chart target.


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series
        .Bullet(s => s.Current, s => s.Target)
        .Target(target => target
        .Color("Red");
        );
        )
        .Render();
    %>
        


#### Parameters

##### color `System.String`
The color of the bullet chart target.





