package lk.ac.kln.dao;

import lk.ac.kln.model.Food;

import java.util.List;
import java.util.Optional;

public interface FoodDao {

    List<Food> getAllCrabs();

    void insertFood(final Food food);

    Boolean deleteFood(final int id);

}
