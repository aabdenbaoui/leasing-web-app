package com.bostonwiseleasing.leasingapi;

import com.bostonwiseleasing.leasingapi.entities.Renter;
import com.bostonwiseleasing.leasingapi.service.RenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/renters")
public class RenterApiController {
    @Autowired
    RenterService renterService;
    @PostMapping
    public void saveOrUpdateRenter(Renter renter){

    }
}
