package hello;

/**
 * Created by Black on 28/04/2016.
 */
public class Category {
    private int id;
    private String description;

    public Category(int id, String description) {
        this.id = id;
        this.description = description;
    }


    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }
}
