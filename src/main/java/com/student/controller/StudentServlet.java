package com.student.controller;

import com.student.dao.StudentDAO;
import com.student.model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = {"/register", "/show_all"})
public class StudentServlet extends HttpServlet {
    private StudentDAO dao = new StudentDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String yearStr = request.getParameter("year");

        try {
            int year = Integer.parseInt(yearStr);
            dao.insertStudent(new Student(name, email, year));
            
            // SUCCESS and redirecting
            response.sendRedirect("show_all");
            
        } catch (java.sql.SQLIntegrityConstraintViolationException e) {
            // ERROR: Email exists. show error.
            request.setAttribute("errorMessage", "You have already registered with this email!");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            StudentDAO dao = new StudentDAO();
            List<Student> list = dao.getAllStudents();
            
            
            request.setAttribute("students", list); 
            
            request.getRequestDispatcher("view_students.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}