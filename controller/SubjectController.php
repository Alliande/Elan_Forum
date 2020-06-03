<?php
    namespace Controller;

    use Model\SubjectManager;
    use Controller\MessageController;
    use App\Session;
    use App\Router;

    class SubjectController 
    {        /**
         * Afficher tous les subjects
         */
        public function allSubjects(){            
            $manSubjects = new SubjectManager();
            $subjects = $manSubjects->findAllSubjects();
                        return [
                "view" => "subjects.php",
                "data" => [
                    "subjects" => $subjects
                ],
            ];
        }

        public function createSubject(){

            $title = filter_input(INPUT_POST, "title");
            $user_id = filter_input(INPUT_POST, "user_id");
            $model = new SubjectManager();
            
            $subject_id=$model->addSubject($title, $user_id);
            
            header("Location:?ctrl=message&method=messagesBySubject&id=$subject_id");
            
        }
//Bon je m'arrête là, il y a un souci par là
        public function lockSubject(){
            $subject_id= $_GET("id");
            $model = new SubjectManager();
            $model->lockOneSubject($subject_id);
            return $this->allSubjects();
        }
}