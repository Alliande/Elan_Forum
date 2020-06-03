<h1><?= App\Session::getUser() ?>, la liste de vos messages<h1>


<div id = messages>
<table>
 <thead>
 </thead>
 
<?php
       
        foreach($data['messages'] as $message){ ?>
              
              <tbody><tr>
                       <td>Auteur : <?=$message->getUser() ?></td><td>Date de création : <?= $message->getCreationDate("d-m-Y") ?> </td></tr>
               <tr><td colspan="2"><?= $message?></td></tr>
               </tr></tbody>
              
       <?php } ?>
       
               
               </table>
</div>
               