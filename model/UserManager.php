<?php
    namespace Model;
    
    use App\AbstractManager;

    class UserManager extends AbstractManager
    {
        private static $classname = "Model\User"; //C'est le FQCN parce que la classe est dans une string

        public function __construct(){
            self::connect(self::$classname);
        }

        public function findUser($username){
            
            $sql = "SELECT * FROM user WHERE username = :username";

            return self::getOneOrNullResult(
                self::select($sql, ['username' => $username], false),
                self::$classname
            );
        }

        public function findId($username){
            
            $sql = "SELECT id FROM user WHERE username = :username";

            return self::getOneOrNullResult(
                self::select($sql, ['username' => $username], false),
                self::$classname
            );
        }

        public function addUser($username, $email, $hash){
            $sql = "INSERT INTO user (username, email, password) VALUES (:username, :email, :password)";

            return self::create($sql, [
                    'username' => $username,
                    'email' => $email,
                    'password' => $hash
            ]);
        }

        public function findAll(){
            $sql = "SELECT * FROM user";

            return self::getResults(
                self::select($sql, null, true),
                self::$classname
            );
        }

        public function findOneById($id){
            $sql = "SELECT * 
                        FROM user
                        WHERE id = :id";
            return self::getOneOrNullResult(
                self::select($sql, 
                    ["id" => $id], 
                    false
                ), 
                self::$classname
            );
        }

 
    }