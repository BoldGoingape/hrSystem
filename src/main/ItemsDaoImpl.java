import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ItemsDaoImpl implements ItmsDao {
    @Override
    public List<items> findAll() throws Exception {
        //将数据库结果集转成java list 集合
        List<items> list= new ArrayList<items>();
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
             connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/hruser","root","abc123");
            //获取操作数据库的对象
             pst= connection.prepareCall("select * from hrusre");
            //执行数据库操作 查询
             rs = pst.executeQuery();
            while (rs.next()){
                items items = new items();
                items.setUsrname(rs.getString("username"));
                items.setPassword(rs.getString("password"));
                list.add(items);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            connection.close();
            pst.close();
            rs.close();
        }
        return list;
    }
}
