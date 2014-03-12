---
title:ChartStepLineSeriesBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartsteplineseriesbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartStepLineSeriesBuilder
Defines the fluent interface for configuring step line series.



## Methods

### Stack(`System.Boolean`)
Sets a value indicating if the areas should be stacked.


#### Parameters

##### stacked `System.Boolean`
A value indicating if the areas should be stacked.




#### Example (ASPX)
    <%= Html.Kendo().Chart(Model)
    .Name("Chart")
    .Series(series => series.StepLine(s => s.Sales).Stack(true))
    %>


### Aggregate(`Kendo.Mvc.UI.ChartSeriesAggregate`)
Sets the aggregate function for date series.
            This function is used when a category (an year, month, etc.) contains two or more points.


#### Parameters

##### aggregate [Kendo.Mvc.UI.ChartSeriesAggregate](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartSeriesAggregate)
Aggregate function name.




#### Example (ASPX)
    <%= Html.Kendo().Chart(Model)
    .Name("Chart")
    .Series(series => series.StepLine(s => s.Sales).Aggregate())
    %>


### Labels(`System.Action<Kendo.Mvc.UI.Fluent.ChartPointLabelsBuilder>`)
Configures the step line chart labels.


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartPointLabelsBuilder](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartPointLabelsBuilder)>
The configuration action.




#### Example (ASPX)
    <%= Html.Kendo().Chart()
    .Name("Chart")
    .Series(series => series
        .StepLine(s => s.Sales)
        .Labels(labels => labels
            .Position(ChartBarLabelsPosition.Above)
            .Visible(true)
            );
        )
    %>


### Labels(`System.Boolean`)
Sets the visibility of step line chart labels.


#### Parameters

##### visible `System.Boolean`
The visibility. The default value is false.




#### Example (ASPX)
    <%= Html.Kendo().Chart()
    .Name("Chart")
    .Series(series => series
        .StepLine(s => s.Sales)
        .Labels(true);
    )
    %>


### Line(`System.Int32,System.String,Kendo.Mvc.UI.ChartDashType`)
Configures the step line chart line.


#### Parameters

##### width `System.Int32`
The line width.

##### color `System.String`
The line color.

##### dashType [Kendo.Mvc.UI.ChartDashType](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartDashType)
The line dashType.




#### Example (ASPX)
    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series
            .StepLine(s => s.Sales)
            .Line(2, "red", ChartDashType.Dot)
        )
        .Render();
    %>


### Line(`System.Action<Kendo.Mvc.UI.Fluent.ChartAreaLineBuilder>`)
Configures the step line chart line.


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartAreaLineBuilder](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartAreaLineBuilder)>
The configuration action.




#### Example (ASPX)
    <% Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => series
            .StepLine(s => s.Sales)
            .Line(line => line.Opacity(0.2))
        )
        .Render();
    %>


### Markers(`System.Action<Kendo.Mvc.UI.Fluent.ChartMarkersBuilder>`)
Configures the step line chart markers.


#### Parameters

##### configurator System.Action<[Kendo.Mvc.UI.Fluent.ChartMarkersBuilder](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI.Fluent/ChartMarkersBuilder)>
The configuration action.




#### Example (ASPX)
    <%= Html.Kendo().Chart()
    .Name("Chart")
    .Series(series => series
        .StepLine(s => s.Sales)
        .Markers(markers => markers
            .Type(ChartMarkerShape.Triangle)
            );
        )
    %>


### Markers(`System.Boolean`)
Sets the visibility of step line chart markers.


#### Parameters

##### visible `System.Boolean`
The visibility. The default value is true.




#### Example (ASPX)
    <%= Html.Kendo().Chart()
    .Name("Chart")
    .Series(series => series
        .StepLine(s => s.Sales)
        .Markers(true);
    )
    %>


### MissingValues(`Kendo.Mvc.UI.ChartStepLineMissingValues`)
Configures the behavior for handling missing values in step line series.


#### Parameters

##### missingValues [Kendo.Mvc.UI.ChartStepLineMissingValues](/kendo-ui/api/wrappers/aspnet-mvc/Kendo.Mvc.UI/ChartStepLineMissingValues)
The missing values behavior. The default is to leave gaps.




#### Example (ASPX)
    <%= Html.Kendo().Chart()
    .Name("Chart")
    .Series(series => series
        .StepLine(s => s.Sales)
        .MissingValues(ChartStepLineMissingValues.Interpolate);
    )
    %>



