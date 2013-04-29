---
title:ChartBulletSeriesBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartbulletseriesbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartBulletSeriesBuilder
Defines the fluent interface for configuring bullet series.


## Properties
### Series
Gets or sets the series.



## Methods

### Gap(System.Double)
Set distance between category clusters.
            
            A value of 1 means that there is a total of 1 bullet width / vertical bullet height between categories.
            The distance is distributed evenly on each side.
            The default value is 1.5


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Gap(1))
    %>
        




### Spacing(System.Double)
Sets a value indicating the distance between bullets / categories.


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Spacing(1))
    %>
        


#### Parameters

##### spacing `System.Double`
Value of 1 means that the distance between bullets is equal to their width.
            The default value is 0




### Border(System.Int32,System.String,Kendo.Mvc.UI.ChartDashType)
Sets the bullets border.


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Border("1", "#000", ChartDashType.Dot))
        .Render();
    %>
        


#### Parameters

##### width `System.Int32`
The bullets border width.

##### color `System.String`
The bullets border color (CSS syntax).

##### dashType [Kendo.Mvc.UI.ChartDashType](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartDashType)
The bullets border dash type.




### Overlay(Kendo.Mvc.UI.ChartBarSeriesOverlay)
Sets the bullet effects overlay


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Overlay(ChartBarSeriesOverlay.None))
        .Render();
    %>
        


#### Parameters

##### overlay [Kendo.Mvc.UI.ChartBarSeriesOverlay](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartBarSeriesOverlay)
The bullet effects overlay. The default is ChartBarSeriesOverlay.Glass




### Name(System.String)
Sets the series title displayed in the legend.


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Name("Sales"))
    %>
        


#### Parameters

##### text `System.String`
The title.




### Opacity(System.Double)
Sets the series opacity.


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Opacity(0.5))
    %>
        


#### Parameters

##### opacity `System.Double`
The series opacity in the range from 0 (transparent) to 1 (opaque).
            The default value is 1.




### Color(System.String)
Sets the bullet fill color


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Color("Red"))
        .Render();
    %>
        


#### Parameters

##### color `System.String`
The bar bullet color (CSS syntax).




### Tooltip(System.Action\<Kendo.Mvc.UI.Fluent.ChartTooltipBuilder>)
Configure the data point tooltip for the series.


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target)
        .Tooltip(tooltip =>
        {
        tooltip.Visible(true).Format("{0:C}");
        })
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartTooltipBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartTooltipBuilder)>
Use the configurator to set data tooltip options.




### Tooltip(System.Boolean)
Sets the data point tooltip visibility.


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Tooltip(true))
    %>
        


#### Parameters

##### visible `System.Boolean`
A value indicating if the data point tooltip should be displayed.
            The tooltip is not visible by default.




### Axis(System.String)
Sets the axis name to use for this series.


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target).Name("Sales").Axis("secondary"))
        .ValueAxis(axis => axis.Numeric())
        .ValueAxis(axis => axis.Numeric("secondary"))
        .CategoryAxis(axis => axis.AxisCrossingValue(0, 10))
    %>
        


#### Parameters

##### axis `System.String`
The axis name for this series.




### Target(System.Action\<Kendo.Mvc.UI.Fluent.ChartBulletTargetBuilder>)
Configure the data point tooltip for the series.


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series.Bullet(s => s.Current, s => s.Target)
        .Tooltip(tooltip =>
        {
        tooltip.Visible(true).Format("{0:C}");
        })
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartBulletTargetBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartBulletTargetBuilder)>
Use the configurator to set data tooltip options.





