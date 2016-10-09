<!DOCTYPE html>
<html>
<head>
  {% include "SiteHeader" %}
  <title>{{ page.site_title }}</title>
</head>
<body class="front">
  
  <div class="container">
    <div class="header">
      <h1>Priit Haamer</h1>
    </div>
    
    <div class="row">
      <div class="col-6 about">
        {% content %}
      </div>
  
      <div class="col-1"></div>
  
      <div class="col-5">
        <h2>Blog</h2>
        
        {% for article in site.latest_4_articles %}
        <div class="article">
          <a href="{{ article.url }}">{{ article.title }}</a>
          <div class="date">{{ article.created_at | format_date:"%b %d, %Y" }}</div>
        </div>
        {% endfor %}
      </div>
    </div>
    {% include "Footer" %}
  </div>
</body>
</html>
