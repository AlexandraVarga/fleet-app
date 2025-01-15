package com.fleetms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fleetms.models.Country;

@Repository
public interface CountryRepository extends JpaRepository<Country, Integer> {

}
