package com.bostonwiseleasing.leasingapi.entities;

import com.bostonwiseleasing.leasingapi.entities.enums.IdentityProofDocument;
import com.bostonwiseleasing.leasingapi.entities.property_managment.Address;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Renter {
    @Id
    @GeneratedValue(strategy =  GenerationType.AUTO)
    private long renterId;
    private String firstName;
    private String lastName;
    private IdentityProofDocument identityProofDocument;
    private String identityProofDocumentId;
    private Address permanentAddress;

    public Renter() {
    }

    public Renter(String firstName, String lastName, IdentityProofDocument identityProofDocument, String identityProofDocumentId, Address permanentAddress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.identityProofDocument = identityProofDocument;
        this.identityProofDocumentId = identityProofDocumentId;
        this.permanentAddress = permanentAddress;
    }

    public long getRenterId() {
        return renterId;
    }

    public void setRenterId(long renterId) {
        this.renterId = renterId;
    }

    public IdentityProofDocument getIdentityProofDocument() {
        return identityProofDocument;
    }

    public void setIdentityProofDocument(IdentityProofDocument identityProofDocument) {
        this.identityProofDocument = identityProofDocument;
    }

    public String getIdentityProofDocumentId() {
        return identityProofDocumentId;
    }

    public void setIdentityProofDocumentId(String identityProofDocumentId) {
        this.identityProofDocumentId = identityProofDocumentId;
    }

    public Address getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(Address permanentAddress) {
        this.permanentAddress = permanentAddress;
    }
}
