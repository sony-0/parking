package com.example.auth;

import java.util.*;

public class ParkingStore {
    private List<ParkingEntry> entries = new ArrayList<>();

    public void add(ParkingEntry entry) {
        entries.add(entry);
    }

    public List<ParkingEntry> getAll() {
        return entries;
    }

    public ParkingEntry getByVehicleNumber(String vehicleNumber) {
        for(ParkingEntry e : entries) {
            if(e.getVehicleNumber().equalsIgnoreCase(vehicleNumber)) {
                return e;
            }
        }
        return null;
    }
}
