/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Will
 */
@WebServlet(name = "Chat", urlPatterns = {"/Chat"})
public class Chat extends HttpServlet {

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
        String url = "/Chat.jsp";
        
        User user = (User) request.getSession().getAttribute("user");
        
        String action = request.getParameter("action");
        if (action!=null){
            if (action.equals("SEND")){
                String username = request.getParameter("username");
                String message = request.getParameter("message");
                Calendar calendar = Calendar.getInstance();
                if (UserDB.find(username)!=null){
                    MessageDB.add(new Message(
                            1,
                            user.getUsername(),
                            username,
                            message,
                            Integer.toString(calendar.get(Calendar.YEAR)),
                            Integer.toString(calendar.get(Calendar.MONTH)),
                            Integer.toString(calendar.get(Calendar.DAY_OF_MONTH)),
                            Integer.toString(calendar.get(Calendar.HOUR)),
                            Integer.toString(calendar.get(Calendar.MINUTE)),
                            Integer.toString(calendar.get(Calendar.SECOND))
                    ));
                } else{
                    request.setAttribute("message", "User not found");
                }
                System.out.println("SEND!!!!!!!!!!!!!");
            } else if (action.equals("SAVE")){
                System.out.println("SAVE!!!!!!!!!!!!!");
            } else if (action.equals("DELETE")){
                if (user.getMessage().size() > 0){
                    int id = Integer.parseInt(request.getParameter("id"));
                    MessageDB.deleteMessageByID(user.getMessage().get(id-1).getId());
                }
            }
        }
        
        ArrayList<Message> message = MessageDB.find(user.getUsername());
        for (int i=0; i<message.size(); i++){
            message.get(i).setNumber(i+1);
        }
        user.setMessage(message);
        request.getSession().setAttribute("user", user);
                
        this.getServletContext().getRequestDispatcher(url).forward(request, response);
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
