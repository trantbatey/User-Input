package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This is a servlet to demonstrate SQL injection attacks
 *
 *      Truncats ads
 *      get users table information
 */
@WebServlet("/ads/search")
public class AdsSearchServlet extends HttpServlet {

    /**
     * Method to invoke ads_search.jsp
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/ads_search.jsp").forward(request, response);
    }

    /**
     * Method to pass search string through to the DOA
     * @param request
     * @param response
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchString = (String) request.getParameter("filter");
        request.setAttribute("ads", DaoFactory.getAdsDao().getFilteredList(searchString));
//        request.setAttribute("ads", DaoFactory.getAdsDao().getPreparedList(searchString));
        request.setAttribute("filter", searchString); // Is this needed?
        request.getRequestDispatcher("/WEB-INF/ads/filtered_list.jsp").forward(request, response);
    }
}
