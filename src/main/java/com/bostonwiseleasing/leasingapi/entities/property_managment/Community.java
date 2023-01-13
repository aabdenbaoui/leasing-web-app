package com.bostonwiseleasing.leasingapi.entities.property_managment;

public class Community {
    private int communityId;
    private String communityName;
    private int addressId;

    public Community() {
    }

    public Community(int communityId, String communityName, int addressId) {
        this.communityId = communityId;
        this.communityName = communityName;
        this.addressId = addressId;
    }
}
