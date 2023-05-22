<?php

// PAGINA PARA MOSTRAR PAGINA DE CARTAO FIDELIDADE

$pag = 'clientes';
require_once '../../conexao.php';
@session_start();
//verificar se o usuário está autenticado
if (
    @$_SESSION['id_usuario'] == null ||
    @$_SESSION['nivel_usuario'] != 'Admin'
) {
    echo "<script language='javascript'> window.location='../index.php' </script>";
}
?>

<div class="row mt-4 mb-4">

  <a type="button" class="btn-primary btn-sm ml-3 d-none d-md-block" href="index.php?pag=<?php echo $pag; ?>&funcao=novo">Novo Cliente</a>
  <a type="button" class="btn-primary btn-sm ml-3 d-block d-sm-none" href="index.php?pag=<?php echo $pag; ?>&funcao=novo">+</a>

</div>

<div class="titulo-pagina">
  <h5 ><?php echo 'Todos os ' . $pag; ?></h5>
  </div>

<!-- DataTales Example -->
<div class="card shadow mb-4">

    <div class="card-body">
        <div class="table-responsive">
            <table class="w3-table-all w3-hoverable table table-striped table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Telefone</th>
                        <th>Email</th>
                        <th>Cartões</th>
                        <th>Editar</th>
                    </tr>
                </thead>

                <tbody>

                 <?php
                 $query = $pdo->query(
                     'SELECT * FROM clientes order by id desc '
                 );
                 $res = $query->fetchAll(PDO::FETCH_ASSOC);

                 for ($i = 0; $i < count($res); $i++) {

                     foreach ($res[$i] as $key => $value) {
                     }

                     $nome = $res[$i]['nome'];
                     $cpf = $res[$i]['cpf'];
                     $telefone = $res[$i]['telefone'];
                     $email = $res[$i]['email'];
                     $cartoes = $res[$i]['cartoes'];

                     $id = $res[$i]['id'];

                     if ($cartoes == '') {
                         $cartoes = 0;
                     }
                     ?>


                  <tr >
                    <td><?php echo $nome; ?></td>
                    <td><?php echo $cpf; ?></td>
                    <td><?php echo $telefone; ?></td>
                    <td><?php echo $email; ?></td>
                    <td><?php echo $cartoes; ?></td>
                    <td><a href="index.php?pag=<?php echo $pag; ?>&funcao=editar&id=<?php echo $id; ?>" class='text-primary mr-1 icon-menu' title='Editar Dados'><i class='far fa-edit'></i></a>
                    <a href="index.php?pag=<?php echo $pag; ?>&funcao=excluir&id=<?php echo $id; ?>" class='text-danger mr-1 icon-menu' title='Excluir Registro'><i class='far fa-trash-alt'></i></a></td>


                </tr>
            <?php
                 }
                 ?>
                  <?php  ?>


