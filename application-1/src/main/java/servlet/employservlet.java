package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/response")

public class employservlet extends  HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo-1","root","Praveen#1221");
			String sql="insert into employee(name,email,branch,password,rollno) values (?,?,?,?,?)";
			PreparedStatement pmst = connect.prepareStatement(sql);
			String name =  req.getParameter("name");
			String email = req.getParameter("email");
			String password= req.getParameter("password");
			String branch = req.getParameter("branch");
			String rollno = req.getParameter("rollno");
			
			pmst.setString(1, name);
			pmst.setString(2, email);
			pmst.setString(3, password);
			pmst.setString(4, branch);
			pmst.setString(5, rollno);
			
			int i = pmst.executeUpdate();
			PrintWriter pw=resp.getWriter();
			
			if (i>0) {
				pw.println("sucessfully inserted");
				
			}else {
				pw.println("error");
				
			}
			
		} catch (Exception e) {
			
		}
	}

}
