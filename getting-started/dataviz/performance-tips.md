---
title: Performance tips
meta_title: Performance guide for Kendo UI DataViz
meta_description: Find valuable tips for maximizing the performance out of Kendo UI DataViz charts, graphs and gauges.
slug: dataviz-performance-tips
publish: true
---
# Performance Tips for Kendo UI DataViz

By default, Kendo UI DataViz charts, graphs and gauges ship with smooth animations and transitions that come alive when used in your applications. And while these transitions and animations are designed for maximum performance, you may wish to disable these effects in certain cases, for instance, when using a large number of DataViz widgets on a single page.

This document covers two ways that you can manage the performance of DataViz widgets:

1. Turning off animation transitions
2. Disabling of gradients

## Turning off animated transitions

Animated transitions can slow the browser down, especially with many active charts on the page. Turn them off by passing `transitions: false` into the chart options object.

#### Example configuration
    <div id="chart"></div>
    <script>
    	$(function() {
			$("#chart").kendoChart({
        		series: [{
        			type: "column",
        			data: [1, 2, 3]
    			}],
        		transitions: false
	    	});
		});
	</script>

#### Initial animation only
    <div id="chart"></div>
    <script>
      $(function() {
        var src = new kendo.data.ObservableArray([
			{ value: 1 }, { value: 2 }
		]);
        
        $("#chart").kendoChart({
          dataSource: {
               data: src
          },
          series: [{
              type: "column",
              field: "value"
          }]
        });
  
        var chart = $("#chart").data("kendoChart");
        chart.options.transitions = false;
        
        // Subsequent updates won't be animated
        setTimeout(function() {
          src.push({ value: 3 });
        }, 2000);
      });
    </script>

## Disable widget gradients

Using solid fills instead of gradients can improve performance noticably. In the following snippet, we can disable gradients by setting the `gradient` property of the `overlay` `seriesDefaults` object to null.

### Example
    <div id="chart"></div>
    <script>
    	$(function() {
			$("#chart").kendoChart({
                seriesDefaults: {
                  overlay: {
                    gradient: null
                },
        		series: [{
        			type: "column",
        			data: [1, 2, 3]
    			}],
        		transitions: false
	    	});
		});
	</script>
