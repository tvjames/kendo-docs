---
title:WidgetFactory
slug:aspnetmvc-kendo.mvc.ui.fluent.widgetfactory
publish:true
---

# Kendo.Mvc.UI.Fluent.WidgetFactory
Creates the fluent API builders of the Kendo UI widgets



## Methods

### Menu
Creates a Menu


#### Example

    <%= Html.Kendo().Menu()
        .Name("Menu")
        .Items(items => { /* add items here */ });
    %>
        




### Editor
Creates a Editor


#### Example

    <%= Html.Kendo().Editor()
        .Name("Editor");
    %>
        




### GridT1
Creates a new !:Kendo.Mvc.UI.Grid{T} bound to the specified data item type.


#### Example

    <%= Html.Kendo().Grid<Order>()
        .Name("Grid")
        .BindTo(Model)
    %>
        




### GridT1(`System.Collections.Generic.IEnumerable<T1>`)
Creates a new !:Kendo.Mvc.UI.Grid{T} bound to the specified data source.


#### Example

    <%= Html.Kendo().Grid(Model)
        .Name("Grid")
    %>
        


#### Parameters

##### dataSource `System.Collections.Generic.IEnumerable<T1>`
The data source.




### Grid(`System.Data.DataTable`)
Creates a new !:Kendo.Mvc.UI.Grid{T} bound to a DataTable.



#### Parameters

##### dataSource `System.Data.DataTable`
DataTable from which the grid instance will be bound




### Grid(`System.Data.DataView`)
Creates a new !:Kendo.Mvc.UI.Grid{T} bound to a DataView.



#### Parameters

##### dataSource `System.Data.DataView`
DataView from which the grid instance will be bound




### GridT1(`System.String`)
Creates a new !:Kendo.Mvc.UI.Grid{T} bound an item in ViewData.


#### Example

    <%= Html.Kendo().Grid<Order>("orders")
        .Name("Grid")
    %>
        


#### Parameters

##### dataSourceViewDataKey `System.String`
The data source view data key.




### ListViewT1
Creates a new !:UI.ListView{T} bound to the specified data item type.


#### Example

    <%= Html.Kendo().ListView<Order>()
        .Name("ListView")
        .BindTo(Model)
    %>
        




### ListViewT1(`System.Collections.Generic.IEnumerable<T1>`)
Creates a new !:ListView{T} bound to the specified data source.


#### Example

    <%= Html.Kendo().ListView(Model)
        .Name("ListView")
    %>
        


#### Parameters

##### dataSource `System.Collections.Generic.IEnumerable<T1>`
The data source.




### ListViewT1(`System.String`)
Creates a new !:ListView{T} bound an item in ViewData.


#### Example

    <%= Html.Kendo().ListView<Order>("orders")
        .Name("ListView")
    %>
        


#### Parameters

##### dataSourceViewDataKey `System.String`
The data source view data key.




### Splitter
Creates a Splitter


#### Example

    <%= Html.Kendo().Splitter()
        .Name("Splitter");
    %>
        




### TabStrip
Creates a new TabStrip.


#### Example

    <%= Html.Kendo().TabStrip()
        .Name("TabStrip")
        .Items(items =>
        {
        items.Add().Text("First");
        items.Add().Text("Second");
        })
    %>
        




### DateTimePicker
Creates a new DateTimePicker.


#### Example

    <%= Html.Kendo().DateTimePicker()
        .Name("DateTimePicker")
    %>
        




### DatePicker
Creates a new DatePicker.


#### Example

    <%= Html.Kendo().DatePicker()
        .Name("DatePicker")
    %>
        




### TimePicker
Creates a new TimePicker.


#### Example

    <%= Html.Kendo().TimePicker()
        .Name("TimePicker")
    %>
        




### Tooltip
Creates a new Tooltip.


#### Example

    <%= Html.Kendo().Tooltip()
        .For("Container")
    %>
        




### ColorPicker
Creates a new ColorPicker.


