---
title:ChartAxisBaseUnitStepsBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartaxisbaseunitstepsbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartAxisBaseUnitStepsBuilder
Defines the fluent interface for configuring ChartAxisBaseUnitStepsBuilder.



## Methods

### Minutes(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Minutes and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Minutes(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Minutes.




### Hours(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Hours and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Hours(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Hours.




### Days(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Days and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Days(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Days.




### Weeks(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Weeks and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Weeks(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Weeks.




### Months(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Months and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Months(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Months.




### Years(`System.Int32[]`)
The discrete BaseUnitStep values when BaseUnit is set to Years and
            BaseUnitStep is set to 0 (auto).


#### Example

    <% Html.Kendo().Chart()
        .Name("chart")
        .Title("Units sold")
        .Series(series => {
        series
        .Column(new int[] { 20, 40, 45, 30, 50 });
        })
        .CategoryAxis(axis => axis
        .Date()
        .BaseUnit(ChartAxisBaseUnit.Fit)
        .AutoBaseUnitSteps(steps => steps.Years(1, 2))
        )
    %>
        


#### Parameters

##### steps `System.Int32[]`
The discrete steps when BaseUnit is set to Years.





