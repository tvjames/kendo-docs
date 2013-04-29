---
title:ChartNavigatorBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartnavigatorbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartNavigatorBuilder
Defines the fluent interface for configuring the !:ChartNavigator{T}.



## Methods

### Select(`System.Nullable<System.DateTime>,System.Nullable<System.DateTime>`)
Sets the selection range


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("StockChart")
        .Navigator(nav => nav.Select(DateTime.Today.AddMonths(-1), DateTime.Today))
    %>
        


#### Parameters

##### from `System.Nullable<System.DateTime>`
The selection range start.

##### to `System.Nullable<System.DateTime>`
The selection range end.




### Series(`System.Action<Kendo.Mvc.UI.Fluent.ChartSeriesFactory<T>>`)
Defines the navigator series. At least one series should be configured.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav =>
        nav.Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartSeriesFactory](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartSeriesFactory)<T>>
The add action.




### Visible(`System.Boolean`)
Sets the navigator visibility


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav => nav
        .Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        .Visible(false)
        )
    %>
        


#### Parameters

##### visible `System.Boolean`
The navigator visibility.




### Hint(`System.Action<Kendo.Mvc.UI.Fluent.ChartNavigatorHintBuilder>`)
Defines the navigator hint.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(nav =>
        nav.Series(series =>
        {
        series.Bar(s => s.SalesAmount);
        })
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartNavigatorHintBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartNavigatorHintBuilder)>
The add action.




### DataSource(`System.Action<Kendo.Mvc.UI.Fluent.ReadOnlyAjaxDataSourceBuilder<T>>`)
Data Source configuration for the Navigator.
            When configured, the Navigator will filter the main StockChart data source to the selected range.


#### Example

    <%= Html.Kendo().StockChart()
        .Name("Chart")
        .Navigator(navi => navi
        .DataSource(ds =>
        {
        ds.Ajax().Read(r => r.Action("SalesData", "Chart"));
        })
        )
    %>
        


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ReadOnlyAjaxDataSourceBuilder](/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ReadOnlyAjaxDataSourceBuilder)<T>>
Use the configurator to set different data binding options.




### DateField(`System.String`)
Sets the field used by the navigator date axes.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("Chart")
        .Navigator(navi => navi
        .DateField("Date")
        )
    %>
        


#### Parameters

##### dateField `System.String`
The date field.




### AutoBind(`System.Boolean`)
Enables or disables automatic binding.


#### Example

    <%= Html.Kendo().StockChart()
        .Name("Chart")
        .Navigator(navi => navi
        .DataSource(ds =>
        {
        ds.Ajax().Read(r => r.Action("SalesData", "Chart"));
        })
        .AutoBind(false)
        )
    %>
        


#### Parameters

##### autoBind `System.Boolean`
Gets or sets a value indicating if the navigator
            should be data bound during initialization.
            The default value is true.





