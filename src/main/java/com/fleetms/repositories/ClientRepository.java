package com.fleetms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fleetms.models.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {

}
