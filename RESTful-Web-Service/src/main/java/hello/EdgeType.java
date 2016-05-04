package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class EdgeType {
    private int id;
    private String typeName;

    public EdgeType(int id, String typeName) {
        this.id = id;
        this.typeName = typeName;
    }

    public int getId() {
        return id;
    }

    public String getTypeName() {
        return typeName;
    }
}
