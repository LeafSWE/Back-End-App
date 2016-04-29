package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class ROI {
    private int id;
    private String uuid;
    private int major;
    private int minor;

    public ROI(){}
    public ROI(int id, String uuid, int major, int minor) {
        this.id = id;
        this.uuid = uuid;
        this.major = major;
        this.minor = minor;
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

    public int getMinor() {
        return minor;
    }
}
