<?php 

$nome = $_GET["nome"];
$email = $_GET["email"];
$telefone = $_GET["telefone"];
$mensagem = $_GET["mensagem"]; 

$con = mysqli_connect("localhost","root","","projetofinal");

//PASSO 3- montar o sql de gravar no banco
$sql = "insert into contato values(null, '".$nome."','".$email."','".$telefone."','".$mensagem."')";

//PASSO 4- mandar esse comando para o mysql
if(mysqli_query($con,$sql)){
    $msg = "Gravado com sucesso!";
}else{
    $msg = "Erro ao gravar!";
}
mysqli_close($con);
echo "<script> alert('".$msg."');
location.href='index.html'; 
</script>";

?>