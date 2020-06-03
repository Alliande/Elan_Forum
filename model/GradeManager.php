<?php
    namespace Model;
    
    use App\AbstractManager;

    class GradeManager extends AbstractManager
    {
        private static $classname = "Model\Grade"; //C'est le FQCN parce que la classe est dans une string

        public function __construct(){
            self::connect(self::$classname);
        }

        public function findOneById($id){
            $sql = "SELECT * FROM grade WHERE id = :id";

            return self::getOneOrNullResult(
                self::select($sql, ['id' => $id], false),
                self::$classname
            );
        }

        public function findAll(){
            $sql = "SELECT * FROM grade";

            return self::getResults(
                self::select($sql, null, true),
                self::$classname
            );
        }
    }