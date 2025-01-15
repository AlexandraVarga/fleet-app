package com.fleetms.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fleetms.models.State;

@Repository
public interface StateRepository extends JpaRepository<State, Integer> {

}
