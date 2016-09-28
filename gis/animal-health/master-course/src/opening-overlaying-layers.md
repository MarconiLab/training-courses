> [GIS fundamentals | Training Course](agenda.md) ▸ **Opening & overlaying GIS layers**

## Targeted skills
By the end of this module, you will know how to:
* open shapefiles
* browse the map: zoom (in, out, to region), pan, ...
* select features: individually, by regions, ...
* change the order of layers
* open attribute tables
* access layers properties
* style map features (basic)
* save open layers, styling in a QGIS project

## Set up
Data to be used in this module can be found in the following folders:
```
data/ne_110m_admin_0_countries/
data/ne_110m_populated_places/
data/ne_110m_rivers_lake_centerlines/
```
## Exercise

### 1. Opening a shapefile

Option 1:
```
[In QGIS top toolbar] 
Layer ▸ Add Layer ▸ Add Vector Layer  
```

Option 2:
```
[In QGIS side toolbar] 
Add Vector Layer
```
Hint: *function of icons will appear when hovering over it*

[Check out QGIS User Guide for more information](http://docs.qgis.org/2.14/en/docs/training_manual/introduction/preparation.html)

Shapefiles to be open in this exercise are:
```
data/ne_110m_admin_0_countries/ne_110m_admin_0_countries.shp
data/ne_110m_populated_places/ne_110m_populated_places.shp
data/ne_110m_rivers_lake_centerlines/ne_110m_rivers_lake_centerlines.shp
```
Warning: *note that what we called a shapefile is actually a combination of files with the following extensions: .shx, .shp, .dbf, ... When we want to open a shapefile in GIS software, we are opening the .shp one.*
