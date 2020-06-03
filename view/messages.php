<h1>Les messages du sujet : <?=$data['subject']?> <h1>


<div id = "messages">
<?php
if ($data['messages']){
        ?>
<table>
 <thead>
 </thead>
 
<?php
        

                foreach($data['messages'] as $message){ ?>
              
                        <tbody><tr>
                       <td>Auteur : <?=$message->getUser() ?></td>
                       <td>Date de création : <?= $message->getCreationDate("d-m-Y") ?> </td>
                       <td>Citer</td><td><a href="?ctrl=message&method=editMessage&id=<?=$message->getId()?>">Modifier</td>
                       <td><a href="?ctrl=message&method=deleteMessage&id=<?=$message->getId()?>&subject_id=<?=$data['subject']->getId()?>">Supprimer</td>
                        </tr>
                        <tr><td colspan="5"><?= $message?></td></tr>
                        </tr></tbody>
              
<?php           } 
?>
       
               
               </table>

                <?php   }
                ?>
</div>
               <h1><?= App\Session::getUser() ?>, vous pouvez créer un nouveau message</h1>
    
               <script>
      tinymce.init({
        selector: '#message'
      });
    </script>

<form action="?ctrl=message&method=registerMessage&id=<?=$data['subject']->getId()?>" method="post">
    <p><textarea  id="message" name="message"></textarea></p>
    <p><input type="hidden" name = "subject_id" value = <?=$data['subject']->getId()?>></p>
    <p><input type ="hidden" name = "user_id" value = <?= App\Session::getUser()->getId() ?>></p>
    <p><input type="submit" value="Enregistrement du message"></p>
</form>