<?php
require_once("config.php");

date_default_timezone_set('America/Sao_Paulo');

try {
	$pdo = new PDO("mysql:dbname=$banco;host=$servidor;charset=utf8", "$usuario", "$senha");

	//CONEXAO MYSQLI PARA O BACKUP
	$conn = mysqli_connect($servidor, $usuario, $senha, $banco);

} catch (Exception $e) {
	echo "Erro ao conectar com o banco de dados! " . $e;
}



//verificar config
 $res = $pdo->query("SELECT * FROM config where id = 0"); 
    $dados = $res->fetchAll(PDO::FETCH_ASSOC);    
    if(@count($dados) == 0){
       $pdo->query("INSERT into config SET id = '0', nome_loja = 'Boutique Freitas', telefone_loja = '(31) 3333-3333', email_loja = 'admin@hotmail.com', whatsapp = '(31) 97527-5084', texto_destaque = 'Aproveite as nossas Promoções!', endereco_loja = 'Rua Alameda Campos, Número 50, Bairro Centro, Belo Horizonte - MG - CEP 31535-800', itens_por_pagina = '6', cep_origem = '30512-660', comprimento_caixa = '30', largura_caixa = '20', altura_caixa = '20', diametro_caixa = '25', mao_propria = 'N', formato_frete = '1', valor_declarado = '0', aviso_recebimento = 'N', total_cartoes_troca = '10', valor_cupom_cartao = '20', dias_uso_cupom = '7', nivel_estoque = '5', dias_limpar_carrinho = '2', retirada_local = 'Sim', nota_minima = '3', enviar_total_emails = '480', intervalo_envio_email = '70', pagar_entrega = 'Sim', relatorio_pdf = 'Sim', rodape_relatorios = 'Desenvolvido por Hugo Vasconcelos do Portal Hugo Cursos!!', logo = 'logo.png', favicon = 'favicon.png'");
    }else{
    	$nome_loja = $dados[0]['nome_loja'];
    	$email_loja = $dados[0]['email_loja'];
    	$telefone_loja = $dados[0]['telefone_loja'];
    	$whatsapp_loja = $dados[0]['whatsapp'];
    	$texto_destaque = $dados[0]['texto_destaque'];
    	$endereco_loja = $dados[0]['endereco_loja'];
    	$itens_por_pagina = $dados[0]['itens_por_pagina'];
    	$cep_origem = $dados[0]['cep_origem'];
    	$comprimento_caixa = $dados[0]['comprimento_caixa'];
    	$largura_caixa = $dados[0]['largura_caixa'];
    	$altura_caixa = $dados[0]['altura_caixa'];
    	$diametro_caixa = $dados[0]['diametro_caixa'];
    	$mao_propria = $dados[0]['mao_propria'];
    	$formato_frete = $dados[0]['formato_frete'];
    	$valor_declarado = $dados[0]['valor_declarado'];
    	$aviso_recebimento = $dados[0]['aviso_recebimento'];
    	$total_cartoes_troca = $dados[0]['total_cartoes_troca'];
    	$valor_cupom_cartao = $dados[0]['valor_cupom_cartao'];
    	$dias_uso_cupom = $dados[0]['dias_uso_cupom'];
    	$nivel_estoque = $dados[0]['nivel_estoque'];
    	$dias_limpar_carrinho = $dados[0]['dias_limpar_carrinho'];
    	$retirada_local = $dados[0]['retirada_local'];
    	$nota_minima = $dados[0]['nota_minima'];
    	$enviar_total_emails = $dados[0]['enviar_total_emails'];
    	$intervalo_envio_email = $dados[0]['intervalo_envio_email'];
    	$pagar_entrega = $dados[0]['pagar_entrega'];
    	$relatorio_pdf = $dados[0]['relatorio_pdf'];
    	$rodape_relatorios = $dados[0]['rodape_relatorios'];
    	$logo = $dados[0]['logo'];
    	$favicon = $dados[0]['favicon'];
    	$email_adm = $email_loja;
    	$whatsapp_link = '55'.preg_replace('/[ ()-]+/' , '' , $whatsapp_loja);
    	$email = $email_loja;
    }

?>