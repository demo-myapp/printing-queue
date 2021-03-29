<?php

namespace App\Controllers;

use App\Models\OrderModel;
use App\Controllers\BaseController;

class AllOrder extends BaseController
{
	protected $orderModel;

	public function __construct()
	{
		$this->orderModel = new OrderModel();
	}

	public function index()
	{
		$db      = \Config\Database::connect();
		$builder = $db->table('orders');
		$builder->where('status', 'In Queue');
		$query   = $builder->get()->getResultArray();
		$data = [
			'title' => 'All Queue Order',
			// 'order' => $this->orderModel->getOrders()
			'order' => $query
		];
		return view('order/queue', $data);
	}

	public function process($order_id)
	{
		$dat = $this->request->getVar('status');
		$this->orderModel->save([
			'order_id' => $order_id,
			'status' => $dat
		]);

		session()->setFlashdata('message', 'Order was Successfully Processed.');

		return redirect()->to('/order/inqueue');
	}

	public function done()
	{
		$db      = \Config\Database::connect();
		$builder = $db->table('orders');
		$builder->where('status', 'Done');
		$query   = $builder->get()->getResultArray();
		$data = [
			'title' => 'All Order Done',
			// 'order' => $this->orderModel->getOrders()
			'order' => $query
		];
		return view('order/done', $data);
	}

	function download()
	{
		// $fileDocument = $this->request->getFile('document');
		// $fileDocument = $this->request->getFile('document');
		// $documentName = $fileDocument->getName();
		// $this->load->helper('download');

		$data = $this->request->getVar('document');
		// force_download('file/' . $data, NULL);
		return $this->response->download('file/' . $data, NULL);
		// $data = $this->db->get_where('orders', ['order_id' => $order_id])->row();
		// dd($dat);
	}
}
