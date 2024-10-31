<?php
function conectar(){
    $user = 'root';
    $pass = "";
    $dsn = "mysql:host=localhost;dbname=loja";
    try{
    $conn = new PDO($dsn, $user, $pass);
    $conn -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
        echo erros($e);
    }
    return $conn;
}
function erros($e){
    if(str_contains($e, "PRIMARY")){
        return "A identificação informada já está em uso!";
    }else if(str_contains($e, '2002')){
        return "A conexão com o banco de dados não está disponível";
    }
        return $e;
    }

