<?php

function jinli_verify($content)
{
	$verify_url = "https://id.gionee.com/account/verify.do";
	$apiKey = "替换成商户申请获取的APIKey";     //替换成商户申请获取的APIKey
	$secretKey = "替换成商户申请获取的SecretKey";  //替换成商户申请获取的SecretKey
	$host = "id.gionee.com";
	$port = "443";
	$uri = "/account/verify.do";
	$method = "POST";

	$ts =  time();
	$nonce = strtoupper(substr(uniqid(),0,8)) ;

	$signature_str = $ts."\n".$nonce."\n".$method."\n".$uri."\n".$host."\n".$port."\n"."\n";

	$signature = base64_encode(hash_hmac('sha1',$signature_str,$secretKey,true));

	$Authorization = "MAC id=\"{$apiKey}\",ts=\"{$ts}\",nonce=\"{$nonce}\",mac=\"{$signature}\"";

	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL,$verify_url);
	curl_setopt($ch, CURLOPT_HEADER, 0);
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_TIMEOUT, 10);
	curl_setopt($ch, CURLOPT_HTTPHEADER,array('Authorization: '.$Authorization));
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	$result = curl_exec ($ch);
	curl_close($ch);
	return $result;
}

//file_put_contents('./jinli.html',urldecode($_SERVER['REQUEST_URI'])."<br>",FILE_APPEND);


$json['status'] = 1;
$playId = trim($_REQUEST['playId']);
$isGuest = trim($_REQUEST['isGuest']);
$amigoToken = trim($_REQUEST['token']);
if($isGuest == 'false'){
	//正式账号需要验证
	$result_json = jinli_verify($amigoToken);
	$result_arr = json_decode($result_json,1);
	if(isset($result_arr['r'])){
		$json['status'] = 0;
		die(json_encode($json));
	}

} 

/*
登陆验证完成，下面写登陆服务端逻辑
*/

die(json_encode($json));


