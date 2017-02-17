> [GIS fundamentals | Training Course](agenda.md) ▸ **Opening & overlaying GIS layers**

## Targeted skills
By the end of this module, you will know how to:
* open shapefiles
* show attribute tables
* browse the map: zoom (in, out, to region), pan, ...
* select features: individually, by regions, by attribute value, through spatial query
* change the order of layers
* access layers properties
* style map features (basic)
* save open layers, styling in a QGIS project

## Data
Data to be used in this module can be found in the following folders:
```
data/ne_110m_admin_0_countries/
data/ne_110m_populated_places/
data/ne_110m_rivers_lake_centerlines/
```
## Exercise outline & memos

### 1. Opening a shapefile

Option 1:
```
[In QGIS top menu] 
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
Warning: *note that what we called a shapefile is actually a combination of files with the following extensions: .shx, .shp, .dbf, ... When we want to open a shapefile in GIS software, we are opening the .shp one.* [See wikipedia entry for shapefile](https://en.wikipedia.org/wiki/Shapefile).

### 2. Showing attribute table
A GIS layer has always two facets, representations: geographical (the map istself) and attribute table (tabular) representations.

In the attribute table, each row corresponds to a map feature (a point, a line or a polygon) and columns attributes recorded for this feature (population, type of disease, ...).

To open the attribute table:

Option 1:
```
[In QGIS top menu] 
Layer ▸ Open Attribute Table
```

Option 2:
```
[In QGIS top toolbar] 
Click the 'table' icon
```

Option 3:
```
[In QGIS Layers list] 
Click right on the layer of interest and select 'Open Attribute Table'
```

### 3. Browsing the map
Option 1:
```
[In QGIS top menu] 
View ▸ Zoom Full
  or
View ▸ Zoom to Layer
...
```
Option 2:
```
[In QGIS top toolbar] 
```
Hint: *you will find a series of buttons with magnifiers icon. Play around ...*

### 4. Select features
Option 1:
```
[In QGIS top menu] 
View ▸ Select ▸ ...
```

Option 2:
```
[In QGIS top toolbar] 
```
#### 4.1 Select by attribute value
```
[In QGIS top menu] 
View ▸ Select ▸ Select by Expression ...
```
then in [input text box], write:
```
"pop_est"  > 50000000  and click 'Select' button
```

#### 4.2 Select by spatial query

```
Install "Spatial Query Plugin" if not already installed. If/when installed the plugin needs to be
activated (checkbox on).

Select a country, let's say "Brazil" 

[In QGIS top menu] 
Vector ▸ Spatial Query ▸ Spatial Query

[In "Select source features from" dropdown]
Choose: "ne_110m_populated_places"

[In "Where the features" dropdown]
Choose: "Within"

[In "Reference features of"]
Choose: "ne_110m_admin_0_countries" (check selected geometries checkbox)

Then click "Apply"
```

### 6. Accessing layer properties
```
[In Layers Panel]
Simply drag and drop layers you want to move up or down in layers stack
```

### 5. Changing order of layers
```
[In Layers Panel]
Click right on layer of interest ▸ Properties
```
then, on left side of the properties window, you will find a bunch of choice/option, such as:
* General
* Style
* Labels
* ...

We will only focus on "Style" properties for now.

### 6. Styling map features
```
Open layer properties
Click "Style" option and play around with colours to your liking;
```

### 7. Saving open layers and styles as QGIS project

To save your QGIS environment/project:
```
[In QGIS top menu] 
Project ▸ Save As...
```
