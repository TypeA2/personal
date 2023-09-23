---
layout: list
permalink: /anime_list/
title: anime list
description: Anime list
nav: true
nav_order: 1
---
<table>
  {% for anime in site.data.anime %}
    {% if anime.id == blank %}
      {% continue %}
    {% endif %}

    {% assign native_title = anime.titles[anime.display.native] %}
    {% assign alt_title = anime.titles[anime.display.alt] %}

    <tr>
      <td><img src="/assets/img/anime/{{ anime.cover }}" style="max-width: 60px; max-height: 60px"></td>

      <td>{{ native_title }}</td>
      <td>
        <small>{{ alt_title }}</small>
      </td>
      <td>
        <small>
          {% if anime.start != blank and anime.end != blank %}
            <span style="color: #999">{{ anime.start }} ~ {{ anime.end }}</span>
          {% endif %}
        </small>
      </td>
    </tr>
  {% endfor %}
</table>
