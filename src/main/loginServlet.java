import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
    //获取数据
        String user = "";
        String pasd = "";
        String userName = request.getParameter("userName");
        String password = request.getParameter("textfield2");
        System.out.println("用户名是"+userName);
        System.out.println("密码是"+password);
        ItemsDaoImpl itemsDao = new ItemsDaoImpl();
        List<items> list= null;
        try {
            list = itemsDao.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (items items:list){
            user=items.getUsrname();
            pasd=items.getPassword();
        }
        System.out.println("数据库用户是"+user);
        System.out.println("数据库用户是"+pasd);
        //判断
        if (userName==""){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
//            System.out.println("页面为空");
        }else if (userName.equals(user)&&password.equals(pasd)){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doPost(request, response);
    }
}
