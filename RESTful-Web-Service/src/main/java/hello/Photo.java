package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class Photo {
    private int id;
    private String URL;
    private int edgeId;

    public Photo(int id, String URL, int edgeId) {
        this.id = id;
        this.URL = URL;
        this.edgeId = edgeId;
    }

    public int getId() {
        return id;
    }

    public String getURL() {
        return URL;
    }

    public int getEdgeId() {
        return edgeId;
    }
}
