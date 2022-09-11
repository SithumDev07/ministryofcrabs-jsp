package lk.ac.kln.dao;

import lk.ac.kln.model.Food;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class FoodDaoImpl implements FoodDao {

    private static final String SELECT_ALL_USERS = "SELECT * from food";
    private static final String INSERT_CRABS = "INSERT INTO food(name, description, size, price, image) VALUES (?, ?, ?, ?, ?)";

    public Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://databse:3306/javalounge_cafe", "javalounge_admin", "javalounge_master_password");
        return connection;
    }

    @Override
    public List<Food> getAllCrabs() {

        List<Food> foods = new ArrayList<>();

        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_USERS);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()) {
                Food food = new Food();
                food.setId(resultSet.getInt("id"));
                food.setName(resultSet.getString("name"));
                food.setDescription(resultSet.getString("description"));
                food.setSize(resultSet.getString("size"));
                food.setPrice(resultSet.getDouble("price"));
                food.setImage(resultSet.getString("image"));
                foods.add(food);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return foods;
    }

    @Override
    public void insertFood(Food food) {

    }

}
