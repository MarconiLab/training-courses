> [GIS fundamentals | Training Course](agenda.md) ▸ **Handling Coordinate Reference Systems (CRS)**

## Targeted skills
By the end of this module, you will know how to:
* change Coordinate Reference System and map projection on the fly
* change & persist CRS and map projection of a shapefile

## Data
Data to be used in this module can be found in the following folders:
```
data/ne_110m_admin_0_countries/
```
## Exercise outline & memos

### 1. Changing CRS on the fly
Open: 
```
data/ne_110m_admin_0_countries/ne_110m_admin_0_countries.shp
```
and
```
[In QGIS top menu] 
Project ▸ Project Properties ▸ Add Vector Layer  ▸ CRS (tab) ▸ Check "Enable on the fly CRS transformation"
```
Play around with various CRS, apply and see the variety of world representation and their respective distortion (for instance select: Mercator, or World_Bonne.

Notice as well that in the status bar (bottom part of the screen), coordinates are not anymore in lon, lat but in x,y meters.

