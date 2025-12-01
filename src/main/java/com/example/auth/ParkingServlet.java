package com.example.auth;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/parking")
public class ParkingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ParkingStore store = (ParkingStore) getServletContext().getAttribute("parkingStore");

        ParkingEntry entry = new ParkingEntry(
                req.getParameter("ownerName"),
                req.getParameter("ownerPhone"),
                req.getParameter("vehicleType"),
                req.getParameter("vehicleNumber"),
                req.getParameter("date"),
                req.getParameter("duration"),
                req.getParameter("charge")
        );

        store.add(entry);

        req.setAttribute("success", "Parking Entry Added Successfully!");
        req.getRequestDispatcher("index.jsp").forward(req, res);
    }
}
