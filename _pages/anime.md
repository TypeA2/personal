---
layout: list
permalink: /anime_list/
title: anime list
description: Anime list
nav: true
nav_order: 1
---
<table>
  {% assign anime_sorted = site.data.anime | sorty_media_list_by_title: true %}
  {% for anime in anime_sorted %}
    {% if anime.id == blank %}
      {% continue %}
    {% endif %}

    {% assign native_title = anime.titles[anime.display.native] %}
    {% assign alt_title = anime.titles[anime.display.alt] %}

    <tr>
      <td><img src="/assets/img/anime/{{ anime.cover | sample: 80 }}" style="max-width: 60px; max-height: 60px"></td>

      <td>{{ native_title }}</td>
      <td>
        <small>{{ alt_title }}</small>
      </td>
      <td>
        <small>
          {% if anime.start != blank or anime.end != blank %}
            <span style="color: #999">{{ anime.start }} ~ {{ anime.end }}</span>
          {% endif %}
        </small>
      </td>
    </tr>
  {% endfor %}
</table>
