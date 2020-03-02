<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// | 自定义配置
// +----------------------------------------------------------------------
return [
	
	//后台基础配置
    'drop_table_status' => true,   				//卸载时数据表是否也删除  true删除 false不删除
	'drop_field_status' => true,				//删除字段时数据表字段是否也删除  true删除 false不删除
	'config_module_id'  => 41,     				//系统配置业务模块ID  配置单独生成 不清楚勿动
	'drop_application_status' => true,  		//卸载应用时下面的文件是否全部删除
	'max_dump_data'		=> 50000,  				//excel最大导出数据量
	'upload_dir'		=> './uploads',			//文件上传根目录
	'upload_subdir'		=> 'Ym',				//文件上传二级目录 标准的日期格式
	'nocheck'			=> ['/admin/Login/Verify','/admin/Login/index','/admin/Index/index','/admin/Index/main','/admin/Login/out','/admin/Upload/editorUpload','/admin/Upload/uploadImages','/admin/Upload/uploadUeditor','/admin/Login/captcha'],   					//不需要验证权限的url
	'img_show_status'	=> true,				//图片输入框 鼠标移动上去 是否显示图片 true 显示 false 不显示
	
	'export_per_num'	=> 50,					//excel每次导入的数据量 建议不要高于200
	'import_type'	=> 'csv',					//可选格式有 xls、xlsx、csv 
	
	'clear_cache_dir'	=> true,				//清除缓存 true 只删除admin 后台应用  false 删除所有
	
	'password_secrect'	=> 'xhadmin',			//密码加密秘钥
	
	//api基本配置
	'api_input_log'		=> true,				//api参数输入记录日志(全局)
	'successCode'		=> '200',				//成功返回码
	'errorCode'			=> '201',				//错误返回码
	'jwtExpireCode'		=> '101',				//jwt过期
	'jwtErrorCode'		=> '102',				//jwt无效
	
	//聚合短信配置
	'juhe_sms_key'		=> '3420d7egshdjhshjdsh77776767c373f4b4ac',		//key
	'juhe_sms_tempCode'	=> '11205725',									//短信验证码模板
	
	//极速短信配置
	'jisu_sms_key'		=> '892d93ac22b27ee9',							//key
	'jisu_sms_tempCode'	=> '20492',										//短信验证码模板
	
	//阿里大鱼短信配置
	'ali_sms_accessKeyId'		=> 'LTAI561jhasjhghgswwC',				//阿里云短信 keyId	
	'ali_sms_accessKeySecret'	=> 'Ghgd2cfdfdhshjhj66dshgsdghshgo7',	//阿里云短信 keysecret
	'ali_sms_signname'			=> '',							//签名
	'ali_sms_tempCode'			=> 'SMS_113456288',						//短信模板 Code
	
	//api上传配置
	'api_upload_domain'	=> '',						//如果做本地存储 请解析一个域名到/public/upload目录  也可以不解析
	'api_upload_ext'	=> 'jpg,png,gif,mp4',			//api允许上传文件
	'api_upload_max'	=> 200 * 1024 * 1024,			//默认2M
	
	//oss开启状态 以及配置指定oss
	'oss_status'			=> false,			//true启用  false 不启用
	'oss_default_type'		=> 'qiniuyun',			//oss使用类别 则使用ali的oss  qiniuyun 则使用七牛云oss
	
	//阿里云oss配置
	'ali_oss_accessKeyId'		=> 'LTAI4FniGfH5JyFSznf3Vk',						//阿里云短信 keyId	
	'ali_oss_accessKeySecret'	=> 'JU72W7gmqkaGliV3UczgIZlSe',		//阿里云短信 keysecret
	'ali_oss_endpoint'			=> 'http://img.xxxxx.com',	//建议填写自己绑定的域名
	'ali_oss_bucket'			=> '',							//阿里bucket
	
	
	//七牛云oss配置
	'qny_oss_accessKey' 	=> 'bm1sR9bx5HK7KYq2RtAhZMJ8zOxb-HCGYx5pJU',  //access_key
	'qny_oss_secretKey' 	=> 'YrRaySbqu1PIzZHOguJMT0ObUdb7GBPRiYa7Lq',     //secret_key
	'qny_oss_bucket'	  	=> 'xxxxx',							//bucket
	'qny_oss_domain'	  	=> 'http://img.xxxxx.com/', 		// 七牛云绑定图片访问域名 后缀加斜杠
	
	//jwt鉴权配置
	'jwt_expire_time'		=> 7200,				//token过期时间 默认2小时
	'jwt_secrect'			=> 'boTCfOGKwqTNKArT',	//签名秘钥
	'jwt_iss'				=> 'client.xhadmin',	//发送端
	'jwt_aud'				=> 'server.xhadmin',	//接收端
	
	//小程序配置
	'mini_program'			=> [
		'app_id' => 'wx7gdcbff7df1bf439',					//小程序appid
		'secret' => 'cb1fd817fd0bde1731ffffeddd7b1',		//小程序secret
	],
	
	//公众号配置
	'official_accounts'		=> [
		'app_id'        => 'wxa2c18a9aa664852',												//公众号appid
		'secret'		=> '7deac0096af41f4cb08b489',									//公众号secret
		'token'			=> 'chengdie',
	],
	
	'pay_display'		=> 1,	//jsapi支付方式 1调用系统自带的模板渲染支付 2 返回jssdk 前端自己去写支付过程
	
	//微信支付配置
	'wechart_pay'			=> [
		'mch_id'         => '1346545201',															//商户号
		'key'            => 'SKDHcQaU8nP69reXtU67K7zcyJqobHd',										//微信支付32位秘钥
		'cert_path'      => app()->getRootPath().'extend/utils/wechart/zcerts/apiclient_cert.pem',	//证书路径
		'key_path'       => app()->getRootPath().'extend/utils/wechart/zcerts/apiclient_key.pem',	//证书路径
		'rsa_public_key_path'  => app()->getRootPath().'extend/utils/wechart/zcerts/public.pem',	//rsa公钥
	],
	
	//微信模板消息模板ID
	'official_template_id'	=> 'zhUOmOA49yBm-sOrduKILr7VWMsJ4TyuU',
	'mini_template_id'	=> 'n1Zfe9bqxX5_9PW-ojah4McNsjzT_d3656w',
	
	//支付宝支付配置
	'alipay'      =>   [
        'gatewayUrl'    =>  'https://openapi.alipay.com/gateway.do',//支付网关
        'appId'         =>  '201951836579662',//appid
        'rsaPrivateKey' =>  'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwgiAgEAAoIBAQCB/wy0RFfy2M04lfI65M/0hwJwHTIyLT0G8qRy/US3puX9qOYdDEkIk3uKYlnPzzBC3L8jxIIJKeTdAcLU1t4Yw4NoaigTUe5VsAw/WuAl1xFuTnzU/q3x6FQ04ry4vnDZ7paJWiE26M+/pPN7pcPQEtoZlXHT6Vg9yVKkjnjZporswPKoyVrs1884yqtf7WWgAKkSbnQjyApc0N5nYs6SlJLgFOQSc/ODY/nCSW6A8EL5d7szW4FNe/kxQUYMA7d6ysW6e75fiHLW/8jgfd0KAxdc3/XwYvcI/GfjB5lQnHSvepGaVihkL6ZznhFygceoTtBJ7jWvr9JDY/wljTAgMBAAECggEAB3NCmyI/mB9sw410cIOkl3MVZK+HrPCCyt8lJH2SkA6disz5P5LQT6Smf/A/fP15B8apUYh3byU7UWokOIvoGO0KEvNOC495pNMYGUo64JD8Xp2FQ7zkSWrjcxg3IWtmg/eeMi9lpQJNAaUHcYGTuqFrWmvOGHr5Xm8YoqJvxBydKW3aTWQ1EouXDxWKbAwLFdqQfGTG7zq6/SxeuAxRaWHbdLJ/klB+YGdh6PuIbPlQ==',//私钥

        'alipayrsaPublicKey' =>  'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAomfOZZ/5kLrExlQrdzCvyMmTDkCeKSgTrj7rfIN760DeFK0i/0UayQNPtUEXexjyT/kfy5UKoDb1i/UUsn9Y33oNU+wHx3BLZTCfFCB299zBiuPnldB1fFiTBY8Z5kOS8VtrZFYx6ZCTeE3bKGqxaQak8cREffizKdcuQn20PKv3avfNs1OvNzfYbjsP2mnm1hY1cshwYihq1kyUrZSR3Ws7lXSpjNUGpcLjQbVZZ628S0cPLf7W5RkmDmqrGCsaDSMWqfaGinZzW0stalHxcqx7lX5GTKKQmQimoCtfiySkREnR4KbKdNseX46qgWoQIDAQAB'//公钥
    ],
	
	//邮件发送服务
	'email'	=> [
		'Host'		=> 'ssl://smtp.qq.com',	//邮箱smtp服务器地址
		'Port'		=> 465,					//邮箱端口
		'From'		=> '274363574@qq.com',	//发送者邮箱
		'FromName'	=> '寒塘冷月',			//发送者昵称
		'Username'	=> '274363574@qq.com',	//登录邮箱用户名
		'Password'	=> 'xalrwhbuaocbdc',	//登录邮箱授权码 注意不是账号密码
	],
	
	'upload_hash_status'=>false,	//检测是否存在已上传的图片并返回原来的图片路径 true 检测 false 不检测  默认为true如果不设置
	'filed_name_status'=>false,		//true 设置字段时自动读取拼音作为字段名 
	
	//文件注释
	'comment'=>[
		'api_comment'=>true,	//api接口详细注释 true生成 false不生成  
		'file_comment'=>true,	//文件头部注释  true生成 false不生成
		'author'=>'',
		'contact'=>'',
	],
	

];
