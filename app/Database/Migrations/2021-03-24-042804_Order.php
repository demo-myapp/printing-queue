<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Order extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'order_id' => [
				'type' => 'INT',
				'auto_increment' => true
			],
			'username' => [
				'type' => 'VARCHAR',
				'constraint' => '30',
			],
			'title' => [
				'type' => 'VARCHAR',
				'constraint' => '100',
			],
			'format' => [
				'type' => 'VARCHAR',
				'constraint' => '5',
			],
			'document' => [
				'type' => 'VARCHAR',
				'constraint' => '100',
			],
			'note' => [
				'type' => 'TEXT'
			],
			'status'       => ['type' => 'varchar', 'constraint' => 30, 'default' => 'In Queue'],
			'created_at' => [
				'type'           => 'DATETIME',
				'null'       	 => true,
			],
			'updated_at' => [
				'type'           => 'DATETIME',
				'null'       	 => true,
			]
		]);
		$this->forge->addPrimaryKey('order_id', true);
		$this->forge->createTable('orders');
	}

	public function down()
	{
		$this->forge->dropTable('orders');
	}
}
