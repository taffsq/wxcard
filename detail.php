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

        $gname = isset( $_GET['w'] ) ? $_GET['w'] : NULL;
        $all_cateid = isset( $_REQUEST["acid"] ) ? $_REQUEST["acid"] : NULL;
        $cateid = isset( $_REQUEST["cid"] ) ? $_REQUEST["cid"] : NULL;
        $rangid = isset( $_REQUEST['rid'] ) ? $_REQUEST["rid"] : NULL;

        $goods = NULL;
        
/*        if( isset($cateid) ){
            $goods = $dao->getCateGoods($cateid);
        }else if( isset($all_cateid) ) {
            
        }*/

        $cates = NULL;
        $rangs = NULL;
        if( isset($gname) ){
            $rangs = $dao->getRangesLikeGood($gname);
            $cates = $dao->getCatesLikeGood($gname);
            $goods = $dao->getGoodsLike( $gname );
        }
    ?>
    <article class="content">
        <div class="content-main">
            <header>
                <div class="filters clearfix">
                    <section class="filter-cate clearfix">
                        <header>分类：</header>
                        <ul>
                            <li class="<?php if(!isset($cateid)) echo 'active'?>"><a href="#">全部</a></li>
                            <?php
                                if( isset($cates) ){
                                    foreach( $cates as $cate){
                            ?>
                            <li><a href="#" class="<?php if( isset($cateid) &&  $cateid == $cate['id'] ) echo 'active';?>"><?php echo $cate['name']?></a></li>
                            <?php }
                                }?>
                        </ul>
                    </section>

                    <section class="filter-cate clearfix">
                        <header>区域：</header>
                        <ul>
                            <li class="<?php if(!isset($rangid)) echo 'active'?>"><a href="#">全部</a></li>
                            <?php
                                if( isset($rangs) ){
                                    foreach( $rangs as $rang){
                            ?>
                            <li><a href="#" class="<?php if( isset($rangid) && $rangid=$rang['id'] ) echo 'active';?>"><?php echo $rang['name']?></a></li>
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
                                foreach ( $goods as $good ){
                                    //print_r( $good );
                        ?>
                        <li>
                            <div class="cate-list-info">
                                <a href="#">
                                    <img src="<?php echo $good['img']?>" alt=""/>
                                </a>
                                <div class="cate-list-txt">
                                    <a href="#" class="link">
                                        <h3><?php echo '【'.$good['sts'].'】'.$good['name'];?></h3>
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
                <footer><a href="#">更多美食团购，请点击查看<i class="icon-angle-right"></i></a></footer>
            </section>

        </div>
    </article>

    <footer>
        <a href="#">微联众网络科技传媒有限公司</a>
    </footer>
</div>
</body>
</html>