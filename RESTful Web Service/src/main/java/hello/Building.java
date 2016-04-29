package hello;

import java.util.UUID;

/**
 * Created by Black on 28/04/2016.
 */
public class Building {
    private int id;
    private String uuid;
    private int major;
    private String name;
    private String description;
    private String openingHours;
    private String address;
    private String mapVersion;
    private String dimension;

    public Building(int id, String uuid, int major, String name, String description, String openingHours, String address, String mapVersion, String dimension) {
        this.id = id;
        this.uuid = uuid;
        this.major = major;
        this.name = name;
        this.description = description;
        this.openingHours = openingHours;
        this.address = address;
        this.mapVersion = mapVersion;
        this.dimension = dimension;
    }


    public int getId() {
        return id;
    }

    public String getUuid() {
        return uuid;
    }

    public int getMajor() {
        return major;
    }

    public String getDescription() {
        return description;
    }

    public String getOpeningHours() {
        return openingHours;
    }

    public String getAddress() {
        return address;
    }

    public String getMapVersion() {
        return mapVersion;
    }

    public String getDimension() {
        return dimension;
    }
}
