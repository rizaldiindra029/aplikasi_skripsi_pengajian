<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
koneksi database dengan codeigniter
*/
$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
	'dsn'	=> '',
	'hostname' => getenv('DB_HOST') !== false ? getenv('DB_HOST') : 'localhost',
	'username' => getenv('DB_USER') !== false ? getenv('DB_USER') : 'root',
	'password' => getenv('DB_PASS') !== false ? getenv('DB_PASS') : '',
	'database' => getenv('DB_NAME') !== false ? getenv('DB_NAME') : 'payrol',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'production'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);
