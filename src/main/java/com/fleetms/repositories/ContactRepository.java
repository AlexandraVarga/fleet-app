package com.fleetms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fleetms.models.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
