<?php
    namespace Model;
    
    use App\AbstractManager;

    class SubjectManager extends AbstractManager
    {
        private static $classname = "Model\Subject"; //C'est le FQCN parce que la classe est dans une string

        public function __construct(){
            self::connect(self::$classname);
        }

        public function findAllSubjects(){
            $sql = "SELECT * FROM subject";

            return self::getResults(
                self::select($sql, null, true),
                self::$classname
            );
        }

        public function findOneById($id){
            $sql = "SELECT * 
                        FROM subject
                        WHERE id = :id";
            return self::getOneOrNullResult(
                self::select($sql, 
                    ["id" => $id], 
                    false
                ), 
                self::$classname
            );
        }

        public function findOneByUser_Id($user_id){
            $sql = "SELECT * 
                        FROM subject
                        WHERE user_id = :user_id";
            return self::getOneOrNullResult(
                self::select($sql, 
                    ["user_id" => $user_id], 
                    false
                ), 
                self::$classname
            );
        }

        public function addSubject($title, $user_id){
            $sql = "INSERT INTO subject (title, user_id) VALUES (:title, :user_id)";

            return self::create($sql, [
                    'title' => $title,
                    'user_id' => $user_id
                  
            ]);
    
        }

        public function lockOneSubject($subject_id){
            $sql = "UPDATE subject SET status = '2' WHERE id=:id";
            return self::create($sql, [
                'id'=>$subject_id
            ]);
        }
      
    }