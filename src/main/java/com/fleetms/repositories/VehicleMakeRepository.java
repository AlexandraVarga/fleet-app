package com.fleetms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fleetms.models.VehicleMake;

@Repository
public interface VehicleMakeRepository extends JpaRepository<VehicleMake, Integer> {

}