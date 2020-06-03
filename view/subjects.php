<h2>Liste des sujets</h2>

<div id="subjects">
<table>
 <thead>
 </thead>
 <tbody>

<?php
        foreach($data['subjects'] as $subject){ ?>
              
              <tr>
               <td>
                        <?php 
                                if($subject->getStatus()==1){
                                       ?>
                                       <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M.5 9a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-7a2 2 0 0 1-2-2V9z"/>
  <path fill-rule="evenodd" d="M8.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
</svg>
                        <?php         }    
                                else {
                                        ?>
                                        <svg class="bi bi-lock-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <rect width="11" height="9" x="2.5" y="7" rx="2"/>
  <path fill-rule="evenodd" d="M4.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z"/>
</svg>

                        <?php
                                }   
                                
                               
                        ?>

               </td>
               <td><a href="?ctrl=message&method=messagesBySubject&id=<?=$subject->getId()?>" ><?= $subject ?></a></td>
               <td>Auteur : <?= $subject->getUser() ?></td>
               <td>Date de création : <?= $subject->getCreationDate("d-m-Y") ?> </td>
               <td><a href="?ctrl=subject&method=lockSubject&id=<?=$subject->getId()?>" >Verrouiller</td>
               </tr>
             
       <?php } ?>
       
               </tbody>
               </table>
        </div>
               <h1><?= App\Session::getUser() ?>, vous pouvez créer un nouveau sujet</h1>

<form action="?ctrl=subject&method=createSubject" method="post">
    <p><input placeholder="Titre du sujet" type="text" name="title"></p>
    <p><input type ="hidden" name = "user_id" value = <?= App\Session::getUser()->getId() ?>></p>
    <p><input type="submit" value="Création du sujet"></p>
</form>