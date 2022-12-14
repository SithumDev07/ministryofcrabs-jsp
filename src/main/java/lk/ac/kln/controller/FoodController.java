package lk.ac.kln.controller;

import jakarta.servlet.RequestDispatcher;
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
import java.util.Optional;
@WebServlet("/crabs")
public class FoodController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        FoodDao foodDao = new FoodDaoImpl();

        List<Food> foods = foodDao.getAllCrabs();

        req.setAttribute("foods", foods);

        RequestDispatcher dispatcher = req.getRequestDispatcher("food.jsp");

        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("name", req.getParameter("name"));
        RequestDispatcher dispatcher = req.getRequestDispatcher("crabs-admin.jsp");
        dispatcher.forward(req, resp);
    }
}
