<?php 
/*
 module:		门锁管理
 create_time:	2020-02-24 18:58:29
 author:		
 contact:		
*/

namespace app\admin\controller;

use xhadmin\service\admin\LockService;
use xhadmin\db\Lock as LockDb;

class Lock extends Admin {


	function initialize(){
		if(in_array($this->request->action(),['updateExt','update','delete','view'])){
			$id = $this->request->param('lock_id','','intval');
			$ids = $this->request->param('lock_ids','','intval');
			if($id){
				$info = LockDb::getInfo($id);
				if(session('admin.role') <> 1 && $info['user_id'] <> session('admin.user_id')) $this->error('你没有操作权限');
			}
			if($ids){
				foreach(explode(',',$ids) as $v){
					$info = LockDb::getInfo($v);
					if(session('admin.role') <> 1 && $info['user_id'] <> session('admin.user_id')) $this->error('你没有操作权限');
				}
			}
		}
	}
	/*门锁管理*/
	function index(){
		if (!$this->request->isAjax()){
			return $this->display('index');
		}else{
			$limit  = $this->request->post('limit', 0, 'intval');
			$offset = $this->request->post('offset', 0, 'intval');
			$page   = floor($offset / $limit) +1 ;

			$where = [];
			$where['member_id'] = $this->request->param('member_id', '', 'serach_in');
			if(session('admin.role') <> 1){
				$where['user_id'] = session('admin.user_id');
			}
			$where['lockname'] = $this->request->param('lockname', '', 'serach_in');
			$where['sn'] = $this->request->param('sn', '', 'serach_in');

			$order  = $this->request->post('order', '', 'serach_in');	//排序字段 bootstrap-table 传入
			$sort  = $this->request->post('sort', '', 'serach_in');		//排序方式 desc 或 asc

			$limit = ($page-1) * $limit.','.$limit;
			$field = 'lock_id,member_id,user_id,lockname,sn';
			$orderby = ($sort && $order) ? $sort.' '.$order : 'lock_id desc';

			try{
				$res = LockService::pageList(formatWhere($where),$limit,$field,$orderby);
				$list = $res['list'];
			}catch(\Exception $e){
				exit($e->getMessage());
			}

			$data['rows']  = $list;
			$data['total'] = $res['count'];
			return json(htmlOutList($data));
		}
	}

	/*添加*/
	function add(){
		if (!$this->request->isPost()){
			return $this->display('add');
		}else{
			$postField = 'lockname,sn,member_id,user_id';
			$data = $this->request->only(explode(',',$postField),'post',null);
			try {
				LockService::add($data);
			} catch (\Exception $e) {
				$this->error($e->getMessage());
			}
			return json(['status'=>'00','msg'=>'添加成功']);
		}
	}

	/*修改*/
	function update(){
		if (!$this->request->isPost()){
			$lock_id = $this->request->get('lock_id','','intval');
			if(!$lock_id) $this->error('参数错误');
			try{
				$this->view->assign('info',checkData(LockDb::getInfo($lock_id)));
				return $this->display('update');
			}catch(\Exception $e){
				$this->error($e->getMessage());
			}
		}else{
			$postField = 'lock_id,lockname,sn,member_id,user_id';
			$data = $this->request->only(explode(',',$postField),'post',null);
			try {
				LockService::update($data);
			} catch (\Exception $e) {
				$this->error($e->getMessage());
			}
			return json(['status'=>'00','msg'=>'修改成功']);
		}
	}

	/*删除*/
	function delete(){
		$idx =  $this->request->post('lock_ids', '', 'serach_in');
		if(!$idx) $this->error('参数错误');
		try{
			LockService::delete(['lock_id'=>explode(',',$idx)]);
		}catch(\Exception $e){
			$this->error($e->getMessage());
		}
		return json(['status'=>'00','msg'=>'操作成功']);
	}

	/*查看数据*/
	function view(){
		$lock_id = $this->request->get('lock_id','','intval');
		if(!$lock_id) $this->error('参数错误');
		try{
			$this->view->assign('info',checkData(LockDb::getInfo($lock_id)));
			return $this->display('view');
		} catch (\Exception $e){
			$this->error($e->getMessage());
		}
	}

	/*导出*/
	function dumpData(){
		$where = [];
		if(session('admin.role') <> 1){
			$where['user_id'] = session('admin.user_id');
		}
		$where['lockname'] = $this->request->param('lockname', '', 'serach_in');
		$where['sn'] = $this->request->param('sn', '', 'serach_in');
		$where['lock_id'] = ['in',$this->request->param('lock_id', '', 'serach_in')];

		$orderby = '';

		try {
			//此处读取前端传过来的 表格勾选的显示字段
			$fieldInfo = [];
			for($j=0; $j<100;$j++){
				$fieldInfo[] = $this->request->param($j);
			}
			$res = LockService::dumpData(formatWhere($where),$orderby,filterEmptyArray(array_unique($fieldInfo)));
		} catch (\Exception $e) {
			$this->error($e->getMessage());
		}
	}



}

