package com.bostonwiseleasing.leasingapi.service;

import com.bostonwiseleasing.leasingapi.dao.RenterDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RenterService {
    @Autowired
    RenterDao renterDao;
}
