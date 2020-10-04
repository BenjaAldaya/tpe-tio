<?php
include_once 'app/models/page.model.php';
include_once 'app/views/page.view.php';

class pageController {

    private $modelpage;
    private $view;

    function __construct() {
        $this->modelpage = new pageModel();
        $this->view = new pageView();
    }

}