<?php

require_once("../../../conexao.php"); 

$sku = $_POST['sku'];
$nome = $_POST['nome-cat'];
$id_cat = $_POST['categoria'];
$id_sub_cat = $_POST['sub-categoria'];
$descricao = $_POST['descricao'];
$descricao_longa = $_POST['descricao_longa'];
$valor = $_POST['valor'];
$estoque = $_POST['estoque'];
$tipo_envio = $_POST['tipo_envio'];
$ativo = $_POST['ativo'];
$palavras = $_POST['palavras'];
$peso = $_POST['peso'];
$largura = $_POST['largura'];
$altura = $_POST['altura'];
$comprimento = $_POST['comprimento'];
$modelo = $_POST['modelo'];
$valor_frete = $_POST['valor-frete'];
$link = $_POST['link'];

$valor = str_replace(',', '.', $valor);
$valor_frete = str_replace(',', '.', $valor_frete);
$peso = str_replace(',', '.', $peso);
$largura = str_replace(',', '.', $largura);
$altura = str_replace(',', '.', $altura);
$comprimento = str_replace(',', '.', $comprimento);

$nome_novo = strtolower( preg_replace("[^a-zA-Z0-9-]", "-", 
        strtr(utf8_decode(trim($nome)), utf8_decode("áàãâéêíóôõúüñçÁÀÃÂÉÊÍÓÔÕÚÜÑÇ"),
        "aaaaeeiooouuncAAAAEEIOOOUUNC-")) );
$nome_url = preg_replace('/[ -]+/' , '-' , $nome_novo);

$antigo = $_POST['antigo'];
$id = $_POST['txtid2'];

if($nome == ""){
	echo 'Preencha o Campo Nome!';

	exit();
}




if($valor == ""){
	echo 'Preencha o Campo Valor!';
	exit();
}
if($valor != ""){
	$valor = str_replace('R$', '', $valor);
}


if($nome != $antigo){
	$res = $pdo->query("SELECT * FROM produtos where nome = '$nome'"); 
	$dados = $res->fetchAll(PDO::FETCH_ASSOC);
	if(@count($dados) > 0){
			echo 'Produto já Cadastrado no Banco!';
			exit();
		}
}

$res = $pdo->query("SELECT * FROM tipo_envios where id = '$tipo_envio'"); 
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
@$nome_envio = $dados[0]['nome'];
if($nome_envio == 'Correios'){
	if($peso == 0){
		echo 'O peso tem que ser maior que zero para frete dos correios!';
		exit();
	}
	if(empty($largura) || $largura <= 0){
		echo 'A largura tem que ser maior que zero para frete dos correios!';
		exit();
	}
	if(empty($altura) || $altura <= 0){
		echo 'A altura tem que ser maior que zero para frete dos correios!';
		exit();
	}
	if(empty($comprimento)|| $comprimento <= 0){
		echo 'O comprimento tem que ser maior que zero para frete dos correios!';
		exit();
	}
} 


// VERIFICA SE AS CARACTERISTCAS POSSUEM ITENS CADASTRADOS


