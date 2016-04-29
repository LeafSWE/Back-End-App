package hello;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.web.bind.annotation.*;
import static hello.Application.query;

@RestController
public class RequisitoController {

    private static final String template = "Hello, %s %s!";
    //File file = new File("/Users/Davide/Desktop/Roba/images/blue.png");

    @RequestMapping("/requisito")
    public Requisito requisito(@RequestParam(value="id", defaultValue="1") int id) {
       String q = "SELECT description FROM \"Category\" WHERE id=" + id ;
        ResultSet rs = query(q);
        String description="";
        try {
            while (rs.next()){
                description = rs.getString("description");
               }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new Requisito(id, description);
    }
	

/*
    @RequestMapping(value = "/files/{file_name}", method = RequestMethod.GET)
	public void getFile(@PathVariable("file_name") String fileName, HttpServletResponse response) {
    try {
      // get your file as InputStream
      InputStream is = new FileInputStream(file);
      // copy it to response's OutputStream
      org.apache.commons.io.IOUtils.copy(is, response.getOutputStream());
      response.flushBuffer();
    } catch (IOException ex) {
      throw new RuntimeException("IOError writing file to output stream");
    }
    }*/
    
}
