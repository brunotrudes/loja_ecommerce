<?php 
require_once("../conexao.php");
@session_start();

$id_produto = $_POST['idproduto'];
$id_cliente = @$_SESSION['id_usuario'];
$combo = @$_POST['combo'];


if(@$_SESSION['hora_compra'] == ""){
	// @$_SESSION['hora_compra'] = date('d-m-Y-H:i:s-').rand(0, 1500);
	@$_SESSION['hora_compra'] = date('Y-m-d H:i:s-').rand(0, 1500);
}

$sessao = @$_SESSION['hora_compra'];

if($id_cliente == "" || $id_cliente == 0){
	$sessao = @$_SESSION['hora_compra'];
}else{
	$pdo->query("UPDATE carrinho set id_usuario = '$id_cliente' where id_usuario = 0 and sessao = '$sessao'");
}

if(@$_POST['quantidade'] != null and @$_POST['quantidade']!=""){
	$quantidade = @$_POST['quantidade'];
}else{
	$quantidade = 1;
}

if(@$_POST['carac'] != null and @$_POST['carac']!=""){
	$carac = 'Sim';
}


if(@$carac == 'Sim'){
	for ($i=0; $i < 6; $i++) {
			if(@$_POST[$i] == "0"){
				echo 'Selecione todas as características';
				exit();
			}
		}
}





$pdo->query("INSERT INTO carrinho(id_usuario, id_produto, quantidade, id_venda, data, combo, sessao) values ('$id_cliente', '$id_produto', '$quantidade', '0', NOW(), '$combo', '$sessao')");

$id_carrinho = $pdo->lastInsertId();

echo 'Cadastrado com Sucesso!!';


if(@$carac == 'Sim'){
//dados para recuperar valores e inserir as caracteristicas dos itens do carrinho
	for ($i=0; $i < 6; $i++) {
		if(@$_POST[$i] != null and @$_POST[$i]!=""){
			$id_carac_itens = $_POST[$i];
			$query2 = $pdo->query("SELECT * from carac_itens where id = '$id_carac_itens'");
			$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
			$id_carac_prod = @$res2[0]['id_carac_prod'];
			$nome_carac = @$res2[0]['nome'];
			$valor = @$res2[0]['valor'];

			$query3 = $pdo->query("SELECT * from carac_prod where id = '$id_carac_prod'");
			$res3 = $query3->fetchAll(PDO::FETCH_ASSOC);
			$id_caract = @$res3[0]['id_carac'];


			$pdo->query("INSERT INTO carac_itens_car(id_carrinho, id_carac, nome, adicional) values ('$id_carrinho', '$id_caract', '$nome_carac', '$valor')");
		}
	}
}

 ?>