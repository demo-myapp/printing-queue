<?php

namespace App\Controllers;

use App\Models\OrderModel;
use App\Controllers\BaseController;

class Order extends BaseController
{
	protected $orderModel;

	public function __construct()
	{
		$this->orderModel = new OrderModel();
	}

	public function index()
	{
		$db      = \Config\Database::connect();
		$username = user()->username;
		$builder = $db->table('orders');
		$builder->where('username', $username);
		$builder->where('status', 'In Queue');
		$query   = $builder->get()->getResultArray();
		$data = [
			'title' => 'My Order',
			// 'order' => $this->orderModel->getOrders()
			'order' => $query
		];
		return view('order/user_index', $data);
	}

	public function detail($order_id)
	{
		$data = [
			'title' => 'Detail Order',
			'order' => $this->orderModel->getOrders($order_id)
		];

		//jika order tidak ada
		if (empty($data['order'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Pesanan tidak ditemukan.');
		}

		return view('order/detail', $data);
	}

	public function create()
	{
		$data = [
			'title' => 'Form Order',
			'validation' => \Config\Services::validation()
		];

		return view('order/create', $data);
	}

	public function store()
	{
		//validasi
		if (!$this->validate([
			'title' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} is Required'
				]
			],
			'document' => [
				'rules' => 'uploaded[document]|max_size[document,102400]',
				'errors' => [
					'uploaded' => 'Upload your document first',
					'max_size' => 'Your document is too large over 100MB'
				]
			]
		])) {

			return redirect()->to('/order/create')->withInput();
		}

		$fileDocument = $this->request->getFile('document');
		$fileDocument->move('file');
		$documentName = $fileDocument->getName();
		// $time = time();
		// $newTime = date("d-m-Y-h:i", $time);
		// $newName = $newTime . '-' . $documentName;

		$this->orderModel->save([
			'username' => $this->request->getVar('username'),
			'title' => $this->request->getVar('title'),
			'format' => $this->request->getVar('format'),
			'document' => $documentName,
			'note' => $this->request->getVar('note')
		]);

		session()->setFlashdata('message', 'Order was Successfully Added.');

		return redirect()->to('/order');
	}

	public function edit($order_id)
	{
		$data = [
			'title' => 'Form Edit Order',
			'validation' => \Config\Services::validation(),
			'order' => $this->orderModel->getOrders($order_id)
		];

		return view('order/edit', $data);
	}

	public function update($order_id)
	{
		//validasi
		if (!$this->validate([
			'title' => [
				'rules' => 'required',
				'errors' => [
					'required' => '{field} is Required'
				]
			],
			'document' => [
				'rules' => 'max_size[document,102400]',
				'errors' => [
					'max_size' => 'Your document is too large over 100MB'
				]
			]
		])) {

			return redirect()->to('/order/edit/' . $order_id)->withInput();
		}

		$fileDocument = $this->request->getFile('document');

		//cek file, apakah tetap file lama
		if ($fileDocument->getError() == 4) {
			$documentName = $this->request->getVar('fileLama');
		} else {
			$fileDocument = $this->request->getFile('document');
			$documentName = $fileDocument->getName();
			$fileDocument->move('file');
			//hapus file lama
			unlink('file/' . $this->request->getVar('fileLama'));
		}

		$this->orderModel->save([
			'order_id' => $order_id,
			'username' => $this->request->getVar('username'),
			'title' => $this->request->getVar('title'),
			'format' => $this->request->getVar('format'),
			'document' => $documentName,
			'note' => $this->request->getVar('note')
		]);

		session()->setFlashdata('message', 'Order was Successfully Updated.');

		return redirect()->to('/order');
	}

	public function delete($order_id)
	{
		//cari file berdasarkan order_id
		$order = $this->orderModel->find($order_id);

		//hapus file
		unlink('file/' . $order['document']);

		$this->orderModel->delete($order_id);
		session()->setFlashdata('message', 'Order was Successfully Deleted.');
		return redirect()->to('/order');
	}

	public function user_done()
	{
		$db      = \Config\Database::connect();
		$username = user()->username;
		$builder = $db->table('orders');
		$builder->where('username', $username);
		$builder->where('status', 'Done');
		$query   = $builder->get()->getResultArray();
		$data = [
			'title' => 'Order Done',
			'order' => $query
		];
		return view('order/user_done', $data);
		dd($query);
	}
}
