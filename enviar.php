<?php 

require_once("conexao.php");

// o ajax nao faz o tratamento dos requerid no campo do formulario, por isso fazer os if else 
if($_POST['nome'] == ""){
	echo 'Preecha o Campo Nome';
	exit();
}

if($_POST['email'] == ""){
	echo 'Preecha o Campo Email';
	exit();
}

if($_POST['mensagem'] == ""){
	echo 'Preecha o Campo Mensagem';
	exit();
}

// detalhes de envio de email

$destinatario = $email;
$assunto = $nome_loja . ' - Email da Loja';
$mensagem = utf8_decode('Nome: '.$_POST['nome']. "\r\n"."\r\n" . 'Telefone: '.$_POST['telefone']. "\r\n"."\r\n" . 'Mensagem: ' . "\r\n"."\r\n" .$_POST['mensagem']);
$cabecalhos = "From: ".$_POST['email'];
//funcao Mail faz o envio dos emails, porem nao funciona em servidor local. para testar devemos ver se ele retorna erro relacionado a porta
mail($destinatario, $assunto, $mensagem, $cabecalhos);

echo 'Enviado com Sucesso!';


//ENVIAR PARA O BANCO DE DADOS O EMAIL E NOME DOS CAMPOS
$res = $pdo->query("SELECT * FROM emails where email = '$_POST[email]'"); 
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
if(@count($dados) == 0){
	$res = $pdo->prepare("INSERT into emails (nome, email, ativo) values (:nome, :email, :ativo)");
	$res->bindValue(":nome", $_POST['nome']);
	$res->bindValue(":email", $_POST['email']);
	$res->bindValue(":ativo", "Sim");
	$res->execute();
}




 ?>