---
title:ChartAxisLabelsDateFormatsBuilder
slug:aspnetmvc-kendo.mvc.ui.fluent.chartaxislabelsdateformatsbuilder
publish:true
---

# Kendo.Mvc.UI.Fluent.ChartAxisLabelsDateFormatsBuilder
Defines the fluent interface for configuring ChartLine.



## Methods

### Hours(`System.String`)
Sets the date format when the base date unit is Hours


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Hours("HH:mm")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.




### Days(`System.String`)
Sets the date format when the base date unit is Days


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Days("dddd dd")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.




### Minutes(`System.String`)
Sets the date format when the base date unit is Minutes


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Minutes("ss")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.




### Months(`System.String`)
Sets the date format when the base date unit is Months


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Months("MMMM MM")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.




### Weeks(`System.String`)
Sets the date format when the base date unit is Months


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Months("dddd")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.




### Years(`System.String`)
Sets the date format when the base date unit is Years


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .CategoryAxis(axis => axis
        .Date()
        .Labels(labels => labels
        .DateFormats(formats => formats
        .Years("yyyy")
        )
        )
        );
    %>
        


#### Parameters

##### format `System.String`
The date format.





