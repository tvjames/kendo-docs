---
title: Use the ListView of Kendo UI Mobile with pull-to-refresh and endless scrolling
slug: howto-use-the-mobile-listview-with-pull-to-refresh-and-endless-scrolling
tags: How-To
publish: true
---

# How-To: Use the ListView of Kendo UI Mobile with pull-to-refresh and endless scrolling

In this how-to, we will examine how to use the [ListView](http://docs.kendoui.com/api/mobile/listview) of Kendo UI Mobile to display dynamic data.

[Check this link to find more information about dynamic data](http://en.wikipedia.org/wiki/Dynamic_data). An excellent example for dynamic data is a [search](https://dev.twitter.com/docs/api/1.1/get/search/tweets)
for relevant Tweets - here is a search for [#javascript](http://search.twitter.com/search.json?q=javascript). We see the latest tweets about 'javascript'. After some time, these tweets we see will be outdated.
One possible solution for this is to use 'pull to refresh' pattern invented by [Loren Bricher](https://twitter.com/lorenb). It allows to pull the list and trigger an updated. On the other hand, the user will
want to scroll down the list to see older data. 'Endless scrolling' pattern will allow to divide the data in pages. Thus only subset of the data will be rendered on demand.

## Create a Mobile ListView with pull-to-refresh and endless scrolling

Q: What problem will cause the use of 'pull to refresh' and 'endless scrolling' patterns together?
A: Difficulty to track what sub-set of data the user sees.

Let's review one possible scenario where the 'pull to refresh' and 'endless scrolling' is enabled:

1. The ListView is loaded and the first page of data is shown.
2. The users pulls the ListView to update the list. At this point, the service should know which is the first item shown on the client. This is required in order to return only the
newer data and avoid any duplications. To solve this problem the [pullParameters](http://docs.kendoui.com/api/mobile/listview#pullparameters-function) callback could be used to send additional parameters (id of the item for instance) to the server.
3. After the update (a few new items were rendered) the user decides to scroll down to see page two. If the id of the first (newest) item is sent to server, then we will
get duplicated items in the second page. This problem can be solved using the [endlessScrollParameters](http://docs.kendoui.com/api/mobile/listview#endlessscrollparameters-function) callback and sending the id of the first shown item in the ListView.
Thus the server will be able to return the correct second page.

Let's implement aforementioned scenario using the Twitter search service:

** In order to proceed with this "How-to", you will need to know how to build [Kendo Mobile application](http://docs.kendoui.com/howto/build-apps-with-kendo-ui-mobile).

First, we'll define a target HTML element such as a list:

    <ul id="localListView"></ul>

    <script id="pull-to-refresh-template" type="text/x-kendo-template">
        <div class="tweet">
            <img class="pullImage" src="#= profile_image_url #" alt="#= from_user #" />#= text #
            <div class="metadata">
                <a class="sublink" target="_blank" href="http://twitter.com/\\#!/#= from_user #/status/#= id_str #" rel="nofollow">#= kendo.toString(new Date(Date.parse(created_at)), "dd MMM HH:mm") #</a>
                |
                <a class="sublink" href="http://twitter.com/#= from_user #" rel="nofollow">#= from_user #</a>
            </div>
        </div>
    </script>

Next, we will initialize the Mobile ListView by referring the template and defining the pullParameters and endlessScrollParameters callbacks:

    $("#pull-to-refresh-listview").kendoMobileListView({
        dataSource: dataSource,
        pullToRefresh: true,
        appendOnRefresh: true,
        template: $("#pull-to-refresh-template").text(),
        pullParameters: function(item) {
            //item is the first data item in the ListView
            return {
                since_id: item.id_str, //id of the first item in the ListView
                page: 1
            };
        },
        endlessScroll: true,
        endlessScrollParameters: function(firstItem, lastItem) {
            // firstItem - first data item shown in the ListView on initial load
            // lastItem - last data item shown in the ListView on initial load

            if (firstItem) {
                return {
                    max_id: firstItem.id_str
                };
            }
        }
    });

Next, we will use the additional parameters in the DataSource's parameterMap function:

    var dataSource = new kendo.data.DataSource({
        serverPaging: true,
        pageSize: 10,
        transport: {
            read: {
                url: "http://search.twitter.com/search.json", // the remove service url
                dataType: "jsonp" // JSONP (JSON with padding) is required for cross-domain AJAX
            },
            parameterMap: function(options) {
                return {
                    q: "javascript",
                    page: options.page,
                    rpp: options.pageSize,
                    since_id: options.since_id, //available when the ListView is pulled.
                    max_id: options.max_id //avaliable when the ListView scrolled down.
                };
            }
        },
        schema: { // describe the result format
            data: "results" // the data which the data source will be bound to is in the "results" field
        }
    });

Here's the live example of the representation (above):

<a class="jsbin-embed" href="http://jsbin.com/ivawam/1/embed?live">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
