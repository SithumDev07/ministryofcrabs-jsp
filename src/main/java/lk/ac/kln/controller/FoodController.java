package lk.ac.kln.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ac.kln.dao.FoodDao;
import lk.ac.kln.dao.FoodDaoImpl;
import lk.ac.kln.model.Food;

import java.io.IOException;
import java.util.Optional;

public class FoodController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        FoodDao foodDao = new FoodDaoImpl();

        Optional<Food> food = foodDao.getAllCrabs();

        req.setAttribute("food", food.get());

        RequestDispatcher dispatcher = req.getRequestDispatcher("food.jsp");

        dispatcher.forward(req, resp);
    }
}
