> [Python Introduction | Training Course](agenda.md) ▸ ****

## Targeted skills
By the end of this module, you will know how to:
* create a grid of specified resolution and extent
* perform a spatial query (select grid cells containing measurements only)
* aggregating punctial data into grid cells (max, min, mean, ... value)
* create a choropleth map of aggregated measurement values

![Agg. data mapping](img/them-mapping-agg-final.png)

## Data
Data to be used in this module can be found in the following folders:
```
data/agg_data
```
## Exercise outline & memos

Our goal in that exercise is to aggregate measurements in a custom grid in order to overcome the issue of overplotting. In our case we will take the maximum value of measurements 'covered' by each specific grid cell.

### 1. Open shapefile & background map
Open:
```
data/agg_data/safecast.shp
```

and add a background map:
```
[In QGIS top menu]
Web ▸ OpenLayers plugin ▸ OpenStreetMap ▸ OSM Humanitarian Data Model
```

### 2. Create a grid
Creating a grid (rectangle or hexagons) of specified resolution and extent can be done using basic QGIS install but in our case in order to simplify the process we will use MMQGIS plugin.

[Install MMQGIS plugin](gis-setup.md)

```
[In QGIS top menu]
MMQGIS ▸ Create ▸ Create Grid Layer
```
Fill MMQGIS grid dialog as below:

![mmqgis grid dialog](img/mmqgis-grid-dialog.png)

```
Save create grid as exercises/grid.shp
```

### 2. Spatial query
We will perform a simple spatial query allowing to select grid cells containing measurements only.
To do so, you will need to install 'Spatial Query' plugin.

[Install Spatial Query plugin](gis-setup.md)

```
[In QGIS top menu]
Vector ▸ Spatial Query ▸ Spatial Query
```
![spatial query dialog](img/spatial-query-dialog.png)

```
Click Apply
```
You should get another dialog listing all features (hexagons) selected. Notice as well that selected hexagons get highlighted in "yellow".

![spatial query selection](img/spatial-query-selection.png)

You need to save the selection as a new layer now:

```
1. Click right on 'grid' layer
2. Save As 'exercises/grid_selection.shp'
3. IMPORTANT: check 'Save only selected features' checkbox
```
### 3. Aggregate measurements in grid
Next step is to aggregate measurements (puncual data).

```
[In QGIS top menu]
Vector ▸ Analysis tools ▸ Points in Polygon ...
```
![points in pokygon](img/dialog_count_points_in_poly.png)

Now, if you open the attribute table of the newly created grid (the aggregated one) you should have two new attribtues: nb_points and value_sum (which contains the value of highest measurements 'contained' by the hexagon).

### 3. Thematic mapping
You are now in a position to perform a thematic analysis in the same spirit as in
[Thematic mapping of punctual data](them-mapping-points.md).

This is left as exercise ...
