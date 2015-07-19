<?php
/**
 * Created by PhpStorm.
 * User: tag
 * Date: 2015/7/19
 * Time: 16:27
 */

    $arr = array(1,2,3,4,5);

    for( $i=0; $i<count($arr); $i++){
        if( $i==2 ) array_splice($arr,$i,1);
        echo $arr[$i];
    }

?>