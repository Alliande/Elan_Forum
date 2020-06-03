<?php
    namespace Controller;

    use Model\MessageManager;
    use Model\SubjectManager;
    use App\Session;
    use App\Router;

    class MessageController 
    {        /**
         * Afficher tous les subjects
         */
        public function allMessages(){            
            $manMessages = new MessageManager();
            $messages = $manMessages->findAllMessages();
                        return [
                "view" => "messages.php",
                "data" => [
                    "messages" => $messages
                ],
            ];
        }

        //Afficher tous les messages d'un même sujet
        public function messagesBySubject(){  
            $manSubject = new SubjectManager();          
            $manMessages = new MessageManager();

            $subject = $manSubject->findOneById($_GET['id']);
            $messages = $manMessages->findBySubject($_GET['id']);
    
            return [
            "view" => "messages.php",
            "data" => ["messages" => $messages, "subject" => $subject]
            ];
        }

     //Afficher tous les messages d'un même auteur

        public function messagesByAuthor(){  
            $manSubject = new SubjectManager();          
            $manMessages = new MessageManager();

            $subject = $manSubject->findOneByUser_Id(Session::getUser()->getId());
            $messages = $manMessages->findByUser(Session::getUser()->getId());
    
            return [
            "view" => "messagesperso.php",
            "data" => ["messages" => $messages, "subject" => $subject],
           
            ];
        }
        //Enregistrement d'un message

        public function registerMessage() {
            if(!empty($_POST)){
                $message = filter_input(INPUT_POST, "message", FILTER_SANITIZE_STRING);
                $subject_id = filter_input(INPUT_POST, "subject_id", FILTER_VALIDATE_INT);
                $user_id = filter_input(INPUT_POST, "user_id", FILTER_VALIDATE_INT);
                $model = new MessageManager();
                $model->addMessage($message, $subject_id, $user_id);
                    header("Location:?ctrl=message&method=messagesBySubject&id=$subject_id");
            
            }
        }


        //Modification d'un message

        public function editMessage() {

            $manMessages = new MessageManager();
            $messages = $manMessages->findOneById($_GET['id']);
    
            return [
            "view" => "editMessage.php",
            "data" => ["messages" => $messages]
            ];
        }

        public function updateMessage() {
            if(!empty($_POST)){
                $message = utf8_encode (filter_input(INPUT_POST, "message", FILTER_SANITIZE_STRING));
                $id = filter_input(INPUT_POST, "id", FILTER_VALIDATE_INT);
                $subject_id = filter_input(INPUT_POST, "subject_id", FILTER_VALIDATE_INT);
                $model = new MessageManager();
                $model->updateMessageContent($message, $id);
                header("Location:?ctrl=message&method=messagesBySubject&id=$subject_id");
        
            }


        }


        public function deleteMessage() {
            if(!empty($_GET)){
                $model = new MessageManager();
                $id= $_GET["id"];
                $subject_id = $_GET["subject_id"];
                $model->deleteOneMessage($id);
                header("Location:?ctrl=message&method=messagesBySubject&id=$subject_id");
            }
        }
}