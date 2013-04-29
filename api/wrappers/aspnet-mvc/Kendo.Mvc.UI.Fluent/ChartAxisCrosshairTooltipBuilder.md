---
title:ChartAxisCrosshairTooltipBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartaxiscrosshairtooltipbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartAxisCrosshairTooltipBuilder
Defines the fluent interface for configuring ChartAxisCrosshairTooltipBuilder.



## Methods

### Font(`System.String`)
Sets the tooltip font


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Font("14px Arial,Helvetica,sans-serif")
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### font `System.String`
The tooltip font (CSS format).




### Visible(`System.Boolean`)
Sets the tooltip visible


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### visible `System.Boolean`
The tooltip visible.




### Background(`System.String`)
Sets the tooltip background


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Background("red")
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### background `System.String`
The tooltip background.




### Color(`System.String`)
Sets the tooltip text color


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .color("red")
        .Visible(true)
        )
        )
        .Render();
    %>
        


#### Parameters

##### color `System.String`
The tooltip text color.
            The default is the same as the series labels color.




### Padding(`System.Int32,System.Int32,System.Int32,System.Int32`)
Sets the tooltip padding


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Padding(0, 5, 5, 0)
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### top `System.Int32`
The tooltip top padding.

##### right `System.Int32`
The tooltip right padding.

##### bottom `System.Int32`
The tooltip bottom padding.

##### left `System.Int32`
The tooltip left padding.




### Padding(`System.Int32`)
Sets the tooltip padding


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Padding(20)
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### padding `System.Int32`
The tooltip padding.




### Border(`System.Int32,System.String`)
Sets the tooltip border


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Border(1, "Red")
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### width `System.Int32`
The tooltip border width.

##### color `System.String`
The tooltip border color (CSS syntax).




### Border(`System.Action<Kendo.Mvc.UI.Fluent.ChartBorderBuilder>`)
Configures the tooltip border



#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartBorderBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartBorderBuilder)>
The border configuration action




### Format(`System.String`)
Sets the tooltip format


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Format("{0:C}")
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### format `System.String`
The tooltip format.




### Template(`System.String`)
Sets the tooltip template


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Template("|<#= value #|>")
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### template `System.String`
The tooltip template.




### Opacity(`System.Double`)
Sets the tooltip opacity.


#### Example

    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        .series.Bar(new double[] { 15.7, 16.7, 20, 23.5, 26.6 }).Name("World");
        .series.Bar(new double[] { 67.96, 68.93, 75, 74, 78 }).Name("United States");
        })
        .CategoryAxis(axis => axis
        .Categories("2005", "2006", "2007", "2008", "2009")
        .Crosshair(crosshair => crosshair
        .Visible(true)
        .Tooltip(tooltip => tooltip
        .Opacity(0.5)
        .Visible(true)
        )
        )
        )
        .Render();
    %>
        


#### Parameters

##### opacity `System.Double`
The series opacity in the range from 0 (transparent) to 1 (opaque).
            The default value is 1.





