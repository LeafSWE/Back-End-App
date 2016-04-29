package hello;

public class Requisito {

    private final int id;
    private final String description;
    private final String[] array={"1","2","3"};

    public Requisito(int id, String description) {
        this.id = id;
        this.description=description;
    }

    public int getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public String [] getArray() { return array; }
}
