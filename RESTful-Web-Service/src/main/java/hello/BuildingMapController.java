package hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import static hello.Application.query;

/**
 * Created by Black on 28/04/2016.
 */
@RestController
public class BuildingMapController {
    class MapVersion {
        private String mapVersion;

        public MapVersion(String mapVersion) {
            this.mapVersion = mapVersion;
        }

        public String getMapVersion() {
            return mapVersion;
        }
    }

    @RequestMapping("/maps")
    public BuildingMap buildingmap(@RequestParam(value="major", defaultValue="1") int major) {
        return new BuildingMap(getBuilding(major),getRois(major),getCategories(major),
                getPois(major),getRoipois(major),getEdgeTypes(major),getEdges(major),getPhoto(major));
    }

    @RequestMapping("/allMaps")
    public  AllBuilding allMaps() {
        return getAllBuilding();
    }

    @RequestMapping("/mapVersion")
    public MapVersion mapVersion(@RequestParam(value="major", defaultValue="1") int major) {
        if(getBuilding(major) != null )
            return new MapVersion(getBuilding(major).getMapVersion());
        else
            return new MapVersion("-1");
    }


    public AllBuilding getAllBuilding(){
        String q = "SELECT * FROM \"Building\"" ;
        Building building = null;
        Vector<Building> buildings = new Vector<Building>();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                building = new Building(rs.getInt("id"),
                        rs.getString("uuid"),
                        rs.getInt("major"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getString("openingHours"),
                        rs.getString("address"),
                        rs.getString("mapVersion"),
                        rs.getString("mapSize")
                );
                buildings.add(building);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new AllBuilding(buildings);
    }

    public Building getBuilding(int major){
        String q = "SELECT * FROM \"Building\" WHERE major=" + major ;
        Building building = null;
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                building = new Building(rs.getInt("id"),
                                 rs.getString("uuid"),
                                 rs.getInt("major"),
                                 rs.getString("name"),
                                 rs.getString("description"),
                                 rs.getString("openingHours"),
                                 rs.getString("address"),
                                 rs.getString("mapVersion"),
                                 rs.getString("mapSize")
                                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return building;
    }
    public Vector<ROI> getRois(int major){
        String q = "SELECT * FROM \"ROI\" WHERE major =" + major ;
        Vector<ROI> rois = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                rois.add(new ROI(rs.getInt("id"),
                        rs.getString("uuid"),
                        rs.getInt("major"),
                        rs.getInt("minor")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rois;
    }

    public Vector<Category> getCategories(int major){
        String q = "SELECT DISTINCT \"Category\".* FROM ((\"Category\" JOIN \"POI\" ON \"POI\".\"categoryId\"=\"Category\".\"id\") " +
                "JOIN \"ROIPOI\" ON \"ROIPOI\".\"POIId\"=\"POI\".\"id\") JOIN \"ROI\" ON \"ROIPOI\".\"ROIId\"=\"ROI\".\"id\" " +
                "WHERE \"ROI\".\"major\"=" + major ;
        Vector<Category> categories = new Vector();
        int i=0;
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                categories.add(new Category(rs.getInt("id"),
                                             rs.getString("description")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    public  Vector<POI> getPois(int major){
        String q = "SELECT DISTINCT \"POI\".* FROM (\"POI\" JOIN \"ROIPOI\" ON \"ROIPOI\".\"POIId\"=\"POI\".\"id\") " +
                "JOIN \"ROI\" ON \"ROIPOI\".\"ROIId\"=\"ROI\".\"id\" " +
                "WHERE \"ROI\".\"major\"=" + major ;
        Vector<POI> pois = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                pois.add(new POI(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("categoryId")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pois;
    }

    public  Vector<ROIPOI> getRoipois(int major){
        String q = "SELECT \"ROIPOI\".* FROM \"ROI\" JOIN \"ROIPOI\" ON \"ROIPOI\".\"ROIId\"=\"ROI\".\"id\"" +
                " WHERE \"ROI\".\"major\"=" + major ;
        Vector<ROIPOI> roipois = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                roipois.add(new ROIPOI(rs.getInt("ROIId"),
                        rs.getInt("POIId"))
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roipois;
    }

    public  Vector<EdgeType> getEdgeTypes(int major){
        String q1 = "SELECT \"EdgeType\".* FROM (\"EdgeType\" JOIN \"Edge\" ON \"Edge\".\"typeId\"=\"EdgeType\".\"id\") " +
                    "JOIN \"ROI\" ON \"ROI\".id=\"Edge\".\"startROI\" WHERE \"ROI\".\"major\"=" + major;
        String q2 = "SELECT \"EdgeType\".* FROM (\"EdgeType\" JOIN \"Edge\" ON \"Edge\".\"typeId\"=\"EdgeType\".\"id\") " +
                    "JOIN \"ROI\" ON \"ROI\".id=\"Edge\".\"endROI\" WHERE \"ROI\".\"major\"=" + major;
        String q = q1 + " UNION " + q2;
        Vector<EdgeType> edgeTypes = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                edgeTypes.add(new EdgeType(rs.getInt("id"),
                                            rs.getString("typeName"))
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return edgeTypes;
    }

    public  Vector<Edge> getEdges(int major){
        String q1 = "SELECT \"Edge\".* FROM \"Edge\" JOIN \"ROI\" ON \"ROI\".\"id\"=\"Edge\".\"startROI\" " +
                    "WHERE \"ROI\".\"major\"=" + major;
        String q2 = "SELECT \"Edge\".* FROM \"Edge\" JOIN \"ROI\" ON \"ROI\".\"id\"=\"Edge\".\"endROI\"" +
                    " WHERE \"ROI\".\"major\"=" + major;
        String q = q1 + " UNION " + q2;
        Vector<Edge> edges = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                edges.add( new Edge(rs.getInt("id"),
                        rs.getInt("startROI"),
                        rs.getInt("endROI"),
                        rs.getInt("distance"),
                        rs.getString("coordinate"),
                        rs.getInt("typeId"),
                        rs.getString("action"),
                        rs.getString("longDescription")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return edges;
    }

    public  Vector<Photo> getPhoto(int major){
        String q1 = "SELECT \"Photo\".* FROM (\"Photo\" JOIN \"Edge\" ON \"Photo\".\"edgeId\"=\"Edge\".\"id\") " +
                "JOIN \"ROI\" ON \"Edge\".\"startROI\"=\"ROI\".\"id\" WHERE \"ROI\".\"major\"=" + major;
        String q2 = "SELECT \"Photo\".* FROM (\"Photo\" JOIN \"Edge\" ON \"Photo\".\"edgeId\"=\"Edge\".\"id\") " +
                "JOIN \"ROI\" ON \"Edge\".\"endROI\"=\"ROI\".\"id\" WHERE \"ROI\".\"major\"=" + major;
        String q = q1 + " UNION " + q2;
        Vector<Photo> photos = new Vector();
        ResultSet rs = query(q);
        try {
            while (rs.next()){
                photos.add( new Photo(rs.getInt("id"),
                        rs.getString("URL"),
                        rs.getInt("edgeId"))
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return photos;
    }
}
