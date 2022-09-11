<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="lk.ac.kln.model.Food" %>
<html>
<title>Welcome | Ministry of Crabs</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Qwitcher+Grypen:wght@400;700&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
<style>
    * {
        font-family: "Lato", sans-serif;
    }

    .bg-black-pro {
        background-color: #191919;
    }
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    input[type=number] {
        -moz-appearance:textfield; /* Firefox */
    }
    .premium {
        font-family: 'Lato', sans-serif;
        font-family: 'Qwitcher Grypen', cursive;
    }
</style>
<body>
<div class="w-full min-h-screen bg-black-pro">
    <nav class="w-full flex items-center justify-between px-10 py-3 sticky top-0 z-40 bg-black-pro">
        <form method="get" action="/">
            <button type="submit" class="logo">
                <img class="h-16 w-auto" src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/logo-1.png" />
            </button>
        </form>
        <form action="crabs" method="get">
            <button type="submit" class="px-7 py-4 rounded-full bg-amber-400 text-gray-700 text-base">See Menu</button>
        </form>
    </nav>
    <div class="container mx-auto min-h-screen py-12">
        <%
            Food food = (Food) request.getAttribute("food");
        %>

        <div class="w-full grid grid-cols-3 gap-5 px-10">
            <div class="relative w-full h-[60vh] crab-card overflow-hidden group">
                <img class="w-full h-full object-cover" src="https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/Pepper-Crab-3.jpg" />
                <div class="bg-amber-400 flex flex-col absolute transform left-0 right-0 bottom-0 top-0 translate-y-full group-hover:translate-y-0 text-gray-900 p-4 transition-all duration-300">
                    <h3 class="mb-2 text-3xl"><% out.println(food.getName()); %></h3>
                    <p class="text-base flex-1">
                        <% out.println(food.getDescription()); %>
                    </p>
                    <div class="flex items-center justify-between">
                        <p class="text-xl mt-3 mr-1"><span class="text-5xl">$</span><% out.println(food.getPrice()); %></p>
                        <div class="flex items-center justify-center w-16 h-16 rounded-full bg-[#191919]/20">
                            <p class="text-xl"><% out.println(food.getSize()); %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="w-full min-h-36 mt-10 bg-amber-700 py-6">
        <div class="container mx-auto flex items-center bg-transparent">
            <div class="flex-1 bg-transparent flex flex-col items-center">
                <div class="logo">
                    <img class="h-36 w-auto" src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/logo-1.png" />
                </div>
                <ul class="flex items-center mt-3 gap-3 text-xl">
                    <li>
                        <i class='bx bxl-facebook-circle'></i>
                    </li>
                    <li>
                        <i class='bx bxl-instagram'></i>
                    </li>
                    <li>
                        <i class='bx bxl-youtube'></i>
                    </li>
                    <li>
                        <i class='bx bx-envelope'></i>
                    </li>
                </ul>
            </div>
            <ul class="site-links flex flex-col flex-1 bg-transparent text-sm">
                <li>Declaration</li>
                <li>Ministers</li>
                <li>Constitution</li>
                <li>Amendments</li>
                <li>Merchandise</li>
                <li>FAQ</li>
            </ul>
            <div class="flex-1 bg-transparent">
                <h5 class="text-lg">Seating Times</h5>
                <h3 class="text-base mt-1">Daily</h3>
                <p class="mt-1 text-sm">12.00 noon to 9.30 pm</p>
                <h3 class="text-base mt-2">Closed on Poya Days</h3>
                <p class="mt-1 text-sm">17th January | 16th February | 17th March</p>
                <p class="mt-1 text-sm">16th April | 15th May | 16th May</p>
                <p class="mt-1 text-sm">14th June | 13th July | 11th August</p>
                <p class="mt-1 text-sm">10th September | 09th October</p>
            </div>
        </div>
    </footer>
</div>
</body>
</html>

