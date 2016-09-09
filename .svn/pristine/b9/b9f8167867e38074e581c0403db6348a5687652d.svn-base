<?php

function rsa_verify($post_arr){
	ksort($post_arr);
	foreach($post_arr as $key => $value){
		if($key == 'sign') continue;
		$signature_str .= $key.'='.$value.'&';
	}
	$signature_str = substr($signature_str,0,-1);
	$publickey= '金立提供的充值公钥';
	$pem = chunk_split($publickey,64,"\n");
	$pem = "-----BEGIN PUBLIC KEY-----\n".$pem."-----END PUBLIC KEY-----\n";
	$public_key_id = openssl_pkey_get_public($pem);
	$signature =base64_decode($post_arr['sign']);
	return openssl_verify($signature_str, $signature, $public_key_id );
}

function rsa_sign($post_arr){
	ksort($post_arr);
	foreach($post_arr as $key => $value){
		$signature_str .= $value;
	}
	$private_key= '金立提供的私钥(demo用)MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAN33eE2nD7fcBF/WNxTukvffy9NTXeWduFjfsyzVXPLXbxysQDsOJpoXIYhwU0Dif1bpT9BHY74Jnymw3+/D2bTM1mc+r0G84hSQ67wjL4fr3gY9UP5GgUCEX2t2lp9CLv0RU68elISSCE7Or+jN0kXLxhC1ZlxEmskNc8y7o87jAgMBAAECgYEAoWRi0PN79k+/zn9PpaSisCDFb27agy5e8CAXg63P27LRU6PbQBVV9AyFkVM69Z66wFL8eZCu8WrFk+bLrOZW0Ei2v8MHru1aYkX1Oa0hprob8O0hlr8Wxri1VHxSXOHq3MTD/NM9bAB2Kb6coqpR4T2Poajtk5zXyNZMiDeiPYECQQDzRm6RlXaKorHRbAhYXfktQ/0o+hZSidzYaDDKlUijZFF2CmczK93/na0HRwoIEUTyucLdL2BVipyu5cu7rb6xAkEA6ZO1O9WkJRxWxtnO5h0HNsEsH1mSRa5sjK1i2QJ4h1OxLJz4+P/UrXAvj1/sgnfxUG/eDh0WOTmz6V370fCT0wJAGzwyWrgZ6lFmiOSIVqRGpiurZvAAmcL3Z37an4Nw+2HawNVPUmpB00EqwtrQI7ETP/1N9Ic+SLVY7zeoxF0iMQJBAKSQ+xmjFjlHVCRaBRm/zftX8pxL4XDSyYv8BS7cPMsrviKungPhS5i+9+NONDZgB1ci2hKbj7LV4tpC608o7x0CQDY8BmLv63BNxS9/1s7X6thmVzP6co2fKdpWr5gw3E5bBXr2VJAInc5CfuDjaX2iRiYjvYLpC8QOWfxqTBLokY0=';
	$pem = chunk_split($private_key,64,"\n");
	$pem = "-----BEGIN PRIVATE KEY-----\n".$pem."-----END PRIVATE KEY-----\n";
	$private_key_id = openssl_pkey_get_private($pem);
	$signature = false;
	openssl_sign($signature_str, $signature, $private_key_id);
	$sign =  base64_encode($signature);
	return $sign;
}

function https_curl($url, $post_arr = array(), $timeout = 10)
{
	$curl = curl_init($url);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($curl, CURLOPT_POST, 1);
	curl_setopt($curl, CURLOPT_POSTFIELDS, $post_arr);
	curl_setopt($curl, CURLOPT_TIMEOUT, $timeout);
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
	$content = curl_exec($curl);
	curl_close($curl);

	return $content;
}

$ac = $_REQUEST['ac'];
if($ac == 'get_out_order_no'){
	//生成内部订单，创建金立订单
	
	$return['paynum'] = '你自己生成的内部订单';

	$dst_url = "https://pay.gionee.com/order/create";
	$post_arr['api_key'] = 'FF20A4B3BCD44F1380DEECADFC6657D3(demo用)';
	$post_arr['subject'] = '你的支付标题';
	$post_arr['out_order_no'] = $return['paynum'];
	$post_arr['deliver_type'] = '1';
	$post_arr['deal_price'] = '需要支付的金额';
	$post_arr['total_fee'] = '需要支付的金额';
	$post_arr['submit_time'] = date('YmdHis');
	$post_arr['notify_url'] = "http://{$_SERVER['HTTP_HOST']}/path/xxxxx.php";
	$post_arr['sign'] = rsa_sign($post_arr);
	$post_arr['player_id'] = 'amigo玩家id(例如:amigo_player001)';


	$json = json_encode($post_arr);
	
	$return_json = https_curl($dst_url,$json);
	$return_arr = json_decode($return_json,1);
	
	//订单创建成功的状态码判断
	if ($return_arr['status'] !== '200010000') {
		//创建失败处理
	}

	/*
		记录下你得到的$post_arr['out_order_no']和$return_arr['order_no']的对应关系，充值回调的时候要使用的，
	*/

	$return['submit_time'] = $return_arr['submit_time'];
	die(json_encode($return));
} 

/*
	充值回调信息
*/
//file_put_contents('./jinli.html',date("Y-m-d H:i:s").'POST:'.print_r($_POST,1)."<br>",FILE_APPEND);

$contents = $_POST;

if(!rsa_verify($contents)){
	die('error sign');
}

/*
	先查询到给过来的内部订单号对应的金立的订单号
	然后是自己的充值流程
*/

