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
            
            $stmt->bind_result($_id,$_name,$_allid);
            
            $i=0;
            while( $stmt->fetch() )
                $arr[] = array( 'id'=>$_id, 'name'=>$_name );
            
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