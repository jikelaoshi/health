<?php

//接口路由文件

use think\facade\Route;

Route::rule('User/update', 'User/update')->middleware(['JwtAuth']);	//修改账户;
Route::rule('User/updatePassword', 'User/updatePassword')->middleware(['JwtAuth']);	//修改密码;
Route::rule('Health/list', 'Health/list')->middleware(['JwtAuth']);	//;
Route::rule('Member/update', 'Member/update')->middleware(['JwtAuth']);	//编辑数据;
Route::rule('Member/view', 'Member/view')->middleware(['JwtAuth']);	//查看用户信息;
Route::rule('Health/view', 'Health/view')->middleware(['JwtAuth']);	//查看数据;
Route::rule('Regpoint/update', 'Regpoint/update')->middleware(['JwtAuth']);	//修改;
Route::rule('Regpoint/delete', 'Regpoint/delete')->middleware(['JwtAuth']);	//删除;
Route::rule('Regpoint/view', 'Regpoint/view')->middleware(['JwtAuth']);	//查看数据;
Route::rule('User/view', 'User/view')->middleware(['JwtAuth']);	//;
Route::rule('Base/Upload', 'Base/Upload')->middleware(['JwtAuth']);	//图片上传;

/*start*/
Route::rule('User/adduser', 'User/adduser')->middleware(['JwtAuth']);	//添加;
/*end*/



