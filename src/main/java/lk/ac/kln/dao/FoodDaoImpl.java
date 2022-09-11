package lk.ac.kln.dao;

import lk.ac.kln.model.Food;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FoodDaoImpl implements FoodDao {

    private static final String SELECT_ALL_USERS = "SELECT * from food";
    private static final String INSERT_CRABS = "INSERT INTO food(name, description, size, price, image) VALUES (?, ?, ?, ?, ?)";
    private static final String DELETE_CRABS =  "DELETE FROM food WHERE id = ?";

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
        try {

            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CRABS);
            preparedStatement.setString(1, food.getName());
            preparedStatement.setString(2, food.getDescription());
            preparedStatement.setString(3, food.getSize());
            preparedStatement.setDouble(4, food.getPrice());
            preparedStatement.setString(5, food.getImage());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Boolean deleteFood(int id) {
        Boolean rowDeleted = false;
        try {

            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(DELETE_CRABS);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowDeleted;
    }

}
