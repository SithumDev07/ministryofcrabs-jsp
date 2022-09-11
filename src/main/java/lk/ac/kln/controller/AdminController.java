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

@WebServlet("/create")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("introduce-crab.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FoodDao foodDao = new FoodDaoImpl();

        String name = req.getParameter("crab_name");
        String description = req.getParameter("description");
        String size = req.getParameter("size");
        Double price = Double.parseDouble(req.getParameter("price"));
        String image = req.getParameter("image");

        foodDao.insertFood(new Food(name, description, size, price, image));

        List<Food> foods = foodDao.getAllCrabs();

        req.setAttribute("foods", foods);
        req.getRequestDispatcher("food.jsp").forward(req, resp);
    }
}
