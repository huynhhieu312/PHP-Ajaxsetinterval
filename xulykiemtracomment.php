<?php
	mysql_connect("localhost","root","");
//mysql_select_db("admin_dkhc");
	$sql = "Select count(comment_id) as count from exp_nk.mk_comments WHERE xu_ly = 0";
	$kq = mysql_query($sql);
	$row = mysql_fetch_assoc($kq);
	$nk = $row['count'];
	
	$sql = "Select count(comment_id) as countm from exp_bxh.mk_comments WHERE xu_ly = 0";
	$kq = mysql_query($sql);
	$row = mysql_fetch_assoc($kq);
	$bxh = $row['countm'];

	$sql = "Select count(comment_id) as countn from exp_tmh.mk_comments WHERE xu_ly = 0";
	$kq = mysql_query($sql);
	$rowtmh = mysql_fetch_assoc($kq);
	$tmh = $rowtmh['countn'];
	$response= array();
	$response['status'] = 200;
	if($nk>0 || $bxh>0 || $tmh>0)
	{
		$response['data']=true;
		$response['countnk'] = $nk;
		$response['namkhoa']= " Có {$nk} comment tại Website chưa xử lý <a href='http://example.com'>Click vào để xử lý</a> ";
		$response['counttmh'] = $tmh;
		$response['taimuihong']= " Có {$tmh} comment tại Website chưa xử lý <a href='http://example.com'>Click vào để xử lý</a> ";
		$response['countbxh'] = $bxh;
		$response['benhxahoi']= " Có {$bxh} comment tại Website chưa xử lý <a href='http://example.com'>Click vào để xử lý</a> ";
	
	}
	else{
		$response['data']=false;
	
	}
	header("Content-type: application/json; charset=utf-8");
	
	echo json_encode($response);
	
 ?>