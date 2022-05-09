import org.junit.Test;

import java.util.List;

public class itemstext {
    @Test
    public void findAll() throws Exception {
        ItemsDaoImpl itemsDao = new ItemsDaoImpl();
        List<items> list= itemsDao.findAll();
        for (items items:list){
            System.out.println(items.getUsrname());
            System.out.println(items.getPassword());
        }
    }
}
