<?php
require_once '../../../conexao.php';

$id_carac_prod = @$_POST['id_carac_item_2'];

$pag = 'produtos';

// Consulta para obter o nome da característica
$query_carac = $pdo->query(
    "SELECT nome FROM carac 
     WHERE id IN (
         SELECT id_carac FROM carac_prod 
         WHERE id = '" . $id_carac_prod . "'
     )"
);
$res_carac = $query_carac->fetch(PDO::FETCH_ASSOC);
$nome_carac = $res_carac['nome'];

// Consulta para obter os itens da característica
$query = $pdo->query(
    "SELECT * FROM carac_itens 
     WHERE id_carac_prod = '" . $id_carac_prod . "'"
);

$res = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="ml-2">
    <span class="mb-2"><h4>Característica <?= ucfirst($nome_carac) ?></h4></span><br>
    <div class="table-responsive">
    <table class="w3-table-all w3-hoverable table table-striped">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Estoque</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($res as $item) : ?>
                <tr>
                    <td> <?= $item['nome'] ?></td>
                    <td><?= $item['estoque'] ?> Uni</td>
                    <td>
                        <a title="Deletar Item" href="#" onClick="deletarItem(<?= $item['id'] ?>)">
                            <i class="text-danger fas fa-times"></i>
                        </a>

                        <?php if ($item['ativo'] != 'Não') : ?>
                            <a title="Inativar Item" href="#" onClick="inativarItem(<?= $item['id'] ?>)">
                                <i class="text-secondary far fa-bell-slash"></i> Desativar
                            </a>
                        <?php else : ?>
                            <a title="Ativar Item" href="#" onClick="ativarItem(<?= $item['id'] ?>)">
                                <i class="text-success far fa-check-circle"></i> Ativar
                            </a>
                        <?php endif ?>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
                        </div>
</div>






