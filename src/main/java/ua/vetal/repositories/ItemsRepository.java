package ua.vetal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ua.vetal.models.Item;
import ua.vetal.models.Person;

import java.util.List;

@Repository
public interface ItemsRepository extends JpaRepository<Item, Integer> {
  List<Item> findByItemName(String itemName);

  // person.getItems()
  List<Item> findByOwner(Person owner);
}
