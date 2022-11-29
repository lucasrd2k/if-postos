<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
        /* TUTORIAL MENU STYLES */
        .navbar #nav-icon {
            display: none;
        }

        @media only screen and (max-width: 1000px) {
            .navbar #nav-menu {
                display: none;
            }

            .navbar #nav-icon {
                display: block;
            }
        }

        .navbar #side-nav {
            height: 100vh;
            width: 0;
            right: 0;
            top: 0;
            overflow-x: hidden;
            position: fixed;
            transition: 0.3s;
        }

        .navbar #side-nav a {
            display: block;
        }

        /* OTHER STYLES */
        body {
            margin: 0;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            font-family: Arial, Helvetica, sans-serif;
            text-transform: uppercase;
            background: linear-gradient(45deg, #0066ff 0%, #0066ff 21%, #9933ff 100%);
            padding: 0;
        }

        .navbar .logo h1 {
            margin: 15px 0 0 40px;
            padding: 0;
            color: white;
            font-wieght: 600;
        }

        .navbar #nav-icon {
            text-align: right;
            ont-family: Arial, Helvetica, sans-serif;
            text-transform: uppercase;
            padding: 16px 0;
        }

        .navbar #nav-icon a {
            text-decoration: none;
            margin-right: 50px;
            line-height: .5;
            font-weight: 560;
            font-size: 34px;
            color: white;
            position: relative;
            top: 5px;
            border: 1px solid white;
            padding: 0 5px 0 4px;
            border-radius: 5px;
        }

        .navbar #nav-icon a:hover {
            color: #00ff00;
            border-color: #00ff00;
        }

        .navbar #nav-menu {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            text-transform: capitalize;
            padding: 16px 0;
        }

        .navbar #nav-menu a {
            text-decoration: none;
            padding: 0 50px;
            font-weight: 600;
            padding-bottom: 14px;
            font-size: 20px;
            color: white;
            transition: 0.3s;
        }

        .navbar #nav-menu a:hover {
            color: #00ff00;
            border-bottom: 3px solid #00ff00;
            border-left: px solid #00ff00;
        }

        .navbar #side-nav {
            opacity: 0.9;
            z-index: 1;
            text-align: center;
            background: black;
            padding: 16px 0;
        }

        #side-nav a {
            text-decoration: none;
            color: gold;
            background: rgb(0, 0, 0, 0.4);
            padding: 8px 0;
            font-size: 22px;
            margin: -2.8px 20px 18px;
            text-transform: capitalize;
            border-radius: 4px;
            border: 1px solid #9933ff;
            font-weight: 600;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            transition: 0.3s;
        }

        #side-nav a:hover {
            color: #00ff00;
            border: 1px solid #00ff00;
            background: linear-gradient(45deg, #0066ff 0%, #0066ff 21%, #9933ff 100%);
        }

        #side-nav .close-btn {
            text-align: right;
            font-size: 36px;
            font-weight: 560;
            margin: -16px 54px 30px 0;
            line-height: 1.7;
            background: transparent;
            border: none;
            color: #9933ff;
            padding: 0;
        }

        #side-nav .close-btn:hover {
            color: #00ff00;
            border: none;
            background: transparent;
        }

        main {
            text-align: center;
            padding: 16px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
        }
    </style>
</head>

<body>
    <script>
        //funtion to open menu
        function openSideMenu() {
            document.getElementById("side-nav").style.width = "30%";
        }
        //funtion to close menu
        function closeSideMenu() {
            document.getElementById("side-nav").style.width = "0";
        }
    </script>
    <div class="navbar">
        <div class="logo">
            <h1>logo</h1>
        </div>
        <div id="nav-icon">
            <a href="#" class="open-btn" onClick='openSideMenu()'>&#9776;</a>
        </div>
        <nav id="nav-menu">
            <a href="#">link 1</a>
            <a href="#">link 2</a>
            <a href="#">link 3</a>
            <a href="#">link 4</a>
        </nav>
        <div id="side-nav">
            <a href="#" class="close-btn" onClick="closeSideMenu()">&#9776;</a>
            <a href="#">link 1</a>
            <a href="#">link 2</a>
            <a href="#">link 3</a>
            <a href="#">link 4</a>
        </div>
    </div>
    <main id="main">
        <h1>Easy Responsive Desktop to Mobile Menu With HTML, CSS, & Javascript</h1>
    </main>
</body>

</html>