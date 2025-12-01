<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.example.auth.ParkingEntry, com.example.auth.ParkingStore" %>
<%
    ParkingStore store = (ParkingStore) application.getAttribute("parkingStore");
    if(store == null) {
        store = new ParkingStore();
        application.setAttribute("parkingStore", store);
    }

    List<ParkingEntry> list = store.getAll();
%>

<!DOCTYPE html>
<html>
<head>
    <title>All Parking Records</title>
    <style>
        body { font-family: Arial; background:#eef2f3; padding:30px; }
        .box { background:white; padding:20px; width:900px; margin:auto; border-radius:10px; box-shadow:0 4px 15px rgba(0,0,0,0.2); }
        table { width:100%; border-collapse:collapse; }
        th, td { padding:10px; border:1px solid #aaa; text-align:center; }
        th { background:#007BFF; color:white; }
        button { padding:10px; margin-top:10px; background:#007BFF; color:white; border:none; border-radius:5px; cursor:pointer; }
    </style>
</head>
<body>

<div class="box">
<h2>All Parking Records</h2>

<table>
<tr>
<th>Owner</th><th>Phone</th><th>Type</th><th>Number</th><th>Date</th><th>Time Slot</th>
</tr>
<% for(ParkingEntry p : list) { %>
<tr>
<td><%= p.getOwnerName() %></td>
<td><%= p.getOwnerPhone() %></td>
<td><%= p.getVehicleType() %></td>
<td><%= p.getVehicleNumber() %></td>
<td><%= p.getDate() %></td>
<td><%= p.getTimeSlot() %></td>
</tr>
<% } %>
</table>

<form method="get" action="parking.jsp">
    <button type="submit">Back to Add Vehicle</button>
</form>
</div>

</body>
</html>
