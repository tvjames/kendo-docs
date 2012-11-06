---
title: Tips for Creating Accessible Charts with Kendo UI DataViz
slug: tips-for-accessible-charts-with-dataviz
tags: Tutorial, DataViz, Accessibility
publish: true
---

# Tutorial: Tips for Creating Accessible Charts with Kendo UI DataViz

**Summary**: In this post, I’ll share five practical tips (with code samples and illustrative videos) for making Kendo UI DataViz charts and graphs more accessible. These are things you can quickly and easily do in your own apps today to make it easier for disabled users to use assistive technologies to interact with your content.

## The Case for Accessible Charts

In the realm of Accessibility, the most oft-mentioned guidelines and regulations are WAI_ARIA, Section 508 and the W3C’s own Web Content Accessibility Guidelines (WCAG) 2.0. Section 508 makes up the law that governs the creation of accessible software (for government entities) in the United States, while WCAG (along with WAI-ARIA) contains a comprehensive set of guidelines for creating accessible sites and web applications.

Both Section 508 and the WCAG 2.0 guidelines have something to say that, we believe, applies to Kendo UI DataViz. Here's the first rule in Section 508:

**(a) A text equivalent for every non-text element shall be provided (e.g., via “alt”, “longdesc”, or in element content).**

and WCAG Guideline 1.1:

**Guideline 1.1 Text Alternatives: Provide text alternatives for any non-text content so that it can be changed into other forms people need, such as large print, braille, speech, symbols or simpler language.**

Providing text equivalents to non-text content is a key tenant of accessibility. Content like images, animations, video and audio are great, but these are impossible for screen readers and other assistive technologies to parse. And if they can’t be parsed by these technologies, they can’t be enjoyed by disabled users. Thus, Section 508 and WCAG both require that all, non-decorative non-text content be made accessible to assistive technologies.

## Accessibility and Kendo UI DataViz

Kendo UI DataViz charts and graphs definitely fit the bill of “non-text content.” By definition, Kendo UI DataViz allows you to create visual charts and graphs that enhance textual or tabular data. These can’t possibly be accessible, out-of-the-box, right?

Actually, they can be. And with a little bit of work as you add charts and graphs to your apps, they can be made even more accessible.

