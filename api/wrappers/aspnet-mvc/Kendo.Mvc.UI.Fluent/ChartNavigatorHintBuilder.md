---
title:ChartNavigatorHintBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartnavigatorhintbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartNavigatorHintBuilder
Defines the fluent interface for configuring ChartNavigatorhintBuilder.



## Methods

### Format(System.String)
Sets the border color.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav => nav
        .Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        .Hint(hint => hint
        .Format("{0:d} | {1:d}")
        )
        )
    %>
        


#### Parameters

##### color `System.String`
The border color (CSS format).




### Template(System.String)
Sets the border opacity


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav => nav
        .Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        .Hint(hint => hint
        .Template("From: #= from # To: #= to #")
        )
        )
    %>
        


#### Parameters

##### opacity `System.String`
The border opacity (CSS format).




### Visible(System.Boolean)
Sets the hint visibility.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav => nav
        .Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        .Hint(hint => hint
        .Visible(false)
        )
        )
    %>
        


#### Parameters

##### visible `System.Boolean`
The hint visibility.





