<?php

require( 'header.php' );


?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>AstroMatch</title>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template -->
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <!-- Plugin CSS -->
        <link rel="stylesheet" href="device-mockups/device-mockups.min.css">
        <!-- Custom styles for this template -->
        <link href="css/new-age.min.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">AstroMatch</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="registrar.php">Registrarse</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#features">Inicia sesión</a>
                        </li>
                        <!--<li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="register.html">Regístrate</a>
                        </li>-->
						
                    </ul>
                </div>
            </div>
        </nav>

        <section class="features" id="features">
            <div class="container">
                <div class="section-heading text-center">
                    <h2>Inicia sesión</h2>
                    <p class="text-muted">&nbsp;Ingresa tus datos y comienza a divertirte!</p>
                </div>
                <div class="row">
                    <div class="col-lg-4 my-auto">
                    </div>
                    <div class="col-lg-8 my-auto">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="feature-item">
                                        <form action="verify.php" method="post">
                                            <input type="text" name="username" class="form-control" placeholder="Usuario" required>
                                            <br>
                                            <input type="password" name="password" class="form-control" placeholder="Contraseña" required>
                                            <br>
                                            <input type="submit" class="btn btn-default">
                                        </input>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer>
        <div class="container">
            <p>&copy; 2017 Start Bootstrap. All Rights Reserved.</p>
        </div>
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="js/new-age.min.js"></script>
</body>
