<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= CSS_PATH ?>style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

    <title>Appl'ero</title>
</head>
<body>
    <header>
        
        <nav>
            <ul>
                <li><img src="<?= IMG_PATH ?>logo_Applero_Blanc.png"> </li>
                <li><a href="?ctrl=home&method=index"> Home</a></li>
               
                <?php
                    if(App\Session::getUser()){
                    ?>
                    <li><a href="?ctrl=security&method=logout"> Déconnexion </a></li>
                    <li><a href="?ctrl=subject&method=allSubjects">Liste des sujets publiés </a></li>
                    <li><a href="?ctrl=home&method=listUsers"> Liste des utilisateurs </a></li>
                    <li><a href="?ctrl=message&method=messagesByAuthor">Liste de vos messages</a></li>
                    <?php
                    }
                    else{
                        ?>
                        <li><a href="?ctrl=security&method=login"> Connexion </a></li>
                        <li><a href="?ctrl=security&method=register"> Inscription </a></li>
                            <?php
                    }
                                ?> 
                <li><span id="Reponse">Applero, nos solutions pour des apéritifs de prestige pendant votre confinement.</span><i class="far fa-question-circle"></i></li>
            </ul>
        </nav>
        
        <main>
        <div class="conteneur">  

                <section> 
               
                    <div class="gauche">
                        <figure class="img">
                            <!--<img src="<?IMAGE_PATH."i_margarita.jpg"?>" alt = "I-Margarita">-->
                            <img src="./public/img/i_margarita.jpg" alt = "I-Margarita">
                            <figcaption><p>Doré comme une golden.</p> 
                            <p>Sucré comme une pink lady.</p></figcaption>
                        </figure>
                    </div>
                    
                </section>
               
                <section>
                    <div class="droite">

                        <h1>Bienvenue sur votre Forum Appl'ero !</h1>
                        <div id="page">
                            <?= $page ?>
                        </div>
                </section>
                    
        </main>
           
    
    <footer>
        <div id= "think_diff"></div> 
    </footer>

</body>
</html>