First, let’s take a look at the out-of-the-box experience with Kendo UI DataViz. In the [video below](http://www.youtube.com/watch?v=lymGnquNxBg&feature=youtu.be), I used the popular VoiceOver screen reader on Apple OS X to navigate a Donut chart.

<iframe width="853" height="480" src="http://www.youtube.com/embed/lymGnquNxBg" frameborder="0" allowfullscreen></iframe>

As you can see from the video, I’m able to use a screen reader to hear both the title of the chart, as well as the values in the legend. Because Kendo UI DataViz creates charts using inline SVG elements, and SVG is just markup, VoiceOver is able to drill into the chart and piece together a reasonable representation of the content. Had we instead used a Canvas element to create the chart, we’d be out of luck. Score one for SVG!

Of course, if you watched the video, you may have also noticed that the screen reader didn’t select my chart exactly, it just started reading the title. What’s more, while I’m happy that the reader can access and read legend values, I feel like I can do more to make this chart even more consumable, and accessible, for disabled users.

In the next section, we'll look at five steps you can take to improve the accessibility of your charts. Each takes only minutes to add to your apps, and you can adopt any or all of these as they make sense. You might also find that, not only do these steps make your charts more accessible to disabled users, but that the improvements enhance the value of your content for all of your users, regardless of ability.

## Five Tips for Accessible DataViz Charts

1. Provide a text description of the chart

	The simplest thing you can do is to add a pure-text description of your chart to the page, as I’ve done in the example below.

	<iframe src="http://jsbin.com/odowud/9/embed?html,live" class="jsbin-embed" style="border: 1px solid #aaaaaa; width: 100%; min-height: 300px; height: 720px;"></iframe> <script src="http://static.jsbin.com/js/embed.js"></script>

	If you take a look in the HTML pane, you’ll see that I wrapped my chart `div` in a `figure` element, and then added a `figcaption` that explains the chart in detail.

	Here’s a [brief video](http://www.youtube.com/watch?v=QyB3sTVRd3E&feature=youtu.be) of VoiceOver interacting with the `figcaption` element:

	<iframe width="853" height="480" src="http://www.youtube.com/embed/QyB3sTVRd3E" frameborder="0" allowfullscreen></iframe>

	In this example, my description is detailed, but yours need not be. The goal is to provide disabled users with the key information found in your chart, which will vary, depending on the data.

2. Add `role` and `title` attributes to the chart div

	Another simple step you can take is to add an WAI-ARIA role and a title to the div that contains your chart. This can be as simple as doing the following:

		<div id="chart" role="img" title="Sources of Electricity Produced in Spain, 2008"></div>
	
	In the first video, even though VoiceOver could read the chart title and legend to it, it couldn’t “select” the container, or even tell me I was interacting with an HTML element. By adding a role of “img” and a title, VoiceOver can do both, which you can see in the first 15 seconds of the video for step #1.

3. Add `title` and `desc` elements to the root of the `svg` element

	The next step we can take is to manually add title and description elements to the SVG element created by Kendo UI DataViz. These elements can be leveraged by screen readers as fallback content to be read to disabled users.

	<iframe src="http://jsbin.com/odowud/19/embed?html,javascript" class="jsbin-embed" style="border: 1px solid #aaaaaa; width: 100%; min-height: 300px; height: 720px;"></iframe> <script src="http://static.jsbin.com/js/embed.js"></script>

	In this sample, I first create a template script block for the `<title>` and `<desc>` fields. Then, I load the html for that block into a `kendo.template` and render the template using a chartDetails object. Finally, I’ll use jQuery to select the `<svg>` element inside of my chart `<div>` and prepend the title and description to the beginning of that element.

	At the time of this writing, VoiceOver (as well as all of the other major screen readers, AFAIK) doesn’t do anything with the title and desc elements, but since this technique is explicitly called out in the W3C’s [guidelines for accessible SVG](http://www.w3.org/TR/SVG-access/), I still recommend this step, even if as a future-proofing technique.

4. Generate an accessible data table from the DataSource

	The last two steps deal with creating a data table to serve as an alternative or supplement to the chart or graph. Assuming I’m using a DataSource to populate my chart, I can use the same DataSource and Kendo Templates to create a tabular representation of the same data.

	<iframe src="http://jsbin.com/odowud/15/embed?html,javascript,live" class="jsbin-embed" style="border: 1px solid #aaaaaa; width: 100%; min-height: 300px; height: 720px;"></iframe> <script src="http://static.jsbin.com/js/embed.js"></script>

	In the HTML window, I first create a template script block for my table. Next, in the createTable function, I’ll pass that script into a template, render it with the DataSource and then add the table to the page. The result is a simple, accessible table based on the same data as the chart itself. Here’s a [quick video](http://www.youtube.com/watch?v=0xdrBjwiFVA&feature=plcp) of how VoiceOver allows me to interact with the table:

	<iframe width="853" height="480" src="http://www.youtube.com/embed/0xdrBjwiFVA" frameborder="0" allowfullscreen></iframe>

5. Create an off-screen table, or allow the table and chart to be swapped on-screen

	Generating a data table is nice, but you may not want to display the raw data on-screen with the chart for all users. In that case, you have two options. You can either: 1) place the table off-screen, invisible to sighted users, but available to screen readers; or, 2) provide all users with the ability to switch between the chart and table.

	Here’s an example of the first:

	<iframe src="http://jsbin.com/odowud/20/embed?html,css,live" class="jsbin-embed" style="border: 1px solid #aaaaaa; width: 100%; min-height: 300px; height: 720px;"></iframe> <script src="http://static.jsbin.com/js/embed.js"></script>

	In this example, I’ve created a CSS class called “hidden,” which positions any element 10000px to the left, and off-screen. Now, my data table is no longer on the screen, but is accessible to screen readers, as shown in the [following video](http://www.youtube.com/watch?v=0xdrBjwiFVA&feature=youtu.be):

	<iframe width="853" height="480" src="http://www.youtube.com/embed/0xdrBjwiFVA" frameborder="0" allowfullscreen></iframe>

	For an alternate approach, I can place a link or button on the screen that allows the user to swap between the table and the chart. The advantage of this approach is that it enhances the experience for all users by giving them a choice as to which presentation of the data they prefer.

	<iframe src="http://jsbin.com/odowud/21/embed?javascript,live" class="jsbin-embed" style="border: 1px solid #aaaaaa; width: 100%; min-height: 300px; height: 720px;"></iframe> <script src="http://static.jsbin.com/js/embed.js"></script>

	In this case, I’ve placed a “Show Table” link on the screen. When the user clicks this link, the chart is hidden, the table is displayed and the link text changes to “Show Chart.” As depicted in the [following video](http://www.youtube.com/watch?v=kZNz1H2Zp3U&feature=relmfu), VoiceOver users can now choose which representation they wish to interact with:

	<iframe width="853" height="480" src="http://www.youtube.com/embed/kZNz1H2Zp3U" frameborder="0" allowfullscreen></iframe>

	As I've said already, SVG itself is pretty accessible out of the box, but the tips above can help you make your charts and graphs even more consumable, and thus more accessible, to disabled users. Better still, following these tips, and having an accessible mindset as you build your sites and applications, can help you create content that is more accessible to all of your users.

### Resources

- [Section 508](http://section508.gov/)
- [WCAG 2.0](http://www.w3.org/TR/WCAG20/)
- [W3C SVG Accessibility Guidelines](http://www.w3.org/TR/SVG-access/)
- [HTML5 Accessibility: SVG Text (Paciello Group Blog Post)](http://www.paciellogroup.com/blog/2011/08/html5-accessibility-chops-interactive-image-example/)
