---
marp: true
theme: default
footer: 'JICA Seminar 2023'
---

# Create / distrubute tiled map

Taro Matsuzawa
Georepublic Japan

---

# Notes (1/2)

- This presentation use some links to external resources
  - Please download the presentation from the link below

https://github.com/smellman/jica_2023

---

# Notes (2/2)

- This presentation is written in Markdown
  - You can edit this presentation with any text editor
  - You can convert this presentation to PDF or PowerPoint, please see the README.md
  - You can download the presentation of auto generate versions from the link below
    - [PDF](https://smellman.github.io/jica_2023/jica-seminar-2023.pdf)
    - [PowerPoint](https://smellman.github.io/jica_2023/jica-seminar-2023.pptx)
    - [HTML](https://smellman.github.io/jica_2023/)
---

# Self introduction

- GIS Engineer at Georepublic Japan
  - Programming: Python, JavaScript, TypeScript, Ruby etc.
  - UNIX and Linux guru
  - GIS skill: Data processing, Tiled based Map
- Community
  - Director of [OSGeo.JP](https://www.osgeo.jp/)
  - Director of [OpenStreetMap Foundation Japan](https://www.osmf.jp/)
  - Sub president of [Japan Unix Society](https://www.jus.or.jp/)
  - [UNOpenGIS/7](https://github.com/UNopenGIS/7) volunteer
- Contact: taro@georepublic.co.jp / @smellman on Twitter

---

# Today's agenda

- What is tiled map?
- Introduction of software and data in this presentationå
- How to create your own tiled map
- How to design your own tiled map
- How to distribute your own tiled map

---

# What is tiled map?

---

# Tile technology

- Provide map image or data over the internet.
  - Map images are separated as tiles.
  - Zoom Level 0 = World
  - Each zoom level doubles in the dimensions.
  - Too many tiles use "Web Mercator" projection.

![bg right 80%](https://a.tile.openstreetmap.org/0/0/0.png)
https://a.tile.openstreetmap.org/0/0/0.png
