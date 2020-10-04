<?php
require_once('libs/smarty/libs/Smarty.class.php');

class pageView{

    function showHome() {
        $smarty = new Smarty();
        $smarty -> display('templates/index.tpl');
    }

    function showInfo() {
        $smarty = new Smarty();
        $smarty -> display('templates/info.tpl');
    }

    function showRegister() {
        $smarty = new Smarty();
        $smarty -> display('templates/registro.tpl');
    }

    function showUsersVip() {
        $smarty = new Smarty();
        $smarty -> display('templates/usuariosvip.tpl');
    }

    // function showError($error) {
    //     $smarty=assign('error', $error);
    // }
}