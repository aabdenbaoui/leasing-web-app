package com.bostonwiseleasing.leasingapi.entities.enums;

public enum IdentityProofDocument {
    USPASSPORT("US Passport"),
    PERMANENTRESIDENTCARD("Permanent Resident Card"),
    DRIVERLICENSE("Driver's license"),
    STATEID("State ID");
    private final String identityType;
    IdentityProofDocument(String identityType) {
        this.identityType = identityType;
    }

    public String getIdentityType() {
        return identityType;
    }
}
