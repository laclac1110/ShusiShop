/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import entity.HoaDonChiTiet;
import entity.ListCart;
import entity.Order;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author khanh
 */
@WebServlet(name = "AddToCartController", urlPatterns = {"/addToCart"})
public class AddToCartController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        if (session.getAttribute("acc") == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            User us = (User) session.getAttribute("acc");
            String acc = us.getUsername();
            DAO dao = new DAO();
            Order od = dao.listOrder(acc);
            String idSp = request.getParameter("idsp");
            if (od == null) {
                dao.AddDonHang(acc);
                od = dao.listOrder(acc);
                dao.addSpToCart(idSp, od.getIdDonHang());
                request.setAttribute("mess", "Đã thêm vào giỏ hàng");
                request.getRequestDispatcher("menu").forward(request, response);
            } else {
                int flag = 0;
                List<HoaDonChiTiet> listHDCT = dao.getHdctByidDH(od.getIdDonHang());
                for (HoaDonChiTiet hdct : listHDCT) {
                    if (idSp.equals(hdct.getIdSP())) {
                        dao.UpdateHDCT(idSp, hdct.getSoLuong() + 1, od.getIdDonHang());
                        flag = 1;
                    }
                }
                if (flag == 0) {
                    dao.addSpToCart(idSp, od.getIdDonHang());
                }
                request.setAttribute("mess", "Đã thêm vào giỏ hàng");
                request.getRequestDispatcher("menu").forward(request, response);
            }
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
