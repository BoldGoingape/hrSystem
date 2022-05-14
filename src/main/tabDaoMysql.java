import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class tabDaoMysql implements tabDao {
        @Override
        public List<tab> tabAll() throws Exception {
            //将数据库结果集转成java list 集合
            List<tab> tab= new ArrayList<tab>();
            //获取java的connection 对象
            Connection connection=null;
            //获取操作数据库的对象
            PreparedStatement pst= null;
            //执行数据库操作 查询
            ResultSet rs = null;
            try {
                //加载驱动类
                Class.forName("com.mysql.cj.jdbc.Driver");
                //获取java的connection 对象
                connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/message","root","abc123");
                //获取操作数据库的对象
                pst= connection.prepareCall("select * from message");
                //执行数据库操作 查询
                rs = pst.executeQuery();
                while (rs.next()){
                    tab tab1 = new tab();
                   tab1.setId(rs.getString("id"));
                   tab1.setIp(rs.getString("ip"));
                   tab1.setName(rs.getString("name"));
                   tab1.setType(rs.getString("type"));
                   tab1.setServerProcesses(rs.getString("serverProcesses"));
                    tab.add(tab1);
                }
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                connection.close();
                pst.close();
                rs.close();
            }
            return tab;
        }
}
