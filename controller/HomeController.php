<?php
    namespace Controller;

    use App\Session;
    use Model\UserManager;
    use Model\GradeManager;

    class HomeController
    {
        public function index(){

            Session::authenticationRequired("ROLE_USER");

            return [
                "view" => "home.php", 
                "data" => null
            ];
        }

        public function listUsers(){

            Session::authenticationRequired("ROLE_ADMIN");

            $grademodel = new GradeManager();
            $usermodel = new UserManager();
            $grades = $grademodel->findAll();
            foreach($grades as $grade){
                $users = $usermodel->findByGrade($grade->getId());
                $grade->setUsers($users);
            }
            
            return [
                "view" => "users.php", 
                "data" => [
                    "grades" => $grades,
                    
                ]
            ];
        }
    }