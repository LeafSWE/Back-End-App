package hello;

import java.util.Vector;

/**
 * Created by Black on 28/04/2016.
 */
public class BuildingMap {
      private Building building;
      private Vector<ROI> rois;
      private Vector<Category> categories;
      private Vector<POI> pois;
      private Vector<ROIPOI> roipois;
      private Vector<EdgeType> edgeTypes;
      private Vector<Edge> edges;
      private Vector<Photo> photos;

    public BuildingMap(Building building, Vector<ROI> rois, Vector<Category> categories, Vector<POI> pois, Vector<ROIPOI> roipois, Vector<EdgeType> edgeTypes, Vector<Edge> edges, Vector<Photo> photos) {
        this.building = building;
        this.rois = rois;
        this.categories = categories;
        this.pois = pois;
        this.roipois = roipois;
        this.edgeTypes = edgeTypes;
        this.edges = edges;
        this.photos = photos;
    }


    public Building getBuilding() {
        return building;
    }

    public Vector<ROI> getRois() {
        return rois;
    }

    public Vector<Category> getCategories() {
        return categories;
    }

    public Vector<POI> getPois() {
        return pois;
    }

    public Vector<ROIPOI> getRoipois() {
        return roipois;
    }

    public Vector<EdgeType> getEdgeTypes() {
        return edgeTypes;
    }

    public Vector<Edge> getEdges() {
        return edges;
    }

    public Vector<Photo> getPhotos() {
        return photos;
    }
}
