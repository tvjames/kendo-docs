---
title:SparklineBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.sparklinebuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.SparklineBuilder
Defines the fluent interface for configuring the !:Sparkline{T} component.



## Methods

### Data(`System.Collections.IEnumerable`)
Sets the Sparkline data.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Data(new int[] { 1, 2 })
    %>
        


#### Parameters

##### data `System.Collections.IEnumerable`
The data for the default Sparkline series.




### Data(`System.Double`)
Sets the Sparkline data.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Data(new int[] { 1, 2 })
    %>
        


#### Parameters

##### data `System.Double`
The data for the default Sparkline series.




### Type(`Kendo.Mvc.UI.SparklineType`)
Sets the type of the sparkline.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Type(SparklineType.Area)
    %>
        


#### Parameters

##### theme [Kendo.Mvc.UI.SparklineType](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/SparklineType)
The Sparkline type.




### PointWidth(`System.Double`)
Sets the per-point width of the sparkline.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .PointWidth(2)
    %>
        


#### Parameters

##### theme `System.Double`
The Sparkline per-point width.




### Events(`System.Action<Kendo.Mvc.UI.Fluent.ChartEventBuilder>`)
Configures the client-side events.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Events(events => events
        .OnLoad("onLoad")
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartEventBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartEventBuilder)>
The client events configuration action.




### Theme(`System.String`)
Sets the theme of the chart.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Theme("Telerik")
    %>
        


#### Parameters

##### theme `System.String`
The Sparkline theme.




### ChartArea(`System.Action<Kendo.Mvc.UI.Fluent.ChartAreaBuilder>`)
Sets the Chart area.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .ChartArea(chartArea => chartArea.margin(20))
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartAreaBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartAreaBuilder)>
The Chart area.




### PlotArea(`System.Action<Kendo.Mvc.UI.Fluent.PlotAreaBuilder>`)
Sets the Plot area.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .PlotArea(plotArea => plotArea.margin(20))
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.PlotAreaBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/PlotAreaBuilder)>
The Plot area.




### Series(`System.Action<Kendo.Mvc.UI.Fluent.SparklineSeriesFactory<T>>`)
Defines the chart series.


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
        .Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.SparklineSeriesFactory](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/SparklineSeriesFactory)<T>>
The add action.




### SeriesDefaults(`System.Action<Kendo.Mvc.UI.Fluent.SparklineSeriesDefaultsBuilder<T>>`)
Defines the options for all chart series of the specified type.


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
        .SeriesDefaults(series => series.Bar().Stack(true))
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.SparklineSeriesDefaultsBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/SparklineSeriesDefaultsBuilder)<T>>
The configurator.




### AxisDefaults(`System.Action<Kendo.Mvc.UI.Fluent.ChartAxisDefaultsBuilder<T>>`)
Defines the options for all chart axes of the specified type.


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
        .AxisDefaults(axisDefaults => axisDefaults.MinorTickSize(5))
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartAxisDefaultsBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartAxisDefaultsBuilder)<T>>
The configurator.




### CategoryAxis(`System.Action<Kendo.Mvc.UI.Fluent.ChartCategoryAxisBuilder<T>>`)
Configures the category axis


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
        .CategoryAxis(axis => axis
        .Categories(s => s.DateString)
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartCategoryAxisBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartCategoryAxisBuilder)<T>>
The configurator




### ValueAxis(`System.Action<Kendo.Mvc.UI.Fluent.ChartValueAxisFactory<T>>`)
Defines value axis options


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
        .ValueAxis(a => a.Numeric().TickSize(4))
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartValueAxisFactory](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartValueAxisFactory)<T>>
The configurator




### DataSource(`System.Action<Kendo.Mvc.UI.Fluent.ReadOnlyAjaxDataSourceBuilder<T>>`)
Data Source configuration


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .DataSource(ds =>
        {
        ds.Ajax().Read(r => r.Action("SalesData", "Sparkline"));
        })
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ReadOnlyAjaxDataSourceBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ReadOnlyAjaxDataSourceBuilder)<T>>
Use the configurator to set different data binding options.




### AutoBind(`System.Boolean`)
Enables or disables automatic binding.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .DataSource(ds =>
        {
        ds.Ajax().Read(r => r.Action("SalesData", "Sparkline"));
        })
        .AutoBind(false)
    %>
        


#### Parameters

##### autoBind `System.Boolean`
Gets or sets a value indicating if the chart
            should be data bound during initialization.
            The default value is true.




### SeriesColors(`System.Collections.Generic.IEnumerable<System.String>`)
Sets the series colors.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .SeriesColors(new string[] { "#f00", "#0f0", "#00f" })
    %>
        


#### Parameters

##### colors `System.Collections.Generic.IEnumerable<System.String>`
A list of the series colors.




### SeriesColors(`System.String[]`)
Sets the series colors.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .SeriesColors("#f00", "#0f0", "#00f")
    %>
        


#### Parameters

##### colors `System.String[]`
The series colors.




### Tooltip(`System.Action<Kendo.Mvc.UI.Fluent.ChartTooltipBuilder>`)
Use it to configure the data point tooltip.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Tooltip(tooltip =>
        {
        tooltip.Visible(true).Format("{0:C}");
        })
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartTooltipBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartTooltipBuilder)>
Use the configurator to set data tooltip options.




### Tooltip(`System.Boolean`)
Sets the data point tooltip visibility.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Tooltip(true)
    %>
        


#### Parameters

##### visible `System.Boolean`
A value indicating if the data point tooltip should be displayed.
            The tooltip is not visible by default.




### Transitions(`System.Boolean`)
Enables or disabled animated transitions on initial load and refresh.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Transitions(false)
    %>
        


#### Parameters

##### transitions `System.Boolean`
A value indicating if transition animations should be played.





