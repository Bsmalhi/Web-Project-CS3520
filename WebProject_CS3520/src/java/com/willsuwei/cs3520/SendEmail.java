/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import com.sun.mail.smtp.SMTPTransport;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Security;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

/**
 *
 * @author Will
 */
@WebServlet(name = "SendEmail", urlPatterns = {"/SendEmail"})
public class SendEmail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Welcome.jsp";
        String emailMessage = request.getParameter("emailMessage");
        
        ArrayList<String> emailList = UserDB.getEmailList();
        if (emailList != null){
            for (String email:emailList){
                sendEmail(email, emailMessage);
            }
        }
        
        this.getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    public static void sendEmail(String email, String message){
        System.out.println("Email: " + email + "---" + "Message: " + message);
        try{
            String username = "com.willsuwei.cs3520@gmail.com";
            String password = "cs3520admin";
            String title = "Snap Chat";

            Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
            Properties props = System.getProperties();
            props.setProperty("mail.smtps.host", "smtp.gmail.com");
            props.setProperty("mail.smtps.auth", "true");
            props.setProperty("mail.smtp.socketFactory.fallback", "false");
            props.setProperty("mail.smtp.port", "465");
            props.setProperty("mail.smtp.socketFactory.port", "465");
            props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
            props.put("mail.smtps.quitwait", "false");

            Session session = Session.getInstance(props, null);

            final MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(email, false));
            msg.setSubject(title);
            msg.setText(message, "utf-8");
            msg.setSentDate(new Date());
            SMTPTransport t = (SMTPTransport)session.getTransport("smtps");
            t.connect("smtp.gmail.com", username, password);
            t.sendMessage(msg, msg.getAllRecipients());      
            t.close();
       } catch(Exception e){
           System.out.println(e);
           e.printStackTrace();
       }
   }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
