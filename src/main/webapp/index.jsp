<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Parking System</title>
    <style>
        body { font-family: Arial; text-align:center; margin-top:50px; }
        .btn { padding: 15px 30px; font-size:18px; border:none; border-radius:8px; background:#4CAF50; color:white; cursor:pointer; margin:10px; }
        .btn:hover { background:#45a049; }
    </style>
</head>
<body>
    <h1>Welcome to Parking System</h1>
    <form action="parking.jsp" method="get">
        <button type="submit" class="btn">Park the Vehicle</button>
    </form>
    <form action="viewRecords.jsp" method="get">
        <button type="submit" class="btn">View Parking Records</button>
    </form>
</body>
</html>