<!-- Modal -->
<div class="modal fade" id="modalClientes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <?php if (@$_GET['funcao'] == 'editar') {
            $titulo = 'Editar Clientes';
            $id2 = $_GET['id'];

            $query = $pdo->query(
                "SELECT * FROM clientes where id = '" . $id2 . "' "
            );
            $res = $query->fetchAll(PDO::FETCH_ASSOC);

            
            $nome2 = $res[0]['nome'];
            $cpf2 = $res[0]['cpf'];
            $email2 = $res[0]['email'];
            $telefone2 = $res[0]['telefone'];
            $rua2 = $res[0]['rua'];
            $numero2 = $res[0]['numero'];
            $complemento2 = $res[0]['complemento'];
            $bairro2 = $res[0]['bairro'];
            $cidade2 = $res[0]['cidade'];
            $estado2 = $res[0]['estado'];
            $cep2 = $res[0]['cep'];
            $cartoes2 = $res[0]['cartoes'];
        } else {
            $titulo = 'Cadastrar Clientes';
        } ?>

        <h5 class="modal-title" id="exampleModalLabel"><?php echo $titulo; ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form" method="POST">
        <div class="modal-body">

          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Nome</label>
                <input value="<?php echo @$nome2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Nome">
              </div>
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>CPF</label>
                <input value="<?php echo @$cpf2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="CPF">
                 </div>
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Email</label>
                <input value="<?php echo @$email2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Email">
                
              </div>
            </div>

           </div>


           <div class="col-md-3">
              <div class="form-group">
                <label>Telefone</label>
                <input value="<?php echo @$telefone2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Telefone">
                
              </div>
            </div>

          <div class="form-group">
            <label>Rua</label>
            <input value="<?php echo @$rua2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Rua">
          </div>


          <div class="row">

            <div class="col-md-3">
              <div class="form-group">
                <label>Numero</label>
                <input value="<?php echo @$numero2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Numero">
                
              </div>
            </div>

            <div class="col-md-3">

              <div class="form-group">
                <label>Complemento</label>
                <input value="<?php echo @$complemento2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Complemento">

              </div>
            </div>

            <div class="col-md-3">

              <div class="form-group">
                <label>Bairro</label>
                <input value="<?php echo @$bairro2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Bairro">
                

              </div>
            </div>


            <div class="col-md-3">

              <div class="form-group">
                <label>Cidade</label>
                <input value="<?php echo @$cidade2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Cidade">
                
              </div>
            </div>





          </div>


          <div class="form-group">
            <div class="row">
              <div class="col-md-9">
                <label>Estado</label>
                <input value="<?php echo @$estado2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Estado">

              </div>



            </div>
          </div>


          <div class="row">
            
            <div class="col-md-3">
              <div class="form-group">
                <label>Cep </label>
                <input value="<?php echo @$cep2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Cep">

              </div>
            </div>


            <div class="col-md-3">
              <div class="form-group">
                <label>Cartões </label>
                <input value="<?php echo @$Cartoes2; ?>" type="text" class="form-control form-control-sm" id="nome-cat" name="nome-cat" placeholder="Carões">

              </div>
            </div>


            
          </div>

          <small>
            <div id="mensagem_carac2" class="">

                </div>
              </small>

             
             <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btn-cancelar-carac2">Cancelar</button>



                <input type="hidden" id="txtid-novo" name="txtid-novo" value="<?php echo @$_GET[
                    'id'
                ]; ?>">


                <button type="button" id="btn-add-carac2" name="btn-add-cara2c" class="btn btn-info">Adicionar</button>
                </div>
        </form>

                           
            </div>


        


  <small>
    <div id="mensagem">

    </div>
      </small>

        </div>        

        <div class="modal-footer">



          <input value="<?php echo @$_GET[
              'id'
          ]; ?>" type="hidden" name="txtid2" id="txtid2">
          <input value="<?php echo @$nome2; ?>" type="hidden" name="antigo" id="antigo">

          <button type="button" id="btn-fechar" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" name="btn-salvar" id="btn-salvar" class="btn btn-primary">Salvar</button>


        </div>
          </div>
    </div>
    </div>
</div>

<div class="modal" id="modal-deletar" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Excluir Registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <p>Deseja realmente Excluir este Registro?</p>

        <div align="center" id="mensagem_excluir" class="">

        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btn-cancelar-excluir">Cancelar</button>
        <form method="post">

          <input type="hidden" id="id" name="id" value="<?php echo @$_GET[
              'id'
          ]; ?>" required>

          <button type="button" id="btn-deletar" name="btn-deletar" class="btn btn-danger">Excluir</button>
        </form>
      </div>
    </div>
  </div>
</div>





<?php // CHAMADAS DE MODAL DEPENDENDO DA FUNCAO CLICADA
// CHAMADAS DE MODAL DEPENDENDO DA FUNCAO CLICADA
if (@$_GET['funcao'] != null && @$_GET['funcao'] == 'editar') {
    echo "<script>$('#modalClientes').modal('show');</script>";
} 
if (@$_GET['funcao'] != null && @$_GET['funcao'] == 'novo') {
    echo "<script>$('#modalClientes').modal('show');</script>";
}

if (@$_GET['funcao'] != null && @$_GET['funcao'] == 'excluir') {
    echo "<script>$('#modal-deletar').modal('show');</script>";
} ?>


        </tbody>
    </table>
</div>
</div>
</div>









<script type="text/javascript">
    $(document).ready(function () {
        $('#dataTable').dataTable({
            "ordering": false
        })

    });
</script>



