---
title: Icons
slug: mobile-icons
publish: true
---

# Icons in Kendo UI Mobile

Kendo UI Mobile includes 33 integrated icons, which can be used directly in a Kendo UI Mobile project by specifying a data-icon attribute with one of the following icon names (supported by all Button widgets and the ListView items):

<ul class="icon-block">
    <li><span class="km-icon km-about"></span><br/>about</li>
    <li><span class="km-icon km-action"></span><br/>action</li>
    <li><span class="km-icon km-add"></span><br/>add</li>
    <li><span class="km-icon km-bookmarks"></span><br/>bookmarks</li>
    <li><span class="km-icon km-camera"></span><br/>camera</li>
    <li><span class="km-icon km-cart"></span><br/>cart</li>
    <li><span class="km-icon km-compose"></span><br/>compose</li>
    <li><span class="km-icon km-contacts"></span><br/>contacts</li>
    <li><span class="km-icon km-delete"></span><br/>delete</li>
    <li><span class="km-icon km-details"></span><br/>details</li>
    <li><span class="km-icon km-downloads"></span><br/>downloads</li>
    <li><span class="km-icon km-fastforward"></span><br/>fastforward</li>
    <li><span class="km-icon km-favorites"></span><br/>favorites</li>
    <li><span class="km-icon km-featured"></span><br/>featured</li>
    <li><span class="km-icon km-globe"></span><br/>globe</li>
    <li><span class="km-icon km-history"></span><br/>history</li>
    <li><span class="km-icon km-home"></span><br/>home</li>
    <li><span class="km-icon km-info"></span><br/>info</li>
    <li><span class="km-icon km-more"></span><br/>more</li>
    <li><span class="km-icon km-mostrecent"></span><br/>mostrecent</li>
    <li><span class="km-icon km-mostviewed"></span><br/>mostviewed</li>
    <li><span class="km-icon km-organize"></span><br/>organize</li>
    <li><span class="km-icon km-pause"></span><br/>pause</li>
    <li><span class="km-icon km-play"></span><br/>play</li>
    <li><span class="km-icon km-recents"></span><br/>recents</li>
    <li><span class="km-icon km-refresh"></span><br/>refresh</li>
    <li><span class="km-icon km-reply"></span><br/>reply</li>
    <li><span class="km-icon km-rewind"></span><br/>rewind</li>
    <li><span class="km-icon km-search"></span><br/>search</li>
    <li><span class="km-icon km-settings"></span><br/>settings</li>
    <li><span class="km-icon km-share"></span><br/>share</li>
    <li><span class="km-icon km-sounds"></span><br/>sounds</li>
    <li><span class="km-icon km-stop"></span><br/>stop</li>
    <li><span class="km-icon km-toprated"></span><br/>toprated</li>
    <li><span class="km-icon km-trash"></span><br/>trash</li>
    <li><span class="km-icon km-volume"></span><br/>volume</li>
    <li><span class="km-icon km-wifi"></span><br/>wifi</li>
</ul>

# Creating custom icon font

Currently there are two options - using a font generator service like [http://fontello.com/](Fontello) to simplify the task, or prepare the icon, SVG and fonts manually.

Using [http://fontello.com/](Fontello) is pretty straightforward - pick the icons, choose the Unicode characters for them, type a font name and click Download to get a ZIP file
with the needed for mobile TTF and WOFF font formats, which can be directly used for icons. From the other files in there, EOT is not needed as it targets only IE6-8 and the
SVG font can be used to further modification.

 (though if you go AI, you will have to export the icon to Inkscape as AI can't create SVG fonts).

The manual way is considerably more difficult. First create the desired icons using a vector editing software like Inkscape or Adobe Illustrator.
Export them to SVG format. Consult [http://www.webdesignerdepot.com/2012/01/how-to-make-your-own-icon-webfont/](these)
[http://cleversomeday.wordpress.com/2010/02/09/inkscape-dings/](articles) about SVG font creation using [http://inkscape.org/](Inkscape).
Import the SVG icons in Inkscape and create the SVG font icon by icon, assigning them to separate characters.
After creating the SVG font, convert it to TTF/WOFF formats, using [http://onlinefontconverter.com/](Online Font Converter) or other similar service.

### Loading the two fonts (TTF/WOFF) with @font-face:
    @font-face {
        font-family: "MyCustomFont";
        src: url("images/MyCustomFont.woff") format("woff"),
             url("images/MyCustomFont.ttf") format("truetype");
    }

### Overriding the Kendo UI font for all icons (alternatively separate classes can be used to override them one by one)
    .km-icon:after,
    .km-icon:before
    {
        font: 1em/1em "MyCustomFont";
    }

### Specify the character corresponding to every custom icon.
    .km-mycustomicon:after,
    .km-mycustomicon:before
    {
        content: "\E03a";
    }

Where mycustomicon is the icon name set in the data-icon attribute and \E03a is the Unicode character code of the icon.

# Serving icon fonts

As of Q3 2012, Kendo UI Mobile employs an icon font for its icon rendering. To be able to render it in most mobile and supported Desktop browsers out there, there are two font formats included in the Kendo UI distribution - TTF and WOFF. Most web servers out there doesn't support serving these fonts with a specific mime type. Since currently there is no standardized mime types for fonts, you only need to serve them both with mime type application/octet-stream or you can come up with any valid mime type (like application/x-font-ttf and application/x-font-woff for instance).

## Configure IIS

The wo mime types can be specified either through the IIS managemenet console (inetmgr) or in the site Web.config, like this:

### Configure IIS Web.config

    <?xml version="1.0"?>
    <configuration>
        ...
        <system.webServer>
            ...
            <staticContent>
                <remove fileExtension=".ttf" />
                <mimeMap fileExtension=".ttf" mimeType="application/octet-stream" />
                <remove fileExtension=".woff" />
                <mimeMap fileExtension=".woff" mimeType="application/octet-stream" />
            </staticContent>
        </system.webServer>
    </configuration>

Removing the mime type first is there to avoid clashes if the mime types for these files are already defined /IIS throws exception if they are/. Can be removed if not needed.

## Configure Apache

Apache configuration in some distributions includes mime-types application/x-font-ttf and application/x-font-woff by default. If these mime types are not listed, they can be added easily like this:

### Configure Apache in .htaccess

    AddType application/x-font-ttf .ttf
    AddType application/x-font-woff .woff

### Configure Apache in mime.types file

    application/x-font-ttf .ttf
    application/x-font-woff .woff

## Configure Nginx

For Nginx the configuration is similar:

### Configure Nginx mime.types file

    application/x-font-ttf .ttf
    application/x-font-woff .woff


## Configure CORS headers

Since fonts are usually copyrighted, most browsers doesn't allow using them across different domains. If serving multiple domains from one font location is needed, the fonts should be served with a Access-Control-Allow-Origin header. This header also supports using * instead of the domain name list, and while using it for normal text fonts is not advisable, it can be freely used for our icon font if the icons are living in a Kendo UI Mobile application. Configuration goes like this:

### Configure IIS - place a web.config in the font folder and add this in it:
    <httpProtocol>
      <customHeaders>
        <add name="Access-Control-Allow-Origin" value="*" />
      </customHeaders>
    </httpProtocol>

### Configure Apache

    <FilesMatch "\.(ttf|woff)$">
    <IfModule mod_headers.c>
        Header set Access-Control-Allow-Origin "*"
    </IfModule>
    </FilesMatch>

### Configure Nginx

    location / {
        ...
        if ($filename ~* \.(ttf|woff)$){
            add_header Access-Control-Allow-Origin *;
        }
    }
