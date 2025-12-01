package com.example.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(value="/parkingInit", loadOnStartup=1)
public class ParkingInitServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        ParkingStore store = new ParkingStore();
        getServletContext().setAttribute("parkingStore", store);
    }
}
