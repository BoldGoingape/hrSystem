import org.junit.Test;

import java.util.List;
import java.util.ResourceBundle;

public class tabText {
    @Test
    public void tabAll() throws Exception {
        tabDaoMysql tabDao = new tabDaoMysql();
        List<tab> tabs= tabDao.tabAll();
        for (tab tab :tabs){
            System.out.print(tab.getId()+" ");
            System.out.print(tab.getName()+" ");
            System.out.print(tab.getIp()+" ");
            System.out.print(tab.getType()+" ");
            System.out.print(tab.getServerProcesses());
            System.out.println();
        }
    }

}
