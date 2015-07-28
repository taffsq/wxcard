<?php
header("content-type:text/html;charset=utf-8");
$data = isset( $_POST['data'] ) ? $_POST['data'] : null;

/*    if( isset($data) ){

        $data = json_decode($data,true);
        var_dump($data);
        echo 'true';
    }else {*/

        saveJson( $data );
        $data = file_get_contents('data.json');
        $data = json_decode($data, true);

        require_once 'php/db/Dao.php';
        $dao = new Dao();

        $streid = 0;        $addressid = 0;        $img = NULL;        $i = 0;        $pri = 0;
        foreach ($data as $item) {
            preg_match('/¥(\d*)/', $item['pri'], $pri);
            $pri = (int)$pri[1];
            //print_r($item);
            //echo $bpri[1].'<br/>';

            //如果这个商品被有被添加就继续
            if( $dao->checkGoodByName( $item['tit'] ) < 1 ) {
                echo $item['tit'].','.$item['rang'].$dao->checkStreets($item['rang']).'<br/>';
                if ($dao->checkStreets($item['rang']) < 1) $streid = $dao->insertStreets($item['rang'], 1);
                else $streid = $dao->getStreetsByName($item['rang']);

                $addressid = $dao->insertAddress($item['tit'] . '的地址', $streid);

                $img = 'images/goods/' . (new DateTime())->getTimestamp() . $i++ . '.jpg';
                file_put_contents($img, file_get_contents($item['img']));

                $cateid = $dao->getCateId( $item['cate'] );

                $dao->insertGood($item['tit'], $img, $item['tit'].'的描述', ($pri+rand(10,30)), $pri, '138384383', $addressid, $cateid, 'images/qrcode_test.jpg', (new DateTime())->format('Y-m-d H:i:s'));
            }

        }
 //   }

function saveJson( $data ){
    file_put_contents('data.json',$data );
}

function getHomeData( $data ){
    $dao = new Dao();


    $streid = 0;
    $addressid = 0;
    $img = NULL;
    $i = 0;
    foreach ($data as $item) {
        //print_r($item);
        preg_match('/【([^\d]*)】/', $item['tit'], $range);
        preg_match('/】(.*)/', $item['tit'], $tit);
        preg_match('/¥(\d*)/', $item['bPri'], $bpri);

        echo '添加：'.$dao->checkGoodByName( $tit[1] ).'__';
        echo $tit[1];
        echo '<br/>';

        if (isset($range[1]))
            $range = $range[1];
        else $range = '河西区';

        //如果这个商品被有被添加就继续
        if( $dao->checkGoodByName( $tit[1] ) < 1 ){
            if ($dao->checkStreets($range) < 1) $streid = $dao->insertStreets($range, 1);
            else $streid = $dao->getStreetsByName($range);

            $tit = $tit[1];
            $addressid = $dao->insertAddress($tit . '的地址', $streid);

            $img = 'images/goods/' . (new DateTime())->getTimestamp() . $i . '.jpg';
            file_put_contents($img, file_get_contents($item['img']));
            $dao->insertGood($tit, $img, $item['desec'], $bpri[1], $item['pri'], '13838438', $addressid, 1, 'images/qrcode_test.jpg', (new DateTime())->getTimestamp());

            echo $streid;
        }

        $i++;
    }
}

?>