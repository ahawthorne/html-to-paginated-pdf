Use case: You need to create a PDF.

Possible Solutions:
1. Do not create a PDF.
2. You still need to create a PDF :( so use HTML and CSS because all content should be HTML.

Controlling a document's page breaks, font rendering and margins is possible using the media type of print with CSS. However, browser's rendering engines do not follow these rules consistently by any means. The result is that printing a web page to PDF from a browser is most often pointless because of the quality of rendering.

In order to take advantage of print CSS declarations this program will take your web page via a URL. It will then respect the print CSS of the page and render it using one rendering engine (WebKit) on one platform (OS X) and return the rendered content as a PDF. This way you can print an HTML page to PDF from any web browser or server-side program.

Requirements:

* wkhtmltopdf >= 0.11.0 RC1 (http://code.google.com/p/wkhtmltopdf/)
* ruby
* Sinatra gem
* Connection to the Internets

Do things:

```bash
bundle install --path bundle
bundle exec rackup
```

now convert some html to pdf
