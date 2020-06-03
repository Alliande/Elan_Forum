<h1><?= App\Session::getUser() ?>, vous pouvez modifier le message</h1>
  
<script>
tinymce.init({
selector: '#message'
});
</script>

<form action="?ctrl=message&method=updateMessage" method="post">
<p><textarea  id="message" name="message"> <?=$data["messages"]->getMessage()?> </textarea></p>
<p><input type ="hidden" name = "id" value = <?=$data["messages"]->getId()?>></p>
<p><input type="hidden" name = "subject_id" value = <?=$data["messages"]->getSubject()->getId()?>></p>
    <p><input type="submit" value="Modification du message"></p>
</form>




