---
layout: single
title: Releases
permalink: /release/
---

Browse downloadable release artifacts below.

{% assign assets = site.static_files | where_exp: "f", "f.path contains '/release/download/'" %}

{% if assets and assets.size > 0 %}
**Downloads**

{% for f in assets %}
- [{{ f.path | split: '/' | last }}]({{ f.path }})
{% endfor %}
{% else %}
No downloads available yet.
{% endif %}

