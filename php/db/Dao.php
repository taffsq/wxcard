<?php
class Dao{
    public function getAllCates(){
        $db = $this->getDb();
        $sql = "select * from all_category_table";

        $arr = array();
        $item = null;
        if( (boolean)$result = $db->query( $sql ) ){
            while( (boolean)$item=$result->fetch_assoc() )
                $arr[] = array('id'=>$item['all_category_id'],'name'=>$item['all_category_name'] );

            $result->close();
        }

        $db->close();

        return $arr;
    }

    public function getCates( $allCateId ){
        $db = $this->getDb();
        $sql = "SELECT * FROM `category_table` WHERE all_category_id=?";

        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$allCateId);
            $stmt->execute();
            
            $_id = NULL; $_name = NULL; $_allid = NULL;
            $stmt->bind_result($_id,$_name,$_allid);

            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name );
            
            $stmt->close();    
        }

        $db->close();

        return $arr;
    }

    public function getGoodsLike( $val ){
        $db = $this->getDb();
        $sql = "select gs.*,s.streets_name from streets_table s, address_table a,(SELECT * FROM goods_table g where g.goods_name like ?)gs where s.streets_id = a.streets_id and gs.address_id = a.address_id;";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param("s",$val);
            $stmt->execute();
        
            $_id = NULL; $_name = NULL; $_allid = NULL;$_desc = NULL;$_b_pri = NULL;$_pri = NULL;$_tel = NULL;$_a_id = NULL;$_cae_id = NULL;$_qr = NULL;$_at = NULL; $_sts = NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_b_pri,$_pri,$_tel,$_a_id,$_cae_id,$_qr,$_at,$_sts);

            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_b_pri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_a_id,'cateid'=>$_a_id,'qrcode'=>$_qr,'sts'=>$_sts );
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }
    public function getCatesLikeGood( $val ){
        $db = $this->getDb();
        $sql = "SELECT DISTINCT c.category_id,c.catagory_name FROM goods_table g,category_table c where c.category_id = g.category_id and g.goods_name like ?";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param('s',$val);
            $stmt->execute();
        
            $_id = NULL; $_name = NULL;
            $stmt->bind_result($_id,$_name);

            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name );
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }   
    public function getRangesLikeGood( $val ){
        $db = $this->getDb();
        $sql = "SELECT s.streets_id,s.streets_name FROM	streets_table s,	(SELECT	DISTINCT streets_id	FROM goods_table g,address_table a where g.goods_name LIKE ? and a.address_id=g.address_id)gs WHERE	s.streets_id = gs.streets_id";

        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param('s',$val);
            $stmt->execute();

            $_id = NULL; $_name = NULL;
            $stmt->bind_result($_id,$_name);

            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name );

            $stmt->close();
        }

        $db->close();

        return $arr;

    }
    public function getCateGoods( $cateid ){
        $db = $this->getDb();
        $sql = "SELECT * FROM `goods_table`  WHERE category_id=?";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$cateid);
            $stmt->execute();
        
            $_id = NULL; $_name = NULL; $_allid = NULL;$_desc = NULL;$_b_pri = NULL;$_pri = NULL;$_tel = NULL;$_a_id = NULL;$_cae_id = NULL;$_qr = NULL;$_at = NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_b_pri,$_pri,$_tel,$_a_id,$_cae_id,$_qr,$_at);
        
            $i=0;
            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_b_pri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_a_id,'cateid'=>$_a_id,'qrcode'=>$_qr );
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;      
    }
    //获取数据库
    private function getDb(){
        $dbPara = $this->getConfigPara()['db'];

        @$db = new \mysqli($dbPara['url'],$dbPara['user'],$dbPara['password'],$dbPara['dbname'],$dbPara['port']);
        $db->query("set names utf8");

        if( mysqli_connect_errno() )
            throw new \Exception("db load error");
        else return $db;
    }

    //获取参数
    public function getConfigPara(){
        $ini = parse_ini_file("config.ini",true);
        return $ini;
    }
}?>