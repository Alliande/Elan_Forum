<?php
    namespace Model;

    use App\AbstractEntity;

    class Grade extends AbstractEntity{

        private $id;
        private $name;
        private $points;
        private $users;

        public function __construct($data){
            parent::hydrate($data, $this);
        }
        
        /**
         * Get the value of id
         */ 
        public function getId()
        {
            return $this->id;
        }

        /**
         * Set the value of id
         *
         * @return  self
         */ 
        public function setId($id)
        {
            $this->id = $id;

            return $this;
        }

        /**
         * Get the value of name
         */ 
        public function getName()
        {
            return $this->name;
        }

        /**
         * Set the value of name
         *
         * @return  self
         */ 
        public function setName($name)
        {
            $this->name = $name;

            return $this;
        }

        /**
         * Get the value of points
         */ 
        public function getPoints()
        {
            return $this->points;
        }

        /**
         * Set the value of points
         *
         * @return  self
         */ 
        public function setPoints($points)
        {
            $this->points = $points;

            return $this;
        }

        /**
         * Get the value of users
         */ 
        public function getUsers()
        {
                return $this->users;
        }

        /**
         * Set the value of users
         *
         * @return  self
         */ 
        public function setUsers($users)
        {
                $this->users = $users;

                return $this;
        }
    }