package controllers.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String umail = request.getParameter("email");
        String upwd = request.getParameter("pass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginSignUpSys?useSSL=false", "root", "12345");
            PreparedStatement pst = con.prepareStatement("select email,pass from userData where email = ? and pass = ?");
            pst.setString(1, umail);
            pst.setString(2, upwd);

            ResultSet rs = pst.executeQuery();

            if(rs.next())
            {
                RequestDispatcher dispatcher;
                HttpSession session = request.getSession();
                session.setAttribute("email",umail);
                dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }
            else
            {
                RequestDispatcher dispatcher;
                dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
