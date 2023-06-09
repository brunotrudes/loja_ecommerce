<?php
require_once("cabecalho.php");
?>

<?php
require_once("cabecalho-busca.php");
?>


<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad bg-light">
    <div class="container">
        <div class="row">
            <input type="hidden" id="txtquantidade">
            <div class="col-lg-12">
              <!-- <div class="col-lg-12"> -->
                  <p>Verificar se esta correto os valores para produtos com caracteristicas</p>
                 
                  <div id='listar-carrinho'></div>
              <!-- </div> -->
            </div>
        </div>

        <small><div align="center" id="mensagem-carrinhos"></div></small>
        
        <div class="row p-3">
          <div class="col-md-6">
            <h4 class="text-danger">Total do Pedido: R$ <span id="valor_total" class="ml-1"> </span></h4>
          </div>

          <div align="right" class="col-md-6 mb-4">
             <a href="produtos.php" type="button" id="btn-comprar" class="bg-secondary primary-btn btn-sm" data-dismiss="modal">Comprar +</a>
             <a href="" onclick="finalizarPedido()" type="submit" name="btn-finalizar" id="btn-finalizar" class="primary-btn bg-info btn-sm">Finalizar</a>
          </div>

        </div>

    </div>
</section>
<!-- Shoping Cart Section End -->







<!-- Modal -->
<div class="modal fade" id="modal-caract" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">


        <h5 class="cart-inline-title">Características do Produto</h5>
        <input type="hidden" id="txtquantidade">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form" method="POST">
        <div class="modal-body">

          <div class="row">
            <div class="col-md-6 mb-4">
               <div id='listar-caract'></div>
            </div>

             <div class="col-md-6">
              <div id='div-listar-carac-itens'></div>
            </div>
         

          
         

          <small><div align="center" id="mensagem-caract"></div></small>


         
        </div>


       </div>

        
      </form>
    </div>
  </div>
</div>




<?php
require_once("rodape.php");
require_once("conexao.php");
?>
<!-- 
SCRIPT PARA DAR ALERTA DE CARRINHO ABANDONADO

<?php
// Define o tempo limite de 10 minutos em segundos
$tempo_limite = 10 * 60;

// Inclui o arquivo de conexão com o banco de dados
include 'conexao.php';

// Verifica se ocorreu algum erro na conexão
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Seleciona os carrinhos de compras que foram criados há mais de 10 minutos


$sql = "SELECT * FROM carrinho WHERE data < DATE_SUB(NOW(), INTERVAL $tempo_limite SECOND) AND id_venda = 0 ";
$resultado = $conn->query($sql);

if ($resultado->num_rows > 0) {
    // Exibe um alerta na tela do administrador
    echo "<script>alert('Existem " . $resultado->num_rows . " carrinhos de compras pendentes de finalização.');</script>";
}

// Fecha a conexão com o banco de dados
$conn->close();
?> -->



<!--SCRIPT PARA ALTERAR O INPUT NUMBER -->
<script type="text/javascript">
  jQuery('<span class="dec qtybtn">-</span>').insertBefore('.pro-qty input'); 
  jQuery('<span class="inc qtybtn">+</span>').insertAfter('.pro-qty input'); 
  jQuery('.pro-qty').each(function() {
    var spinner = jQuery(this),
    input = spinner.find('input[type="text"]'),
    btnUp = spinner.find('.inc'),
    btnDown = spinner.find('.dec'),
    min = input.attr('min'),
    max = input.attr('max');

    btnUp.click(function() {
      var oldValue = parseFloat(input.val());
      if (oldValue >= max) {
        var newVal = oldValue;
    } else {
        var newVal = oldValue + 1;
    }
    spinner.find("input").val(newVal);
    document.getElementById('txtquantidade').value = newVal;
    spinner.find("input").trigger("change");


});

    btnDown.click(function() {

      var oldValue = parseFloat(input.val());
      if (oldValue <= min) {
        var newVal = oldValue;
    } else {
        var newVal = oldValue - 1;
    }
    spinner.find("input").val(newVal);
    document.getElementById('txtquantidade').value = newVal;
    spinner.find("input").trigger("change");



});




});
</script>








<!--AJAX PARA LISTAR OS DADOS -->
<script type="text/javascript">
  $( document ).ready(function() {

    atualizarCarrinho();


    
})
</script>




<script>
    function atualizarCarrinho() {
        $.ajax({
          url:  "carrinho/listar-carrinho.php",
          method: "post",
          data: $('#frm').serialize(),
          dataType: "html",
          success: function(result){
            $('#listar-carrinho').html(result)

        },
    })
    }
</script>



<script>
    function deletarCarrinho(id) {

     event.preventDefault();

     $.ajax({

        url: "carrinho/excluir-carrinho.php",
        method: "post",
        data: {id},
        dataType: "text",
        success: function(mensagem){

            $('#mensagem').removeClass()

            if(mensagem == 'Excluido com Sucesso!!'){
                atualizarCarrinho();
                       //$("#modal-carrinho").modal("show");

                   }else{


                   }

                   $('#mensagem').text(mensagem)

               },

           })

 }
</script>



<script type="text/javascript">
 function editarCarrinho(id) {
    console.log(id)
    var quantidade = document.getElementById('txtquantidade').value;
    event.preventDefault();

    $.ajax({

        url: "carrinho/editar-carrinho.php",
        method: "post",
        data: {id, quantidade},
        dataType: "text",
        success: function(mensagem){

            $('#mensagem').removeClass()

            if(mensagem == 'Editado com Sucesso!!'){
                atualizarCarrinho();
                       //$("#modal-carrinho").modal("show");

                   }else{


                   }

                   $('#mensagem').text(mensagem)

               },

           })


}
</script>






<script type="text/javascript">
 function addCarac(id, id_carrinho) {

    event.preventDefault();

    $.ajax({

        url: "carrinho/carac-produtos.php",
        method: "post",
        data: {id, id_carrinho},
        dataType: "text",
        success: function(mensagem){

            $('#mensagem-caract').removeClass()
            $("#modal-caract").modal("show");
            $('#listar-caract').html(mensagem)



        },

    })


}
</script>





<script type="text/javascript">
   function finalizarPedido() {
             
        event.preventDefault();
            
            $.ajax({

                url: "carrinho/verificar-carac.php",
                method: "post",
                data: {},
                dataType: "text",
                success: function(mensagem){

                  if(mensagem.trim() === 'deu certo'){
                    window.location="checkout.php";
                   
                  }else{
                     $('#mensagem-carrinho').addClass('text-danger');
                    $('#mensagem-carrinho').text(mensagem);
                    
                  }

                                                         
                    

                },
                
            })

        
      }
</script>



