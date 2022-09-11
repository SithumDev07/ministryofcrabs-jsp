package lk.ac.kln.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ac.kln.dao.FoodDao;
import lk.ac.kln.dao.FoodDaoImpl;
import lk.ac.kln.model.Food;

import java.io.IOException;
import java.util.List;

@WebServlet("/delete")
public class CrabDeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FoodDao foodDao = new FoodDaoImpl();
        List<Food> foods = foodDao.getAllCrabs();

        req.setAttribute("foods", foods);
        req.getRequestDispatcher("foods-admin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        FoodDao foodDao = new FoodDaoImpl();

        foodDao.deleteFood(id);

        List<Food> foods = foodDao.getAllCrabs();

        req.setAttribute("foods", foods);

        req.getRequestDispatcher("food.jsp").forward(req, resp);
    }
}
