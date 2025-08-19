---
layout: single
title: Downloads
permalink: /release/download/
---

Release artifacts available for direct download.

{% assign assets = site.static_files | where_exp: "f", "f.path contains '/release/download/'" %}

{% if assets and assets.size > 0 %}
**Files**

{% for f in assets %}
- [{{ f.path | split: '/' | last }}]({{ f.path }})
{% endfor %}
{% else %}
No files found in this folder.
{% endif %}

Back to [Releases](/release/).

