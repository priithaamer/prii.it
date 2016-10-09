<!DOCTYPE html>
<html class="no-js">
  <head>
    {% include "SiteHeader" %}
    {{blog.rss_link}}
    <title>{{ page.site_title }} &bull; {{ page.title }}</title>
  </head>
  <body class="blog">
    <div class="container">
      <div class="header">
        <h1>Priit Haamer</h1>
      </div>
      
      <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
          {% for article in articles %}
          <div class="article">
            <h2>{{article.title}}</h2>
            <div class="date">
              {{ article.created_at | format_date:"%b %d, %Y" }} &bull;
              <a href="{{article.url}}">Read more</a>
            </div>
            <p>{{ article.excerpt }}</p>
          </div>
          {% endfor %}
        </div>
        <div class="col-2"></div>
      </div>
      
      {% include "Footer" %}
    </div>
  </body>
</html>
