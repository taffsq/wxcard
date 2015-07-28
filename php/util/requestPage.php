<?php
/**
 * Created by PhpStorm.
 * User: tag
 * Date: 2015/7/19
 * Time: 16:27
 */
header("content-type:text/html;charset=utf-8");

$url = $_GET['url'];
//$url = "http://sanya.meituan.com/category/daijinquan_meishi?mtt=1.index%2Ffloornew.nc.6.icfu9xso";
$contents = file_get_contents($url);

echo $contents;

/*$contents = file_get_contents('http://sanya.meituan.com/deal/30609460.html?mtt=1.index%2Ffloornew.im.9.icfnlhu2');
$src = '<div class="biz-item field-group" title="河西区椰风巷55号（第一市场旁）" id="yui_3_16_0_1_1437622979497_2729"><label class="title-label" id="yui_3_16_0_1_1437622979497_2732">地址：</label>河西区椰风巷55号（第一市场旁）</div>';
$src2 = '<div class="biz-item" id="yui_3_16_0_1_1437622979497_2733"><span class="title-label">电话：</span>18601061156/15997926369</div>';
echo $contents;
preg_match('/<div class="biz-item field-group" title="([\s\S]*?)" id/',$contents,$range);
preg_match('/<span class="title-label">电话：<\/span>([\s\S]*?)<\/div>/',$contents,$tel);

print_r($range);
echo '____<br/>';
print_r($tel);
*/?>
<script src="http://weilianzhong.cn/project/bmwmini/js/jquery.min.js"></script>
<script>

    $(function(){
            var data = [];
        /*$('.deal-list--floor-new .deal-tile').each( function(ix,ele){
            data.push({
                tit:$(this).find(".xtitle").text(),
                desec:$(this).find(".short-title").text(),
                pri:$(this).find(".price strong").text(),
                bPri:$(this).find(".value .num").text(),
                img:$(this).find(".J-webp").attr('data-src')
            });
        } );*/


        var i=0;
        window.focus();
        timeOut();

        function trace(){
            $('.J-scrollloader .log-acm-viewed').each( function(ix,ele) {

                src = $(this).find('.J-webp').attr('src');
            /*    console.log( $(this).find(".basic a.link").text(),
                    $(this).find(".extra a").eq(0).text(),$(this).find(".extra a").eq(1).text(),
                    $(this).find(".price .value").text(),
                    src );
*/
                data.push( {
                    tit:$(this).find(".basic a.link").text(),
                    cate:$(this).find(".extra a").eq(0).text(),
                    rang:$(this).find(".extra a").eq(1).text(),
                    pri:$(this).find(".price .value").text(),
                    img:src
                });
            });

            $.post( 'http://localhost:88/wxcard/grawlData.php',{'data': JSON.stringify(data)},function(msg){
                console.log( msg );
            });

            console.log( data );
            console.log( $('.J-scrollloader .log-acm-viewed').length );
        }

        function timeOut(){
            window.scrollTo(0,i++*300);

            var flag = true;
            var src = undefined;
            $('.J-scrollloader .log-acm-viewed').each( function(ix,ele){
                src = $(this).find('.J-webp').attr('src');
                if( !src || src=='undefined ' || src==undefined  ) flag = false;
            } );

            if( flag == true && $('.J-scrollloader .log-acm-viewed').length>0 ) {
                trace();
                return;
            }
            setTimeout( timeOut,1000 );
        }

/*        $.post( 'http://localhost:88/wxcard/grawlData.php',{'data': JSON.stringify(data)},function(msg){
            console.log( msg );
        });*/

       // console.log( data );
    } )
</script>
