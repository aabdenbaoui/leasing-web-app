package com.bostonwiseleasing.leasingapi.entities.enums;

public enum LeasingDurationEnum {
    OneMonthLeasing("1 month"),
    SixMonthsLeasing("6 months"),
    TwelveMonthsLeasing("12 months");

    private final String duration;


    LeasingDurationEnum(String duration) {
        this.duration = duration;
    }

    public String getDuration() {
        return duration;
    }
}
