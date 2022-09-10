<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <logo>
            <img class="h-16 w-auto" src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/logo-1.png" />
        </logo>
        <form action="crabs" method="get">
            <button type="submit" class="px-7 py-4 rounded-full bg-amber-400 text-gray-700 text-base">See Menu</button>
        </form>
    </nav>
    <div class="container mx-auto">
        <div class="flex justify-center">
            <h1 class="text-9xl italic my-6 text-gray-50 premium">Ministry of Crabs</h1>
        </div>
        <header class="flex items-center h-4/5 transform scale-[80%]">
            <div class="flex-1 bg-amber-300 h-full">
                <img class="w-full h-full object-cover" src="https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/3-1-1568x1045.jpg" />
            </div>
            <div class="flex-1 bg-green-300 h-full">
                <img class="w-full h-full object-cover" src="https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/Pepper-Crab-3.jpg" />
            </div>
            <div class="flex-1 bg-red-300 h-full">
                <img class="w-full h-full object-cover" src="https://www.ministryofcrab.com/colombo/wp-content/uploads/2019/03/11-1568x1060.jpg" />
            </div>
        </header>
        <div class="flex items-center w-full min-h-[70vh]">
            <div class="flex-1 text-gray-50 mr-2">
                <h3 class="text-3xl">The <span class="text-amber-500">Declaration</span></h3>
                <p class="text-sm mt-3">Ministry of Crab was created as a culinary homecoming of Sri Lanka’s legendary lagoon crab, which has long gained popularity outside of the island.</p>
                <p class="text-sm mt-1">The Crabs are the ‘stars of the show’ at Ministry of Crab, ranging from 500g ‘1/2 Kilo’ crab to 2KG ‘Crabzilla’ plated up in a variety of ways from fiery Pepper Crab to the unique Garlic Chilli Crab and the succulent Baked Crab. We also celebrate Sri Lanka’s fine seafood; from amazing King Prawns found in the rivers running across the island to fresh Clams and Oysters from the lagoons.</p>
                <p class="text-sm mt-1">We believe that freshness is of the utmost importance and employ a no-freezer policy in our restaurant to serve you the best dishes using the highest quality ingredients.</p>
            </div>
            <div class="flex-1">
                <img src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/owner.png" class="h-full w-full object-contain" />
            </div>
        </div>
        <form action="crabs" method="get">
            <button type="submit" class="px-7 py-4 rounded-full bg-amber-400 text-gray-700 text-base">See Menu</button>
        </form>
    </div>
    <footer class="w-full min-h-36 mt-10 bg-amber-700 py-6">
        <div class="container mx-auto flex items-center bg-transparent">
            <div class="flex-1 bg-transparent flex flex-col items-center">
                <div class="logo">
                    <img class="h-36 w-auto" src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/logo-1.png" />
                </div>
                <ul class="flex items-center mt-3 gap-3 text-xl">
                    <li>
                        <i class='bx bxl-facebook-circle' ></i>
                    </li>
                    <li>
                        <i class='bx bxl-instagram' ></i>
                    </li>
                    <li>
                        <i class='bx bxl-youtube' ></i>
                    </li>
                    <li>
                        <i class='bx bx-envelope' ></i>
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
