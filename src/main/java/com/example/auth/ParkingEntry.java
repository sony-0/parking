package com.example.auth;

public class ParkingEntry {
    private String ownerName;
    private String ownerPhone;
    private String vehicleType;
    private String vehicleNumber;
    private String date;
    private String timeSlot;

    public ParkingEntry(String ownerName, String ownerPhone, String vehicleType, String vehicleNumber, String date, String timeSlot) {
        this.ownerName = ownerName;
        this.ownerPhone = ownerPhone;
        this.vehicleType = vehicleType;
        this.vehicleNumber = vehicleNumber;
        this.date = date;
        this.timeSlot = timeSlot;
    }

    public String getOwnerName() { return ownerName; }
    public String getOwnerPhone() { return ownerPhone; }
    public String getVehicleType() { return vehicleType; }
    public String getVehicleNumber() { return vehicleNumber; }
    public String getDate() { return date; }
    public String getTimeSlot() { return timeSlot; }
}
