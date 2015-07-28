<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="application-name" content="美团网－美团一次 美一次，精品生活">
    <meta name="description" content="三亚美团网-三亚团购首选,专业品质三亚团购网!为您提供三亚美食,电影票,KTV,酒店,旅游等三亚团购大全,三亚团购网站大全三亚美团网,您身边的吃喝玩乐好帮手!">
    <meta name="keywords" content="三亚团购,三亚团购网,三亚团购大全,三亚团购网站,三亚团购网站大全">


    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="css/index.css"/>

    <title>三亚美团</title>
</head>
<body>
<div class="warp hoverNav">
    <?php
        require_once 'header.php';
        
        $dao = new Dao();
        $pageNum = 20;

        $gname = isset( $_GET['w'] ) ? $_GET['w'] : NULL;
        $all_cateid = isset( $_REQUEST["acid"] ) ? $_REQUEST["acid"] : NULL;
        $cateid = isset( $_REQUEST['cid'] ) ? $_REQUEST['cid'] : NULL;
        $rangid = isset( $_REQUEST['rid'] ) ? $_REQUEST['rid'] : NULL;
        $f_cateid = isset( $_REQUEST["fcid"] ) ? $_REQUEST["fcid"] : NULL;
        $f_rangid = isset( $_REQUEST['frid'] ) ? $_REQUEST["frid"] : NULL;
        $cut_page = isset( $_REQUEST['p'] ) ? $_REQUEST['p'] : 0;

        //跳转url
        $url = 'detail2.php';
        $rurl = '';  $curl = '';   $purl = '';

        //加载过滤选项
        $filters = array();
        if( isset($f_cateid) ) $filters['cate'] = $f_cateid;
        if( isset($f_rangid) ) $filters['rang'] = $f_rangid;
        if( isset($gname) ) $filters['name'] = $gname;

        //产品，分类，区域
        $goods = NULL;$f_cates = NULL;$f_rangs = NULL;
        $goodsNum = 0;
        if( isset($gname) ){
            $url .= '?w='.urlencode($gname);

            //$goods = $dao->getLikeRangeGoods($gname);
            //$goods += $dao->getLikeCateGoods($gname);

            $goods = $dao->getFilterGoods( $cut_page*$pageNum,$pageNum, $filters );

            //修复点多的区域时，切换到小的区域，没有内容的bug
            if( count($goods)<1 ) {
                $filters['rang'] = $f_rangid = NULL;
                $goods = $dao->getFilterGoods( $cut_page*$pageNum,$pageNum, $filters );
            }


            $goodsNum = $dao->getFilterGoodsLikeCount( $gname,$filters );
            $f_cates = $dao->getCatesLikeGood( $gname );
            $f_rangs = $dao->getRangesLikeGood( $filters );

        }else if( isset( $cateid) ){
            $url .= '?cid='.$cateid;
            $filters['cate'] = $cateid;
            $goods = $dao->getFilterGoods( $cut_page*$pageNum,$pageNum, $filters );
            $f_rangs = $dao->getRangesLikeGood( $filters );
        }else if( isset( $all_cateid ) ){
            /*$url .= '?acid='.$all_cateid;
            $goods = $dao->getAllCateGoods( $all_cateid );*/
        }

        if( isset($goods) ){
            $rurl = isset($f_cateid) ? $url.'&fcid='.$f_cateid : $url;
            $curl = isset($f_rangid) ? $url.'&frid='.$f_rangid : $url;

            $purl = isset($f_cateid) ? $curl.'&fcid='.$f_cateid : $curl;
        }
        

 /*       $f_cates = NULL;
        $f_rangs = NULL;
        //列出过滤选项，并添加地域信息
        if( isset($goods) ){
            $rurl = isset($f_cateid) ? $url.'&fcid='.$f_cateid : $url;
            $curl = isset($f_rangid) ? $url.'&frid='.$f_rangid : $url;

            $purl = isset($f_cateid) ? $curl.'&fcid='.$f_cateid : $curl;

            $f_rangs = array();
            $_ran = NULL;$_cate = NULL;

            foreach ( $goods as $key=>$good ){
                
                $_ran = $dao->getGoodRange($good['aid']);
                $_cate = $dao->getGoodCate($good['cid']);
                $f_rangs[$_ran['id']] = $_ran['name'];
                $f_cates[$_cate['id']] = $_cate['name'];
                
                if( (!empty($f_cateid) && $f_cateid != $_cate['id']) || (!empty($f_rangid) && $f_rangid!= $_ran['id']) ){
                    $goods[$key] = NULL;
                }else{
                    $good['sts'] = $_ran;
                    $goods[$key] = $good;
                }
            }
        }  */

    ?>
    <article class="content">
        <div class="content-main">
            <header>
                <div class="filters clearfix">
                    <section class="filter-cate clearfix">
                        <header>分类：</header>
                        <ul>
                            <li class="<?php if(!isset($f_cateid)) echo 'active'?>"><a href="<?php echo $curl; ?>">全部</a></li>
                            <?php
                                if( isset($f_cates) ){
                                    foreach( $f_cates as $id=>$name ){
                            ?>
                            <li class="<?php if( $f_cateid == $id ) echo 'active';?>"><a href="<?php echo $curl.'&fcid='.$id ?>"><?php echo $name?></a></li>
                            <?php }
                                }?>
                        </ul>
                    </section>

                    <section class="filter-cate clearfix">
                        <header>区域：</header>
                        <ul>
                            <li class="<?php if(!isset($f_rangid)) echo 'active'?>"><a href="<?php echo $rurl; ?>">全部</a></li>
                            <?php
                                if( isset($f_rangs) ){
                                    foreach( $f_rangs as $id=>$name){
                            ?>
                            <li class="<?php if( $f_rangid==$id ) echo 'active';?>"><a href="<?php echo $rurl.'&frid='.$id ?>"><?php echo $name;?></a></li>
                            <?php }
                                }?>
                        </ul>
                    </section>

                </div>
            </header>
            <section class="cate-list">
                <div class="cate-list-content clearfix">
                    <ul>
                        <?php 
                            if( isset($goods) ){
                                $i=0;
                                foreach ( $goods as $good ){
                                    if( !isset($good) ) continue;
                        ?>
                        <li>
                            <div class="cate-list-info">
                                <a href="#">
                                    <img src="<?php echo $good['img']?>" alt=""/>
                                </a>
                                <div class="cate-list-txt">
                                    <a href="#" class="link">
                                        <h3><?php echo '【'.$good['sn'].'】'.$good['name'];?></h3>
                                        <p><?php echo $good['desc'];?></p>
                                    </a>

                                    <p class="cate-list-info-detail">
                                        <span class="price">￥<?php echo $good['pri']?></span>
                                        <span class="after-price">￥<?php echo $good['b_pri']?></span>
                                        <span class="sales">已售311110</span>
                                    </p>
                                </div>
                            </div>
                            <div class="cate-list-qrcode" style="background-image:url(<?php echo $good['qrcode']?>)"></div>
                        </li>
                        <?php 
                                }
                            }?>
                    </ul>

                </div>
                <footer>
                    <ul class="pages">
                        <?php
                        phpinfo();
                            if( isset($goods) && $goodsNum > $pageNum ){
                                $forleng = ceil( $goodsNum/$pageNum );

                                for ($i = 0; $i < $forleng; $i++) {?>
                                    <li class="<?php if( $i == $cut_page ) echo 'active'?>"><a href="<?php echo $purl.'&p='.$i; ?>"><?php echo $i+1 ?></a></li>
                        <?php   }
                                if( $cut_page+1 < $forleng )
                                    echo '<li class="next-page"><a href="'.$purl.'&p='.($cut_page+1).'">下一页<i class="icon-caret-right"></i></a></li>';
                        }?>
                    </ul>

                </footer>
            </section>

        </div>
    </article>

    <footer>
        <a href="#">微联众网络科技传媒有限公司</a>
    </footer>
</div>
</body>
</html>