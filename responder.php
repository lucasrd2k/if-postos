<?php

    include_once "conexao.php";
    include_once "sessionAdm.php";
    if (isset($_GET['resp'])){
        $resp = $_GET['resp'];
        $id = $_GET['id'];
        if ($resp){
            $sql = "SELECT * FROM pedido WHERE id = $id;";
            $result = mysqli_query($conn, $sql);
            $linha = mysqli_fetch_array($result);
            
            $id = $linha['id'];
            $etanol = $linha['etanol'];
            $gasolina = $linha['gasolina'];
            $diesels5 = $linha['diesels500'];
            $diesels10 = $linha['diesels10'];
            $posto = $linha['posto'];

            $sql = "UPDATE posto SET etanol = $etanol, gasolina = $gasolina, diesels500=$diesels5, diesels10 = $diesels10 WHERE id = $posto;";
            mysqli_query($conn, $sql);
        }
        $sql = "DELETE FROM pedido WHERE id = $id";
        mysqli_query($conn, $sql);
        echo "<script>window.location.replace('autoriza.php');</script>";
    }
        
?>