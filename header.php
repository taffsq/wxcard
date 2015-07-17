<?php 
    require_once 'php/db/Dao.php';
    $dao = new Dao();
?>
<header class="">
    <script src="js/index.js"></script>
    <div class="head-main clearfix">
        <div class="head-logo"><a href="#"><h1>摇一摇</h1></a></div>
        <div class="city-box">
            <h2 class="city-name">三亚</h2>
            <span class="city-link">【<a class="link" href="#">切换城市</a>】</span>
        </div>
        <div class="search-box">
            <div class="search-option">
                商品
            </div>
            <form action="./detail.php" method="get" onsubmit="return checkForm( this )">
                <input class="search-txt" type="text" name="w" maxlength="20" autocomplete="false"/>
                <button class="search-submit" type="submit">搜索</button>
            </form>
        </div>
    </div>

    <nav class="head-main-nav clearfix">
        <ul class="head-nav-ul">
            <li class="all-cate">
                <h3>全部分类<i class="arrow icon-angle-down"></i></h3>

                <ul class="level2-cate">
                    <?php
                    $allCates = $dao->getAllCates();

                    $cates = null;
                    foreach (  $allCates as $allCate){
                        ?>
                        <li>
                            <div class="level12-cate-main">
                                <a class="link" href="#"><?php echo $allCate['name']?></a>
                                <div class="extra">
                                    <?php
                                    /* <a href="#" class="link">代金券</a>
                                    <a href="#" class="link">自助餐</a>
                                    <i class="icon-angle-right"></i> */
                                    ?>
                                </div>
                                <div class="level13-cate">
                                    <?php
                                    $cates = $dao->getCates($allCate['id']);


                                    $i=1;
                                    $str = '';
                                    $column = 16;
                                    foreach ( $cates as $cate ){
                                        if( $i == 1 )
                                            $str .= '<ul><header><a href="#">'.(strlen($str)>1?"":$allCate['name']).'</a></header>';
                                        $str .= '<li><a href="#">'.$cate['name'].'</a></li>';

                                        if( $i == $column ){
                                            $str .= '</ul>';
                                            $i = 1;
                                        }else $i++;
                                    }

                                    echo $str;
                                    ?>
                                </div>
                            </div>
                        </li>
                        <?php
                    };?>
                </ul>
            </li>
            <li><a href="./">首页</a></li>
            <li><a href="#">今日新单</a></li>
            <li><a href="#">身边团购</a></li>
            <li><a href="#">购物</a></li>
            <li><a href="#">身边外卖</a></li>
        </ul>
    </nav>
</header>