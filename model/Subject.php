<?php
namespace Model; 

use App\AbstractEntity;
class Subject extends AbstractEntity{
    private $id;
    private $title;
    private $status; 
    private $creationDate;
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

    public function getTitle()
    {
        return $this->title;
    }
    
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }
    public function getStatus()
    {
        return $this->status;
    }
    
    public function setStatus($status)
    {
        $this->status = $status;

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
        return $this->title;
   }
}