#### Example

    <%= Html.Kendo().ColorPicker()
        .Name("ColorPicker")
    %>
        




### ColorPalette
Creates a new ColorPalette.


#### Example

    <%= Html.Kendo().ColorPalette()
        .Name("ColorPalette")
    %>
        




### FlatColorPicker
Creates a new FlatColorPicker.


#### Example

    <%= Html.Kendo().FlatColorPicker()
        .Name("FlatColorPicker")
    %>
        




### Calendar
Creates a new Calendar.


#### Example

    <%= Html.Kendo().Calendar()
        .Name("Calendar")
    %>
        




### PanelBar
Creates a new PanelBar.


#### Example

    <%= Html.Kendo().PanelBar()
        .Name("PanelBar")
        .Items(items =>
        {
        items.Add().Text("First");
        items.Add().Text("Second");
        })
    %>
        




### TreeView
Creates a TreeView


#### Example

    <%= Html.Kendo().TreeView()
        .Name("TreeView")
        .Items(items => { /* add items here */ });
    %>
        




### NumericTextBox
Creates a new NumericTextBox.


#### Example

    <%= Html.Kendo().NumericTextBox()
        .Name("NumericTextBox")
    %>
        




### NumericTextBoxT1
Creates a new !:NumericTextBox{T}.


#### Example

    <%= Html.Kendo().NumericTextBox<double>()
        .Name("NumericTextBox")
    %>
        




### CurrencyTextBox
Creates a new CurrencyTextBox.


#### Example

    <%= Html.Kendo().CurrencyTextBox()
        .Name("CurrencyTextBox")
    %>
        




### PercentTextBox
Creates a new PercentTextBox.


#### Example

    <%= Html.Kendo().PercentTextBox()
        .Name("PercentTextBox")
    %>
        




### IntegerTextBox
Creates a new IntegerTextBox.


#### Example

    <%= Html.Kendo().IntegerTextBox()
        .Name("IntegerTextBox")
    %>
        




### Window
Creates a new Window.


#### Example

    <%= Html.Kendo().Window()
        .Name("Window")
    %>
        




### LinearGauge
Creates a new LinearGauge.


#### Example

    <%= Html.Kendo().LinearGauge()
        .Name("linearGauge")
    %>
        




### RadialGauge
Creates a new RadialGauge.


#### Example

    <%= Html.Kendo().RadialGauge()
        .Name("radialGauge")
    %>
        




### DropDownList
Creates a new DropDownList.


#### Example

    <%= Html.Kendo().DropDownList()
        .Name("DropDownList")
        .Items(items =>
        {
        items.Add().Text("First Item");
        items.Add().Text("Second Item");
        })
    %>
        




### ComboBox
Creates a new ComboBox.


#### Example

    <%= Html.Kendo().ComboBox()
        .Name("ComboBox")
        .Items(items =>
        {
        items.Add().Text("First Item");
        items.Add().Text("Second Item");
        })
    %>
        




### AutoComplete
Creates a new AutoComplete.


#### Example

    <%= Html.Kendo().AutoComplete()
        .Name("AutoComplete")
        .Items(items =>
        {
        items.Add().Text("First Item");
        items.Add().Text("Second Item");
        })
    %>
        




### MultiSelect
Creates a new MultiSelect.


#### Example

    <%= Html.Kendo().MultiSelect()
        .Name("MultiSelect")
        .Items(items =>
        {
        items.Add().Text("First Item");
        items.Add().Text("Second Item");
        })
    %>
        




### SliderT1
Creates a new Slider.


#### Example

    <%= Html.Kendo().Slider()
        .Name("Slider")
    %>
        




### Slider
Creates a new Slider.


#### Example

    <%= Html.Kendo().Slider()
        .Name("Slider")
    %>
        




### RangeSliderT1
Creates a new RangeSlider.


#### Example

    <%= Html.Kendo().RangeSlider()
        .Name("RangeSlider")
    %>
        




