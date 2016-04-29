package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class POI {
    private int id;
    private String name;
    private String description;
    private int categoryId;

    public POI(int id, String name, String description, int categoryId) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public int getCategoryId() {
        return categoryId;
    }
}
