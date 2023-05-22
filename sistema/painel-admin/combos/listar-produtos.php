<?php

require_once("../../../conexao.php"); 

$id_combo = @$_POST['txtid']; 

$pag = "combos";

$query = $pdo->query("SELECT * FROM prod_combos where id_combo = '" . $id_combo . "' ");

 $res = $query->fetchAll(PDO::FETCH_ASSOC);

                  for ($i=0; $i < count($res); $i++) { 
                      foreach ($res[$i] as $key => $value) {
                      }

                      $id_prod = $res[$i]['id_produto'];
       				//recuperar o nome da carac
                      $query2 = $pdo->query("SELECT * from produtos where id = '$id_prod' ");
                      $res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
                      $nome_prod = @$res2[0]['nome'];
                      $valor_prod = @$res2[0]['valor'];
                      $nome_url2 = @$res2[0]['nome_url'];
                  
      echo "<span class='text-dark mr-1'><small><a href='../../produto-$nome_url2' class='text-info' target='blank'>".@$nome_prod.'</a> - R$ '.@$valor_prod."</small></span><a href='#' onClick='deletarProd(". @$res[$i]['id'] .")' title='Excluir Produto'><small><i class='text-danger far fa-trash-alt'></i></small></a>
                   <hr/>";
                      
    }
  
    
?>
