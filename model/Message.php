<?php
namespace Model; 

use App\AbstractEntity;
class Message extends AbstractEntity{
    private $id;
    private $message;
    private $creationDate; 
    private $subject;
    private $user;

    public function __construct($data){
        parent::hydrate($data, $this);
    }

    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    public function getMessage()
    {
        return $this->message;
    }
    
    public function setMessage($message)
    {
        $this->message = $message;

        return $this;
    }

        public function getCreationDate($format)
    {
        return $this->creationDate->format($format);

    }    
    
    public function setCreationDate($creationDate)
    {
        $this->creationDate = new \DateTime($creationDate);        
        return $this;
    }

    public function getSubject()
    {
        return $this->subject;
    }
    
    public function setSubject($subject)
    {
        $this->subject = $subject;

        return $this;
    }


    public function getUser()
    {
        return $this->user;
    }

    public function setUser($user)
    {
        $this->user = $user;

        return $this;
    }
    
    public function __toString(){
        return $this->message;
   }
}
