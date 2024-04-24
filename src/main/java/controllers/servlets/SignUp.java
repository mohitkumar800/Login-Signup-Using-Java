package controllers.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

//import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "SignUp", value = "/SignUp")
public class SignUp extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        String fname = request.getParameter("FirstName");
        String sname = request.getParameter("SecondName");
        String mail = request.getParameter("email");
        String pwd = request.getParameter("pass");
        //Connection con = null;
        //RequestDispatcher dispatcher = null;
        // throws ServletException, IOException
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginSignUpSys?useSSL=false","root","12345");
            PreparedStatement pst = con.prepareStatement("insert into userData(FirstName,SecondName,email,pass) values (?,?,?,?)");
            pst.setString(1,fname);
            pst.setString(2,sname);
            pst.setString(3,mail);
            pst.setString(4,pwd);

            int rowCount = pst.executeUpdate();

            if(rowCount>0)
            {
                request.setAttribute("status","success");
                RequestDispatcher dispatcher;
                dispatcher = request.getRequestDispatcher("registered.jsp");
                dispatcher.forward(request, response);
            }
            else
            {
                request.setAttribute("status","failed");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}