$res = $pdo->query("SELECT COUNT(*) as num_carac
        FROM carac_prod
        WHERE carac_prod.id_prod = $id");

// Obtém o número de características retornadas pela consulta
$num_carac = $res->fetch(PDO::FETCH_ASSOC)['num_carac'];

// Verifica se existem características cadastradas
// if($num_carac == 0) {
//     echo 'Não há características cadastradas para esse produto, faça o que precisa aqui';
//     exit();
// }

// Verifica se existe alguma característica sem itens cadastrados
$res2 = $pdo->query("SELECT carac_prod.id
        FROM carac_prod
        WHERE carac_prod.id_prod = $id
        AND NOT EXISTS (
            SELECT 1 FROM carac_itens WHERE carac_itens.id_carac_prod = carac_prod.id
        )");

// Obtém a característica sem itens cadastrados, caso exista
$carac_sem_itens = $res2->fetch(PDO::FETCH_ASSOC);

if($carac_sem_itens) {
    echo 'Existe pelo menos uma característica sem itens cadastrados para esse produto';
    exit();
} 


// VERIFICA SE O PRECO DA PROMOCAO ESTA MAIOR QUE O PRECO DO PRODUTO

// Verifica se o produto está em promoção
$res3 = $pdo->query("SELECT * FROM promocoes WHERE id_produto = $id");

$dados3 = $res3->fetchAll(PDO::FETCH_ASSOC);
@$produto_promocao = $dados3[0]['ativo'];
@$preco_promocao = $dados3[0]['valor'];


if($produto_promocao = 'Sim' && $preco_promocao > $valor){
	echo 'O preço promocional é maior que o valor do produto';
}








//SCRIPT PARA SUBIR FOTO NO BANCO
$nome_img = date('d-m-Y H:i:s') .'-'.@$_FILES['imagem']['name'];
$nome_img = preg_replace('/[ :]+/' , '-' , $nome_img);
$caminho = '../../../img/produtos/' .$nome_img;
if (@$_FILES['imagem']['name'] == ""){
  $imagem = "sem-foto.jpg";
}else{
  
  $imagem = $nome_img;

  
}

$imagem_temp = @$_FILES['imagem']['tmp_name']; 

$ext = pathinfo($imagem, PATHINFO_EXTENSION);   
if($ext == 'png' or $ext == 'jpg' or $ext == 'jpeg' or $ext == 'gif'){ 
move_uploaded_file($imagem_temp, $caminho);
}else{
	echo 'Extensão de Imagem não permitida!';
	exit();
}

if($valor == 'R$ 0.00' and $ativo != 'Não'){
	echo 'Atualize o Valor do Produto.';
	exit();
}
	
	

if($id == ""){
	$res = $pdo->prepare("INSERT INTO produtos (sku, categoria, sub_categoria, nome, nome_url, descricao, descricao_longa, valor, imagem, estoque, tipo_envio, palavras, ativo, peso, largura, altura, comprimento, modelo, valor_frete, link) 
	VALUES (:sku, :categoria, :sub_categoria, :nome, :nome_url, :descricao, :descricao_longa, :valor, :imagem, :estoque, :tipo_envio, :palavras, :ativo, :peso, :largura, :altura, :comprimento, :modelo, :valor_frete, :link)");
	$res->bindValue(":imagem", $imagem);
}else{

	if($imagem == "sem-foto.jpg"){
		$res = $pdo->prepare("UPDATE produtos SET sku = :sku, categoria = :categoria, sub_categoria = :sub_categoria, nome = :nome, nome_url = :nome_url, descricao = :descricao, descricao_longa = :descricao_longa, valor = :valor, estoque = :estoque, tipo_envio = :tipo_envio, palavras = :palavras, ativo = :ativo, peso = :peso, largura = :largura, altura = :altura, comprimento = :comprimento, modelo = :modelo, valor_frete = :valor_frete, link = :link WHERE id = :id");
	}else{
		$res = $pdo->prepare("UPDATE produtos SET sku = :sku, categoria = :categoria, sub_categoria = :sub_categoria, nome = :nome, nome_url = :nome_url,descricao = :descricao,descricao_longa = :descricao_longa,valor = :valor,estoque = :estoque,tipo_envio = :tipo_envio,palavras = :palavras,ativo = :ativo,peso = :peso, largura = :largura, altura = :altura, comprimento = :comprimento, modelo = :modelo, valor_frete = :valor_frete, imagem = :imagem, link = :link WHERE id = :id");
		$res->bindValue(":imagem", $imagem);
	}

	$res->bindValue(":id", $id);
}



	$res->bindValue(":sku", $sku);
	$res->bindValue(":nome", $nome);
	$res->bindValue(":nome_url", $nome_url);
	$res->bindValue(":categoria", $id_cat);
	$res->bindValue(":sub_categoria", $id_sub_cat);
	$res->bindValue(":descricao", $descricao);
	$res->bindValue(":descricao_longa", $descricao_longa);
	$res->bindValue(":valor", $valor);
	$res->bindValue(":estoque", $estoque);
	$res->bindValue(":tipo_envio", $tipo_envio);
	$res->bindValue(":palavras", $palavras);
	$res->bindValue(":ativo", $ativo);
	$res->bindValue(":peso", $peso);
	$res->bindValue(":largura", $largura);
	$res->bindValue(":altura", $altura);
	$res->bindValue(":comprimento", $comprimento);
	$res->bindValue(":modelo", $modelo);
	$res->bindValue(":valor_frete", $valor_frete);
	$res->bindValue(":link", $link);
	
	
	
	

	$res->execute();


echo 'Salvo com Sucesso!!';

?>

