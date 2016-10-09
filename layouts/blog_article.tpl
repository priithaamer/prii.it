<!DOCTYPE html>
<html class="no-js">
  <head>
    {% include "SiteHeader" %}
    {{blog.rss_link}}
    <title>{{ page.site_title }} &bull; {{ article.title }}</title>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <h1>Priit Haamer</h1>
      </div>
      
      <div class="row">
        <div class="col-2"></div>
        <div class="col-8 article">
          <h2>{% editable article.title %}</h2>
          
          <div class="date">{{ article.created_at | format_date:"%b %d, %Y" }}</div>
          
          {% editable article.excerpt %}
          
          {% editable article.body %}
          
          {% if editmode %}
            {% editable article.tag_names_str %}
          {% else %}
            {% unless article.tags == empty %}
              <div class="tags">
                Tags:
                {% for tag in article.tags %}
                  <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                {% endfor %}
              </div>
            {% endunless %}
          {% endif %}
        </div>
        <div class="col-2"></div>
      </div>
      
      {% include "Footer" %}
    </div>
  </body>
</html>
