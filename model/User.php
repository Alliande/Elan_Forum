<?php
    namespace Model;

    use App\AbstractEntity;

    class User extends AbstractEntity
    {
        private $id;
        private $username;
        private $password;
        private $creationDate;
  

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
         * Get the value of username
         */ 
        public function getUsername()
        {
                return $this->username;
        }

        /**
         * Set the value of username
         *
         * @return  self
         */ 
        public function setUsername($username)
        {
                $this->username = $username;

                return $this;
        }

        /**
         * Get the value of password
         */ 
        public function getPassword()
        {
                return $this->password;
        }

        /**
         * Set the value of password
         *
         * @return  self
         */ 
        public function setPassword($password)
        {
                $this->password = $password;

                return $this;
        }

        /**
         * Get the value of created_at
         */ 
        public function getCreationDate($format)
        {
             return $this->creationDate->format($format);
        }

        /**
         * Set the value of created_at
         *
         * @return  self
         */ 
        public function setCreationDate($creationDate)
        {
                $this->creationDate = new \DateTime($creationDate);

                return $this;
        }

        public function __toString(){
            return $this->username;
        }

        /**
         * Get the value of grade
         */ 
        public function getGrade()
        {
                return $this->grade;
        }

        /**
         * Set the value of grade
         *
         * @return  self
         */ 
        public function setGrade($grade)
        {
                $this->grade = $grade;

                return $this;
        }
    }