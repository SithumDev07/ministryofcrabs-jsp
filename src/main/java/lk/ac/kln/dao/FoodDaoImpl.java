package lk.ac.kln.dao;

import lk.ac.kln.model.Food;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Optional;

public class FoodDaoImpl implements FoodDao {

    public Connection getConnection() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://databse:3306/javalounge_cafe", "javalounge_admin", "javalounge_master_password");
        return connection;
    }

    @Override
    public Optional<Food> getAllCrabs() {

        Food food = new Food();

        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM food");
            if(resultSet.next()) {
                food.setId(resultSet.getInt("id"));
                food.setName(resultSet.getString("name"));
                food.setDescription(resultSet.getString("description"));
                food.setSize(resultSet.getString("size"));
                food.setPrice(resultSet.getDouble("price"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Optional.of(food);
    }

}
