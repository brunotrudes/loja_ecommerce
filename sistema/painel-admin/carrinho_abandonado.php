<!DOCTYPE html>
<html>
<head>
	<title>Carrinhos Abandonados</title>
</head>
<body>
	

    <div class="row mt-4 mb-4">
  

</div>

<div class="titulo-pagina">
  <h5><?php echo 'Carrinhos Abandodanos' ?></h5>
  </div>

<!-- DataTales Example -->
<div class="card shadow mb-4">

  <div class="card-body">
    <div class="table-responsive">
    <div id="carrinho_abandonado">
        
		<?php
			// Define o tempo limite de 10 minutos em segundos
			$tempo_limite = 10 * 60;

			// Inclui o arquivo de conexão com o banco de dados
			include '../../conexao.php';

			// Verifica se ocorreu algum erro na conexão
			if ($conn->connect_error) {
			    die("Erro na conexão: " . $conn->connect_error);
			}

			// Seleciona os carrinhos de compras que foram criados há mais de 10 minutos
			$sql = "SELECT c.id, c.data, c.id_usuario, u.nome, u.email,u.fone, c.id_produto, p.nome AS nome_produto, p.sku, p.valor, c.quantidade
					FROM carrinho c
					INNER JOIN usuarios u ON c.id_usuario = u.id
					INNER JOIN produtos p ON c.id_produto = p.id
					WHERE c.data < DATE_SUB(NOW(), INTERVAL $tempo_limite SECOND) AND c.id_venda = 0";
			$resultado = $conn->query($sql);

			if ($resultado) {
				if ($resultado->num_rows > 0) {
                    echo"<div class='card-body'>";
                    echo"<div class='table-responsive'>";
				    echo "<table class='w3-table-all w3-hoverable table table-striped table table-bordered' id='dataTable' width='100%' cellspacing='0'>";
                    echo"<thead>";

				    echo "<tr><th>ID</th><th>Data</th><th>Usuário</th><th>E-mail</th><th>Fone</th><th>Produto</th><th>SKU</th><th>Valor</th><th>Quantidade</th><th>Ações</th></tr>";
                    echo"</thead>";

				    while($row = $resultado->fetch_assoc()) {
                       
                        
				        echo "<tr>";
				        echo "<td>".$row["id"]."</td>";
				        echo "<td>".$row["data"]."</td>";
				        echo "<td>".$row["nome"]."</td>";
				        echo "<td>".$row["email"]."</td>";
				        echo "<td>".@$row["fone"]."</td>";
				        echo "<td>".$row["nome_produto"]."</td>";
				        echo "<td>".$row["sku"]."</td>";
				        echo "<td>".$row["valor"]."</td>";
				        echo "<td>".$row["quantidade"]."</td>";
				        echo "<td>'Ações'</td>";
				        echo "</tr>";
				    }
				    echo "</table>";
				} else {
				    echo "Nenhum carrinho abandonado encontrado.";
				}
			} else {
				echo "Erro ao consultar carrinhos abandonados: " . $conn->error;
			}

			// Fecha a conexão com o banco de dados
			$conn->close();
		?>
	</div>
      
 </div>
</div>
</div>


</body>
</html>
