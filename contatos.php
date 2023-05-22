<?php
@session_start();
@$_SESSION['menu'] = 'cont';
    require_once("cabecalho.php");
?>

<?php
    require_once("cabecalho-busca.php");
?>

   
    <!-- Contact Section Begin -->
    <section class="contact spad bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span><i class="fa fa-phone"></i></span>
                        <h4>Telefone</h4>
                        <p><?php echo $telefone_loja ?></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_whatsapp">
                            <a target="_blank" href="http://api.whatsapp.com/send?1=pt_BR&phone=<?php echo $whatsapp_link ?>" title="<?php echo $whatsapp_loja ?>"><i class="fa fa-whatsapp text-info"></i></a>
                        </span>
                        <h4>Whatsapp</h4>
                        <p><?php echo $whatsapp_loja ?></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span><i class="fa fa-history"></i></span>
                        <h4>Horário Atendimento</h4>
                        <p>09:00 ás 19:00 </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span><i class="fa fa-envelope"></i></span>
                        <h4>Email</h4>
                        <p><?php echo $email_loja ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- div mapa -->
    <div class="map">
        <iframe <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.238895304236!2d-47.46325859999999!3d-24.6843132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94daa0668573fcf5%3A0x20b262c0b3639982!2sR.%20Amaro%20Trudes%2C%20Iguape%20-%20SP%2C%2011920-000!5e0!3m2!1spt-BR!2sbr!4v1679651109020!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>>
        <div class="map-inside">
            <i class="icon-pin"></i>    
            <div class="inside-widget">
                <h4>Iguape / SP </h4>
                <ul>
                    <li>Fone 13 996581671</li>
                    <li>Rua Amaro Trudes, 260</li>
                </ul>
            </div>
        </div>

    </div>
  
    <!-- Contact Form Begin -->
    <div class="contact-form spad bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Contate-nos</h2>
                    </div>
                </div>
            </div>
            <form method="post">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <input type="text" name="nome" id="nome" placeholder="Seu Nome">
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <input type="text" name="email" id="email" placeholder="Seu Email">
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <input type="text" name="telefone" id="telefone" placeholder="Seu Whatsapp">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea name="mensagem" id="mensagem" placeholder="Sua Mensagem"></textarea>
                        <button name="btn-enviar-email" id="btn-enviar-email" type="button" class="site-btn">Enviar</button>
                    </div>
                    
                    <div class="col-md-12 text-center mt-3 text-info" id="div-mensagem"></div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

<?php
    require_once("rodape.php");
?>


<script type="text/javascript">
    $('#btn-enviar-email').click(function(event){
        event.preventDefault();
        $('#div-mensagem').addClass('text-info')
        $('#div-mensagem').removeClass('text-danger')
        $('#div-mensagem').removeClass('text-success')
        $('#div-mensagem').text('Enviando')
        $.ajax({
            url:"enviar.php",
            method:"post",
            data: $('form').serialize(),
            dataType: "text",
            success: function(msg){
                if(msg.trim() === 'Enviado com Sucesso!'){
                    $('#div-mensagem').removeClass('text-info')
                    $('#div-mensagem').addClass('text-success')
                    $('#div-mensagem').text(msg);
                    $('#email').val('');
                    $('#nome').val('');
                    $('#telefone').val('');
                    $('#mensagem').val('');

                 }else if(msg.trim() === 'Preecha o Campo Nome'){
                    
                    $('#div-mensagem').addClass('text-danger')
                    $('#div-mensagem').text(msg);
                 

                 }else if(msg.trim() === 'Preecha o Campo Mensagem'){
                    
                    $('#div-mensagem').addClass('text-danger')
                    $('#div-mensagem').text(msg);
                 

                 }else if(msg.trim() === 'Preecha o Campo Email'){
                    
                    $('#div-mensagem').addClass('text-danger')
                    $('#div-mensagem').text(msg);
                 }

                 else{
                    $('#div-mensagem').addClass('text-danger')
                    $('#div-mensagem').text('Deu erro ao Enviar o Formulário! Provavelmente seu servidor de hospedagem não está com permissão de envio habilitada ou você está em um servidor local!');
                    //$('#div-mensagem').text(msg);

                 }
            }
        })
    })
</script>