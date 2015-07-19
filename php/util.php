<?php
/**
 * Created by PhpStorm.
 * User: tag
 * Date: 2015/7/19
 * Time: 16:13
 */

    require_once 'db/Dao.php';



    function goodsMap( $tar ){
        $dao = new Dao();
        $tar['sts'] = $dao->getGoodRange( $tar['aid'] );
    }
?>