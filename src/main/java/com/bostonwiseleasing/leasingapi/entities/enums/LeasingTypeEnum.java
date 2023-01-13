package com.bostonwiseleasing.leasingapi.entities.enums;

public enum LeasingTypeEnum {
    TermForYears("Term For Years"),
    PeriodicTenancy("Periodic Tenancy"),
    TenancyAtWill("Tenancy at Will"),
    TenancyAtSufferance("Tenancy at Sufferance");

    private final String type;
    LeasingTypeEnum(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
