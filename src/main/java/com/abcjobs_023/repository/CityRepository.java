package com.abcjobs_023.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcjobs_023.model.City;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {

}
