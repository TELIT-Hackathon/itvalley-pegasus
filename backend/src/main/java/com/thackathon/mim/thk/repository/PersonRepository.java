package com.thackathon.mim.thk.repository;

import com.thackathon.mim.thk.entity.Person;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends QuerydslPredicateExecutor<Person> {
}
