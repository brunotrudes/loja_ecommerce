<?php 

$url_loja = "http://$_SERVER[HTTP_HOST]/";
$url = explode("//", $url_loja);
if($url[1] == 'localhost/'){
	$url_loja = "http://$_SERVER[HTTP_HOST]/loja/";
}


//VARIAVEIS DO BANCO DE DADOS
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'loja';


/*
//VARIAVEIS DO BANCO DE DADOS
$servidor = 'sh-pro24.hostgator.com.br';
$usuario = 'hugocu75_lojahug';
$senha = 'hugo_loja';
$banco = 'hugocu75_loja';
*/


//VARIAVEIS DE ADMIN
$sitelogo = 'img/logo.png';

 ?>