package ua.vetal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ua.vetal.models.Person;

@Repository
public interface PeopleRepository extends JpaRepository<Person, Integer> {
}
