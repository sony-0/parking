<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.example.auth.ParkingEntry, com.example.auth.ParkingStore" %>
<%
    ParkingStore store = (ParkingStore) application.getAttribute("parkingStore");
    if(store == null) {
        store = new ParkingStore();
        application.setAttribute("parkingStore", store);
    }

    if(request.getMethod().equalsIgnoreCase("POST")) {
        String ownerName = request.getParameter("ownerName");
        String ownerPhone = request.getParameter("ownerPhone");
        String vehicleType = request.getParameter("vehicleType");
        String vehicleNumber = request.getParameter("vehicleNumber");
        String date = request.getParameter("date");
        String timeSlot = request.getParameter("timeSlot");

        ParkingEntry entry = new ParkingEntry(ownerName, ownerPhone, vehicleType, vehicleNumber, date, timeSlot);
        store.add(entry);
        request.setAttribute("success", "Vehicle parked successfully!");
    }

    List<ParkingEntry> list = store.getAll();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Parking Records</title>
    <style>
        body { font-family: Arial; background:#eef2f3; padding:30px; }
        .box { background:white; padding:20px; width:450px; margin:auto; border-radius:10px; box-shadow:0 4px 15px rgba(0,0,0,0.2); }
        input, select { width:100%; padding:10px; margin:6px 0; border-radius:5px; }
        button { padding:10px; background:#007BFF; color:white; border:none; border-radius:5px; width:100%; cursor:pointer; margin-top:10px; }
        .home-btn { background:#6c757d; margin-bottom:15px; }
        .view-btn { background:#28a745; }
        table { margin-top:30px; width:100%; border-collapse:collapse; }
        td, th { padding:10px; border:1px solid #aaa; }
        th { background:#007BFF; color:white; }
        .success { color:green; font-weight:bold; text-align:center; margin-bottom:15px; }
    </style>
</head>
<body>

<!-- Home Button -->
<div style="width:450px; margin:auto; text-align:right;">
    <form action="index.jsp" method="get">
        <button type="submit" class="home-btn">Home</button>
    </form>
</div>

<div class="box">
<h2>Add Parking Entry</h2>

<div class="success"><%= request.getAttribute("success") != null ? request.getAttribute("success") : "" %></div>

<form method="post" action="parking.jsp">

    <input name="ownerName" placeholder="Owner Name" required pattern="[A-Za-z\s]{2,50}" title="Owner Name should contain only letters (2-50 chars)">
    <input name="ownerPhone" placeholder="Owner Phone Number" required pattern="\d{10}" title="Enter a valid 10-digit phone number">

    <select name="vehicleType" required>
        <option value="">Select Vehicle Type</option>
        <option>Car</option>
        <option>Bike</option>
        <option>Truck</option>
        <option>Van</option>
        <option>Bus</option>
        <option>Scooter</option>
        <option>Jeep</option>
        <option>Auto</option>
    </select>

    <input name="vehicleNumber" placeholder="Vehicle Number" required pattern="[A-Za-z]{2,3}-\d{1,4}" title="Vehicle number format: ABC-1234">
    <input type="date" name="date" required min="<%= java.time.LocalDate.now() %>">

    <select name="timeSlot" required>
        <option value="">Select Time Slot</option>
        <option>08:00-10:00</option>
        <option>10:00-12:00</option>
        <option>12:00-14:00</option>
        <option>14:00-16:00</option>
        <option>16:00-18:00</option>
        <option>18:00-20:00</option>
    </select>

    <button type="submit">Add</button>
</form>

<form method="get" action="viewRecords.jsp">
    <button type="submit" class="view-btn">View Records</button>
</form>
</div>


</body>
</html>
