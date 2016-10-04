> [GIS fundamentals | Training Course](agenda.md) ▸ **Dissolving polygons**

## Targeted skills
By the end of this module, you will know how to:
* dissolve/merge polygon features by attribute (see explanation below)

## Data
Data to be used in this module can be found in the following folder:
```
data/grc_admin3
```
## Exercise outline & memos


###  Dissolving/merging polygon features by attribute

This operation looks a bit esoteric but the idea is simple. Let's take an example, imagine a country where the main administrative
levels are provinces further divided into regions. You want a shapefile of these provinces but you only have for now a shapefile of
the regions. 
| province | region |
|:-------:|:------:|
| prov_a   | reg_1  |
| prov_a   | reg_2  |
| prov_b   | reg_3  |
| prov_b   | reg_4  |





```
Open: data/data/bluetongue_2014_2015_edit/bluetongue_2014_2015_edit.shp and overlay it over Google Hybrid
background layer.
```

To edit a layer, you need to toggle the "Editing mode", there several ways to do so.

First:
```
[In Layers Panel]
Select (click) the layer of interest, here blueongue_2014_2015_edit
```

then,

Option 1:

```
[In QGIS top menu] 
Layer ▸ Toggle Editing
Open the attribute table
