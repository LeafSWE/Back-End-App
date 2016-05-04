package hello;

import java.util.Vector;

/**
 * Created by Black on 04/05/2016.
 */
public class AllBuilding {
    private Vector<Building> building;

    public AllBuilding(Vector<Building> building) {
        this.building = building;
    }

    public Vector<Building> getBuilding() {
        return building;
    }
}
