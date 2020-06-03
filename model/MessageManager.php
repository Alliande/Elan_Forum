<?php
    namespace Model;
    
    use App\AbstractManager;

    class MessageManager extends AbstractManager
    {
        private static $classname = "Model\Message"; //C'est le FQCN parce que la classe est dans une string

        public function __construct(){
            self::connect(self::$classname);
        }

        public function findAllMessages(){
            $sql = "SELECT * FROM message";

            return self::getResults(
                self::select($sql, null, true),
                self::$classname
            );
        }

        public function findOneById($id){
            $sql = "SELECT * 
                        FROM message
                        WHERE id = :id";
            return self::getOneOrNullResult(
                self::select($sql, 
                    ["id" => $id], 
                    false
                ), 
                self::$classname
            );
        }

        // méthode qui trouve les messages d'un subject_id précis, 
        
        public function findBySubject($idsubject){
            $sql= "SELECT id, message, creationDate, subject_id, user_id FROM message WHERE subject_id=:id";
            return self::getResults(
                self::select($sql, ['id'=>$idsubject], true),
                self::$classname
            );
        }

        public function findByUser($user_id){
            $sql= "SELECT id, message, creationDate, subject_id, user_id FROM message WHERE user_id=:user_id";
            return self::getResults(
                self::select($sql, ['user_id'=>$user_id], true),
                self::$classname
            );
        }
      
        public function addMessage($message, $subject_id, $user_id){
            $sql = "INSERT INTO message (message, subject_id, user_id ) VALUES (:message, :subject_id, :user_id)";

            return self::create($sql, [
                    'message' => $message,
                    'subject_id' => $subject_id,
                    'user_id' => $user_id
            ]);
            
        }

        public function updateMessageContent($message, $id){
            $sql = "UPDATE message SET message = :message WHERE id=:id";
            return self::create($sql, [
                'message' => $message,
                'id' => $id

        ]);

        }

        public function deleteOneMessage($id){
            $sql= "DELETE FROM message WHERE id=:id";
            return self::create($sql, [
                'id'=>$id
            ]);
        }



    }