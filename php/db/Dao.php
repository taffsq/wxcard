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

    public function getGoodsLike( $val,$start,$leng ){
        $db = $this->getDb();
        $sql = "SELECT	ga.*,s.streets_name FROM streets_table s,(SELECT g.* FROM goods_table g	WHERE goods_name LIKE ?) ga,address_table a WHERE a.address_id = ga.address_id and a.streets_id = s.streets_id LIMIT ?,?";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param("sii",$val,$start,$leng);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL; $_sname=NULL; 
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime,$_sname);

            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime,'sn'=>$_sname);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }
    public function getFilterGoods( $start,$leng,$filters ){
        $db = $this->getDb();
        
        //加载过滤选项。
        $c_f = ''; $r_f = ''; $n_f = '';
        if( isset( $filters['cate'] ) ) $c_f = 'category_id='.$filters['cate'];
        if( isset( $filters['rang'] ) ) $r_f = 's.streets_id = '.$filters['rang'].' AND ';
        if( isset( $filters['name'] ) ) $n_f = 'goods_name LIKE ?';
        
        if( !empty($n_f) && !empty($c_f) ) $c_f.=' AND ';
        
        
        //将过滤选项组合
        $sql = "SELECT	ga.*,s.streets_name FROM streets_table s,(SELECT g.* FROM goods_table g	WHERE ".
            $c_f.
            $n_f.") ga,address_table a WHERE ".
            $r_f.
            "a.address_id = ga.address_id and a.streets_id = s.streets_id LIMIT ?,?";

        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            ///在为like的特殊，所以必须另外描述。。
             if( !empty($n_f) ) {
                 $n_f = '%'.$filters['name'].'%';
                 $stmt->bind_param("sii",$n_f,$start,$leng);
            }else  $stmt->bind_param("ii",$start,$leng);
            
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL; $_sname=NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime,$_sname);
        
            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime,'sn'=>$_sname);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }
    public function getFilterGoodsLikeCount( $val,$filters ){
        $db = $this->getDb();
        
        //加载过滤选项。
        $c_f = ''; $r_f = '';
        if( isset( $filters['cate'] ) ) $c_f = 'category_id='.$filters['cate'].' AND ';
        if( isset( $filters['rang'] ) ) $r_f = 's.streets_id = '.$filters['rang'].' AND ';
         
        //将过滤选项组合
        $sql = "SELECT	count(*) FROM streets_table s,(SELECT g.address_id FROM goods_table g	WHERE ".
            $c_f.
            "goods_name LIKE ?) ga,address_table a WHERE ".
            $r_f.
            "a.address_id = ga.address_id and a.streets_id = s.streets_id";
        
        
        $num = 0;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param("s",$val);
            $stmt->execute();
        
            $stmt->bind_result($num);
        
            $stmt->fetch();
            $stmt->close();
        }
        
        $db->close();
        return $num;
    }
    public function getCatesLikeGood( $val ){
        $db = $this->getDb();
        $sql = "SELECT DISTINCT c.category_id,c.catagory_name FROM	( select category_id from goods_table g where g.goods_name LIKE ? ) g,category_table c WHERE c.category_id = g.category_id";
    
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param('s',$val);
            $stmt->execute();
    
            $_id = NULL; $_name = NULL;
            $stmt->bind_result($_id,$_name);
    
            while( $stmt->fetch() )
                $arr[$_id] = $_name;
    
            $stmt->close();
        }
    
        $db->close();
    
        return $arr;
    }
    public function getRangesLikeGood( $filters ){
        $db = $this->getDb();
        
        //加载过滤选项。
        $c_f = ''; $r_f = ''; $n_f = '';
        if( isset( $filters['cate'] ) ) $c_f = 'category_id='.$filters['cate'];
        if( isset( $filters['name'] ) ) $n_f = 'goods_name LIKE ?';
        
        if( !empty($n_f) && !empty($c_f) ) $c_f.=' AND ';
        
        $sql = "SELECT DISTINCT	s.streets_id,s.streets_name FROM (SELECT g.address_id FROM	goods_table g WHERE ".
            $c_f.$n_f.
        ") ga,streets_table s,address_table a WHERE ga.address_id = a.address_id AND a.streets_id = s.streets_id";
    
        print_r($filters);
        echo '___'.$sql;
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            ///在为like的特殊，所以必须另外描述。。
            if( !empty($n_f) ) {
                $n_f = '%'.$filters['name'].'%';
                $stmt->bind_param( "s", $n_f );
            }//else  $stmt->bind_param( "i",$filters['cate'] );

            $stmt->execute();
    
            $_id = NULL; $_name = NULL;
            $stmt->bind_result($_id,$_name);
    
            while( $stmt->fetch() )
                $arr[$_id] = $_name;
    
            $stmt->close();
        }
    
        $db->close();
    
        return $arr;
    
    }   
    public function getFilterCateGoods( $id, $filters ){
        
        
    }
    
    
    public function getGoodCate( $id ){
        $db = $this->getDb();
        $sql = "SELECT catagory_name FROM category_table where category_id=?";

        $arr = NULL;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$id);
            $stmt->execute();

            $_name = NULL;
            $stmt->bind_result($_name);

            if( $stmt->fetch() )
                $arr = array( 'id'=>$id, 'name'=>$_name );

            $stmt->close();
        }

        $db->close();

        return $arr;
    }
    public function getGoodRange( $id ){
        $db = $this->getDb();
        $sql = "SELECT s.streets_id,s.streets_name FROM streets_table s,address_table a where s.streets_id = a.streets_id AND a.address_id=?";

        $arr = NULL;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$id);
            $stmt->execute();

            $_id = NULL; $_name = NULL;
            $stmt->bind_result($_id,$_name);

            if( $stmt->fetch() )
                $arr = array( 'id'=>$_id, 'name'=>$_name );

            $stmt->close();
        }

        $db->close();

        return $arr;
    }
    
    public function getLikeCateGoods( $val ){
        $db = $this->getDb();
        $sql = "select g.* from goods_table g,(select * from category_table ca where ca.catagory_name like ? ) c where c.category_id = g.category_id";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param("s",$val);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime);
        
            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }
    public function getLikeRangeGoods( $val ){
        $db = $this->getDb();
        $sql = "select g.* FROM goods_table g , (select address_id from address_table a,(select * from streets_table s where s.streets_name like ? )sc where a.streets_id= sc.streets_id )sa where sa.address_id = g.address_id";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $val = '%'.$val.'%';
            $stmt->bind_param("s",$val);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime);
        
            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }

    public function getCateGoods( $id ){
        $db = $this->getDb();
        $sql = "select g.* FROM goods_table g where g.category_id = ?";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$id);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime);
        
            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }
    public function getAllCateGoods( $id ){
        $db = $this->getDb();
        $sql = "select g.* FROM goods_table g,category_table c where g.category_id = c.category_id and c.all_category_id = ?";
        
        $arr = array();
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("i",$id);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_img=NULL;  $_desc=NULL;  $_bpri=NULL;  $_pri=NULL;  $_tel=NULL;  $_aid=NULL;  $_cid=NULL;  $_qr=NULL;  $_atime=NULL;
            $stmt->bind_result($_id,$_name,$_img,$_desc,$_bpri,$_pri,$_tel,$_aid,$_cid,$_qr,$_atime);
        
            while( $stmt->fetch() )
                $arr[$_id] = array('name'=>$_name, 'img'=>$_img, 'desc'=>$_desc, "b_pri"=>$_bpri, "pri"=>$_pri, 'tel'=>$_tel, 'aid'=>$_aid,'cid'=>$_cid,'qrcode'=>$_qr,'at'=>$_atime);
        
            $stmt->close();
        }
        
        $db->close();
        
        return $arr;
    }

    public function checkStreets( $name ){
        $db = $this->getDb();
        $sql = "SELECT count(*) FROM streets_table where streets_name like ?";

        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("s",$name);
            $stmt->execute();

            $flag = 0;
            $stmt->bind_result($flag);

            $stmt->fetch();

            $stmt->close();
        }

        $db->close();

        return $flag;
    }
    public function insertStreets( $name,$countid ){
        $db = $this->getDb();
        $sql = "INSERT INTO `streets_table` (`streets_name`, `county_id`) VALUES (?, ?)";
        
        $insertId = NULL;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("si",$name,$countid);
            $stmt->execute();
            $stmt->fetch();
            
            $insertId = $stmt->insert_id;

            $stmt->close();
        }
        
        $db->close();
        
        return $insertId;
    }
    public function getStreetsByName( $name ){
        $db = $this->getDb();
        $sql = "SELECT * FROM streets_table where streets_name like ?";
        
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("s",$name);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_cid=NULL;
            $stmt->bind_result($_id,$_name,$_cid);
        
            $stmt->fetch();
        
            $stmt->close();
        }
        
        $db->close();
        
        return $_id;
    }
    
    public function checkGoodByName( $name ){
        $db = $this->getDb();
               $sql = 'SELECT count(*) FROM goods_table where goods_name like ?';
        
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("s",$name);
            $stmt->execute();
        
            $flag = 0;
            $stmt->bind_result($flag);
        
            $stmt->fetch();
        
            $stmt->close();
        }
        
        $db->close();
        
        return $flag;
    }
    
    public function insertAddress( $name, $sid ){
        $db = $this->getDb();
        $sql = "INSERT INTO `address_table` (`address_detail`, `streets_id`) VALUES (?, ?)";
        
        $insertId = NULL;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("si",$name,$sid);
            $stmt->execute();
            $stmt->fetch();
        
            $insertId = $stmt->insert_id;
        
            $stmt->close();
        }
        
        $db->close();
        
        return $insertId;
    }
    public function insertGood( $name,$img,$desc,$bpri,$pri,$tel,$aid,$cid,$qr,$at ){
        $db = $this->getDb();
        $sql = "INSERT INTO `goods_table` (goods_name,goods_img,goods_desc,goods_before_price,goods_price,goods_tel,address_id,category_id,goods_qrcode,goods_add_time) VALUES (?,?,?,?,?,?,?,?,?,?)";
        
        $insertId = NULL;
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("sssiisiiss",$name,$img,$desc,$bpri,$pri,$tel,$aid,$cid,$qr,$at);
            $stmt->execute();
            $stmt->fetch();
        
            $insertId = $stmt->insert_id;
        
            $stmt->close();
        }
        
        $db->close();
        
        return $insertId;
    }
    
    public function getCateId( $name ){
        $db = $this->getDb();
        $sql = "SELECT * FROM category_table WHERE catagory_name like ?";
        
        if( (boolean)$stmt = $db->prepare( $sql ) ){
            $stmt->bind_param("s",$name);
            $stmt->execute();
        
            $_id=NULL; $_name=NULL; $_cid=NULL;
            $stmt->bind_result($_id,$_name,$_cid);
        
            $stmt->fetch();
        
            $stmt->close();
        }
        
        $db->close();
        
        return $_id;
    }
        
    
    /*
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
    */
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