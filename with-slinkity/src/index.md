---
title: GraphCMS with Slinkity
layout: base.njk
---

## Products

<ul>
  {%- for product in collections.products -%}
    <li>
      <a href="{{ product.url }}">
        <h2>{{ product.data.name }}</h2>
        <p>{{ product.data.description }}</p>
      </a>
    </li>
  {%- endfor -%}
</ul>
