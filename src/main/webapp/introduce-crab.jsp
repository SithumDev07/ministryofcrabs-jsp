<%--
  Created by IntelliJ IDEA.
  User: sithum
  Date: 2022-09-11
  Time: 15.22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
</head>
<body>
    <div  class="w-full min-h-screen bg-black-pro">
        <nav class="w-full flex items-center justify-between px-10 py-3 sticky top-0 z-40 bg-black-pro">
            <logo>
                <img class="h-16 w-auto" src="https://www.ministryofcrab.com/colombo/wp-content/themes/moctheme/images/logo-1.png" />
            </logo>
            <form action="crabs" method="get">
                <button type="submit" class="px-7 py-4 rounded-full bg-amber-400 text-gray-700 text-base">See Menu</button>
            </form>
        </nav>
        <div class="container mx-auto min-h-screen pt-6 pb-12">
            <div class="flex justify-center">
                <h1 class="text-9xl italic mb-2 text-gray-50 premium">Introduce Crabs</h1>
            </div>
            <form method="post" action="create" class="w-[60vw] mx-auto mt-6">
                <div class="relative z-0 mb-10 w-full group">
                    <input type="text" name="crab_name" id="crab_name" class="block py-4 px-0 w-full text-sm text-amber-400 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-amber-400 peer" placeholder=" " required>
                    <label for="crab_name" class="peer-focus:font-medium absolute text-lg text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-amber-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Name of the Food</label>
                </div>
                <div class="relative z-0 mb-10 w-full group">
                    <textarea name="description" id="description" class="block py-4 px-0 w-full text-sm text-amber-400 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-amber-400 peer" placeholder="" required></textarea>
                    <label for="description" class="peer-focus:font-medium absolute text-lg text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-amber-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Description of the Food</label>
                </div>
                <div class="relative z-0 mb-10 w-full group">
                    <input type="text" name="size" id="size" class="block py-4 px-0 w-full text-sm text-amber-400 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-amber-400 peer" placeholder=" " required>
                    <label for="size" class="peer-focus:font-medium absolute text-lg text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-amber-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Size of the Food (XL, L, M)</label>
                </div>
                <div class="relative z-0 mb-10 w-full group">
                    <input type="number" name="price" id="price" class="block py-4 px-0 w-full text-sm text-amber-400 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-amber-400 peer" placeholder=" " required>
                    <label for="price" class="peer-focus:font-medium absolute text-lg text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-amber-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Price of the Food (in USD)</label>
                </div>
                <div class="relative z-0 mb-10 w-full group">
                    <input type="text" name="image" id="image" class="block py-4 px-0 w-full text-sm text-amber-400 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-amber-400 peer" placeholder=" " required>
                    <label for="image" class="peer-focus:font-medium absolute text-lg text-gray-500 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-amber-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Image URL</label>
                </div>
                <form action="create" method="post">
                    <button type="submit" class="px-7 py-4 rounded-full bg-amber-400 text-gray-700 text-base">Introduce</button>
                </form>
                </form>
        </div>
    </div>
</body>
</html>
