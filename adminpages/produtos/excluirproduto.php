<?php
$codigo = filter_input(INPUT_GET, "codigo_prod", FILTER_SANITIZE_SPECIAL_CHARS);
include_once '../../functions/bd.php';
$bd = conectar();

$consulta = $bd->prepare("SELECT COUNT(*) FROM itemcompra WHERE codigo_prod = $codigo");
$consulta->execute();
$referenciado = $consulta->fetchColumn();

if ($referenciado > 0) {
    $erro = "Produto referenciado em uma compra. Não foi possível excluir o produto, mas você pode alterar o status.";
    header("location:produtosini.php?erro=$erro");
} else {
    $bd->beginTransaction();
    $query = "DELETE FROM produto WHERE codigo_prod = $codigo";
    $stmt = $bd->prepare($query);
    $i = $stmt->execute();
    if ($i) {
        $bd->commit();
    } else {
        $bd->rollBack();
    }
    header("location:produtosini.php");
}

$bd = null;
?>
