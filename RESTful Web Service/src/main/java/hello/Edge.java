package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class Edge {
    private int id;
    private int startROI;
    private int endROI;
    private int distance;
    private String coordinate;
    private int typeId;
    private String action;
    private String longDescription;

    public Edge(int id, int startROI, int endROI, int distance, String coordinate, int typeId, String action, String longDescription) {
        this.id = id;
        this.startROI = startROI;
        this.endROI = endROI;
        this.distance = distance;
        this.coordinate = coordinate;
        this.typeId = typeId;
        this.action = action;
        this.longDescription = longDescription;
    }


    public int getId() {
        return id;
    }

    public int getStartROI() {
        return startROI;
    }

    public int getEndROI() {
        return endROI;
    }

    public int getDistance() {
        return distance;
    }

    public String getCoordinate() {
        return coordinate;
    }

    public int getTypeId() {
        return typeId;
    }

    public String getAction() {
        return action;
    }

    public String getLongDescription() {
        return longDescription;
    }
}
