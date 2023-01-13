package com.bostonwiseleasing.leasingapi.entities.property_managment;

import com.bostonwiseleasing.leasingapi.entities.enums.LeasingDurationEnum;
import com.bostonwiseleasing.leasingapi.entities.enums.LeasingTypeEnum;

public class leasingInfo {
    private int leasingInfoId;
    private LeasingTypeEnum leasingType;
    private boolean isSubLeasingAllowed;
    private double applicationFee;
    private double securityDeposit;
    private LeasingDurationEnum leasingDuration;
    private boolean isEarlyTerminalAllowed;
    private double earlyTerminalCost;

}