### RangeSlider
Creates a new RangeSlider.


#### Example

    <%= Html.Kendo().RangeSlider()
        .Name("RangeSlider")
    %>
        




### Upload
Creates a Upload


#### Example

    <%= Html.Kendo().Upload()
        .Name("Upload")
        .Async(async => async
        .Save("ProcessAttachments", "Home")
        .Remove("RemoveAttachment", "Home")
        )
    %>
        




### ChartT1
Creates a !:Kendo.Mvc.UI.Chart{T}


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
    %>
        




### ChartT1(`System.Collections.Generic.IEnumerable<T1>`)
Creates a new !:Kendo.Mvc.UI.Chart{T} bound to the specified data source.


#### Example

    <%= Html.Kendo().Chart(Model)
        .Name("Chart")
    %>
        


#### Parameters

##### data `System.Collections.Generic.IEnumerable<T1>`
The data source.




### ChartT1(`System.String`)
Creates a new !:Kendo.Mvc.UI.Chart{T} bound an item in ViewData.


#### Example

    <%= Html.Kendo().Chart<SalesData>("sales")
        .Name("Chart")
    %>
        


#### Parameters

##### dataViewDataKey `System.String`
The data source view data key.




### Chart
Creates a new unbound Chart.


#### Example

    <%= Html.Kendo().Chart()
        .Name("Chart")
        .Series(series => {
        series.Bar(new int[] { 1, 2, 3 }).Name("Total Sales");
        })
    %>
        




### StockChartT1
Creates a !:Kendo.Mvc.UI.StockChart{T}


#### Example

    <%= Html.Kendo().StockChart()
        .Name("StockChart")
    %>
        




### StockChartT1(`System.Collections.Generic.IEnumerable<T1>`)
Creates a new !:Kendo.Mvc.UI.StockChart{T} bound to the specified data source.


#### Example

    <%= Html.Kendo().StockChart(Model)
        .Name("StockChart")
    %>
        


#### Parameters

##### data `System.Collections.Generic.IEnumerable<T1>`
The data source.




### StockChartT1(`System.String`)
Creates a new !:Kendo.Mvc.UI.StockChart{T} bound an item in ViewData.


#### Example

    <%= Html.Kendo().StockChart<SalesData>("sales")
        .Name("StockChart")
    %>
        


#### Parameters

##### dataViewDataKey `System.String`
The data source view data key.




### StockChart
Creates a new unbound StockChart.


#### Example

    <%= Html.Kendo().StockChart()
        .Name("StockChart")
        .Series(series => {
        series.Bar(new int[] { 1, 2, 3 }).Name("Total Sales");
        })
    %>
        




### SparklineT1
Creates a !:Kendo.Mvc.UI.Sparkline{T}


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
    %>
        




### SparklineT1(`System.Collections.Generic.IEnumerable<T1>`)
Creates a new !:Kendo.Mvc.UI.Sparkline{T} bound to the specified data source.


#### Example

    <%= Html.Kendo().Sparkline(Model)
        .Name("Sparkline")
    %>
        


#### Parameters

##### data `System.Collections.Generic.IEnumerable<T1>`
The data source.




### SparklineT1(`System.String`)
Creates a new !:Kendo.Mvc.UI.Sparkline{T} bound an item in ViewData.


#### Example

    <%= Html.Kendo().Sparkline<SalesData>("sales")
        .Name("Sparkline")
    %>
        


#### Parameters

##### dataViewDataKey `System.String`
The data source view data key.




### Sparkline
Creates a new unbound Sparkline.


#### Example

    <%= Html.Kendo().Sparkline()
        .Name("Sparkline")
        .Series(series => {
        series.Bar(new int[] { 1, 2, 3 }).Name("Total Sales");
        })
    %>
        




### DeferredScripts(`System.Boolean`)
Returns the initialization scripts for widgets set as deferred



#### Parameters

##### renderScriptTags `System.Boolean`
Determines if the script should be rendered within a script tag



#### Returns




